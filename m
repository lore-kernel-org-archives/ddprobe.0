Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C7F18B1A
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727447154; cv=none; b=FKmk0psCb7SVEQbwVw2jc+5pXW79jO/wXSA/6fIeOrNQ/WTfVgk7aiyR97vqxfcQqKLhZbdGtYFzkh6JNXMfDmqDMGfNe/TLo8+tpuWTkyNW90068vHrL/0z8YZBxF2yATmSdbkAKx41Ku9dzkL/gy/BwWV50XFXnDqvSkWRlfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727447154; c=relaxed/simple;
	bh=6WncFJtgfnQBccORIIpAXmFB6u+FjAR3gsyN3JOdK9o=;
	h=To:Subject:From:Message-Id:Date; b=RdUnzjvd2KwvgSSOTqbMdIJOfrcwZUK+8DZK/MvWU4d2qKKrXMjUCw6ZoTa/f1jvN+NoKuiN16XKu81yxkz7VsVQhEjjk87qmcVISLjFtNnEfC9NynXJciWmvhp4HZZlCTk5MU9KFb4FLjbAsH+AP8XwFbZUJIHDguWLpGUvnqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V/9idYRu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V/9idYRu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2244C4CEC6
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727447153;
	bh=6WncFJtgfnQBccORIIpAXmFB6u+FjAR3gsyN3JOdK9o=;
	h=To:Subject:From:Date:From;
	b=V/9idYRuMLfcht38cVgohhX7FKvnLWUyMhj2E4f6N2JxKlRyz/OwAlAZvzHAE9koh
	 NHx+UUY8jGFwlsYkksCFnACOqDTddoz1W2NgmVm70sKqNnRD6qFal0P5/nN7rGyv3x
	 P4S84QAy361IU/IgpKljMCUpN2fcG4Cx+rq8iLFABPVdYpWrHvkcdUAsslJO1hYCbb
	 mW4UdN1Ykyij+jJjvtpcQcK6GJOFkLRalepPDx0sSPIUaZSecBJ3gMwAAUHIMMllTH
	 ImINQ1HDApYOP16B8+oGKbhtkbNvXWnoBBWtseedPFzxAq/HS3KVA8xKE+fn7168He
	 J7ocUt4SCEebA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CE6CDD1B6
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172744715359.14599.11018638940140424496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ce3fbca964a45568ab181b0e2b9a2b500e08c81908d554fbd974135c73e8aeb
Date: Fri, 27 Sep 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727447153
