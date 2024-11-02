Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412F77F6
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730526354; cv=none; b=FdlSYXxctNp94mn5xe2xiMnY62ltSDS0u28g4Ni2x8MtZ28QkJZVovk/uWuSF48hV/x9WP+jGp3fWAyghNrJvK+U+Zb9PKnRaxMlzDXRM7eZPj4NR9MEQZWInZnB/61oPt7NdomUbxf4hoe5rL3lI9vx9suktJsF2zvjFTPV8o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730526354; c=relaxed/simple;
	bh=pkoQh/2w9Fc40fMytpzSJ8BAL1ccEEhzbl08c74qEa0=;
	h=To:Subject:From:Message-Id:Date; b=OoT6fQNcdbz6+d/NjdduNH64JlJ5usPn6meNkmPQ9+v9Sfze3kX8f+bI8SLgF4HbhSqMVzkbJH3LKkXwKREKza0OkOFz4Tb61xZGH3y/Igp6YbeCL07XeWmR5gRmVLcOM/8lX3PWootxrqu14RcN3kXgPFbVoTjtyci8IWxGB10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b60maq0E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b60maq0E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B52B1C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730526353;
	bh=pkoQh/2w9Fc40fMytpzSJ8BAL1ccEEhzbl08c74qEa0=;
	h=To:Subject:From:Date:From;
	b=b60maq0E6YR8Tc4enH481eP0Ji1tDEC5TYKQ9Jv/DbId8vUIrebuuNnkRR6eCRqUv
	 spLRPoElWT/G2xLu2GD6fYBrW+B18cMG7Nq61xYcCfQKZZLLZ/yNIxMDry5FVuSf6A
	 KuvYAhOeCklgMs4aoPoQZ3dN9Sgao+d/BLnA4AUiPByb0WJoZM1N181LXg6ZzHpfZ+
	 rm/2NqqbzoPyxvCjnXNemm6JxqcREUNH9YC0WaXLhPzqxhlnKOGxOzKv/lHAviW7n+
	 hS8fGBwdEngjjtQmQAhMkjK3YOqr2yAamf7Sc/pa8PdMtZxkFmmABmLeVw+69eETzF
	 WpGpWQD7SLwZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A74A2E677EC
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173052635363.26240.11191380980010901201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eaec81b0d2a613b6da69aff1a3b6212a47b050593b58dd7f91e5727685dffd0
Date: Sat, 02 Nov 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730526353
