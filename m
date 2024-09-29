Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DD844A0F
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727600154; cv=none; b=BwMc/03SZ8dMi1ZQU3NMqaCC0y2dP0CDOXjNUSAwyQanQHS8nql6VildhLusUZaI5VXiCCspYp7xjblGaGaamfcCjNyNKRzGkvc2ZD1mXjRwZKz7lIyEKwiOcNnPfyD9/hfwta0IdZh896rGbScF7Qs5vzdbGOE9uLtNjK8G42k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727600154; c=relaxed/simple;
	bh=K/z+iOm9ljNoDoxIHqppbUU/BAAdGJnMcJn9hAnTL/Y=;
	h=To:Subject:From:Message-Id:Date; b=JLE8/3tXrQE1N8ZWk5Lyzf6NlOUHvjzzWV7RrDUi8fMVDRhMzQhT+Q+xf84DTR0Yq6X4kyQBfmOBeHR3+qMs8RilD0vEqsKwbc3C1O9SBzUoAxtMg0DoadSl8sMIa9mybyv9WgQb9YbnTWFk4ChlztMmVvB200XNmTkBzX81Z08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fuX3rCA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fuX3rCA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53F9C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727600153;
	bh=K/z+iOm9ljNoDoxIHqppbUU/BAAdGJnMcJn9hAnTL/Y=;
	h=To:Subject:From:Date:From;
	b=fuX3rCA4G8iUwY7RgOqYE7JPGCt7BmjwP36l4ZLVlQqhGsC70O6dJSZcOXi6+PN/n
	 MPk/tFTJPUqMiQY8i3GG8+7oFTtepYNVCk6QmF6erQ/lbKHV8g+hoo8SMQn3l59Wix
	 SSJrnvJJvWA81LK6mj/yt1fesafLs0fFKWh/C0anTzPlFtymogk8TrlP+33ysylGmW
	 bkuZUtdt3MFPJTd7C6uo5aDSmJ+uyYNGL3uflpXjo6XbHZwF5p8Ci5Wbl6ocf3esRv
	 4holxFKH/JDtqPPYCmInBIo7bvzqzOI7KlZYJPpIldZK8z0JcDUnnj+28oAF3n/QlE
	 LQa8+W2y9T+4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93418CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172760015359.23845.12259493585847572434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d44ff4d741dc222833de1b80c8ab1fd48581d54b0cb68227478fe8c274448d23
Date: Sun, 29 Sep 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727600153
