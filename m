Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250786FC3
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752466794; cv=none; b=JKWlUh6VtrXgAFffCYjwdpU4bFScdIPXPGeMjaZ5zbUU2qjdBFJ8CztgaRBJIJpHL1LeBkUDasoaeix8W394NDbc1RL3e7tUrCmrGGz+pOLcFlphCYAtjr8Bb4qMgUlk+6covs1HKbUmXaxPDfWTIuVA4b4p/3SccChXF/3RuMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752466794; c=relaxed/simple;
	bh=Dnx57TErBYe0lFVzHeup1XWlhhcs24r4jTncLXGm4hA=;
	h=To:Subject:From:Message-Id:Date; b=bQX9TJj+9i4n9jJAR0mvZjA6rzmv7uM4kSZnBfTVXmjS3Da4ihdtSn0xwk4hm9z4dmX/bNgXqis+hkOoZrU1vsGCUVBXJPQs3zs63AK9yF5bMaWzQnC+HaXjQKdux3WsbQYVTaQ9FCBSo4uyKeqExiexCcO+tVHEf/Ex2XFhiYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HvDHWArS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HvDHWArS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E9BC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752466793;
	bh=Dnx57TErBYe0lFVzHeup1XWlhhcs24r4jTncLXGm4hA=;
	h=To:Subject:From:Date:From;
	b=HvDHWArSXG9wfbI6/C2b9y+uEoHDX6EdCf3MvYjrpsRRjZGNPjBIj9DZsc8oTOOOd
	 eCVWtOtzxDdEA/QtMxUCh9/ENs1XLlbCuyxh37PZMujv23cKUo9GaBPV8kUkCBvFXO
	 wsYOxIsI85aIcB5ci7todGLQ2eHggpUau703QWFBLaVgHeW/mO2BNbQYykyc/XbXSs
	 RR0m1+qC8bcVpLpuKEohlqKOliaDvmUGvYBXD+7t970VD0H7NnnKETbhYdMjhro7bf
	 w/Xt4h+eW7B5RWr2IWHhpOhb28BhPjsRVc6w5/ZF+rNJIPx+n57rtJtYnmuyHlGkCT
	 NNo5HKh20Y5Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ECEC83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175246679358.23496.12889937639139324203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57570ba21eb430252501238cbfeecfe978acf672616651b139a2aa033e9892f4
Date: Mon, 14 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752466793
