Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AFB1A9FBC
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 17:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780247074; cv=none; b=W5SwaPVF8JhFrwn0Z6qCcHHhRAyaXuno/x7V4UBo9qYhlSu1VPG1U2CKZOA0BM8aNVxgGV7qlmEMZ35lXBxoXR3Rag3D8Lqu4ARrSm52RWIv1VGU9cWIpwvc7UVXmABspky7vFhzeHlwVw6DWqJSVRal09bWcOTXlePaDAufYks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780247074; c=relaxed/simple;
	bh=aI6gTwzmlSk08YK+TzWL/xZq0hWU7waDeM7gAq6Ikh4=;
	h=To:Subject:From:Message-Id:Date; b=uRdLlq3G4NvwT03szEmzx6b9ErpS+gprMwjbLgz+f5w9ZDqNT3PKows/Y7zb85FbqCsAWhHw6TBVrjZmX0MVlKYMdwbLJynbqx9SFztGDaYeG1X9IyKo1BvhCoZACf46rT8kwtJXNZfv9/xGzn8ZJ97E3lzDcSFoYmMfLQEAGA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glK7NqQ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glK7NqQ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D4AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 17:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780247073;
	bh=aI6gTwzmlSk08YK+TzWL/xZq0hWU7waDeM7gAq6Ikh4=;
	h=To:Subject:From:Date:From;
	b=glK7NqQ0uhhwbX7Zkk4BxZci74R2A4edZpsqDAByBKVRtZ7NhNlOG6va+SuiYLu9r
	 x/9t0v3ces81n+v9MAEhFNVbR41T0/cVCMAkZBQMnIbAZEGlWshcjnhkQOeirqxkuG
	 zFF3madh4P8BkuqsY/e/SWUdxtSNOUAPbWp7BiMlUXOlIBJEYk4ESXNbuL7wbCPv7R
	 tQPzDW6J4CjB4Gz4VlLfUUM2QNUw2jV9Yg8EjTcQFEHgVyIhKzdV0spIp9ptrlOqAj
	 uYmS1k3D7NwrxhBuEfQorS/Fo2XivQxWEDlHD/3uruIYfOoKMGJj3hZDEZOftcqQcr
	 8PuywUidGeJ4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC077CD6E57
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 17:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178024707367.13031.7523618314526448587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adfe1b1f02a985c7e9a0d3e5e98e794c01866102e5773c558f5127ef9fa6d513
Date: Sun, 31 May 2026 17:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780247073
