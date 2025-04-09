Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB8B21018F
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744231194; cv=none; b=o4R1Tkq3d3GoxyD4JT4x/fVlSgnNRUal6Q+5puIEQMvZDuF4UORbCj0H3fV4Tl9FJy2/hyacUd2YqKEmetplLYVVnDsmjlh8cWCuJxMcXMvx8VDISrcRS2bCiPMOEBWmumW4frE/w9ilp6tauj8IQL7XUGRkqLni+QckAkYkeb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744231194; c=relaxed/simple;
	bh=IfJpZKEMiMaAUNs9F71hbgM6Q3dkDfaON7RvMzuLgwQ=;
	h=To:Subject:From:Message-Id:Date; b=o8qjQZRQTpB7SAJkKVrHuaW5MbheZBDOB7+OUiZUyMDiGgSmu4InVRca5ihV2HwvF28RJTgb9TuHUix5so8zjymuhpr1txi04Caw5Ej4MASo12igT85N9ANbCCNRKoqKiQt2UGf2bsjGAFlmoDx7xZ7suHckrospKRgBBKD2OoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVMGVbt2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVMGVbt2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B375DC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744231193;
	bh=IfJpZKEMiMaAUNs9F71hbgM6Q3dkDfaON7RvMzuLgwQ=;
	h=To:Subject:From:Date:From;
	b=eVMGVbt2e2eCV1pLHGe/XWmgHVV6j9Rvev0qGH+1njdqM916b3adwm3zoD9G1uioU
	 AjVGAoDYGuuIVnaC0uLK7ZUJI8UQQMfSHtblomYZ0TMe7j1EozMEUx0/qMIjtBVmfL
	 9A5gmA30Fjm2gJqw8kivZWmqk4lUwRH71CIGn1uM3Ew9/OoKY4/MMYa8Oj6Y6UxqM+
	 bfrheRA3NCnHaYEweoScs2xuA7GKDdPGqailEK/9Rs5WX4db8q01SRuqcSZ+ZLkIZB
	 CWHkwAGYM9nxrJnNLm9VkkT+mQ4PCGJb8SdWkR6rUJd/ghd4Hhvkrv6gxjdlFaUUNZ
	 ZkQBwvYl2wcdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2B6C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174423119361.26424.5868708899609869131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e49279787ad1a53402e78e72f4173f96e2df88f6479f8bd4b73ae94ac6428598
Date: Wed, 09 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744231193
