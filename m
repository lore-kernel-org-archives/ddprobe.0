Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A90B3019DC
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761413394; cv=none; b=rDgA7s4TclkjAgOG5emchIY0LWlTI5Ycwa6plfjUCXlidzZlhI3ouHpa8i3nyrVLQXyeJ+IsP1NduIdsb+B+PJ9jxxxrpPfI7Dw3mrMoxU9VUmdJdklSJQUAZXow6xIUD95AVIz/HVJV6D9zoJmhjZsxASFQ+SNZHqa39r31m+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761413394; c=relaxed/simple;
	bh=cXDKi1j1kt9ttqa5pEQlzVHg7XNvImqDi4pT8sZPE8s=;
	h=To:Subject:From:Message-Id:Date; b=CfwoYL6AW6shwLunuHBFvb5wzGdW0WVtYYi0Qy+k/yuTmUYhXK9AQoj8fTf7zHsOBtr4gatejcc0NFkXvONZoOhAZmGFPi2p5lkRQcAbF4RPUOtG8YAEqXKdALLGDyZMCh0o94tLkwj+37NPAjjIgLXKval8X7k3X61EQl0RxvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OvOIAOq6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OvOIAOq6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2695C4CEFB
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761413393;
	bh=cXDKi1j1kt9ttqa5pEQlzVHg7XNvImqDi4pT8sZPE8s=;
	h=To:Subject:From:Date:From;
	b=OvOIAOq68hVMRWHSIsuV4NzP220No62l+NuWwumVK2c1LnD0Wtyl4MA6bwqoNuNx1
	 X9zarqSH6g1ifA6sn/Vpg/3WgNWYXi4HZ2Ckm8mRlBNv4hwB8w/uajxszLAYN1vR/b
	 DVqkbe2AKZcnZbhs019mEhuKHW2PnQjJqro377Pgg3bukiyy9/ax43Hp/dvxyKwsQq
	 OxHLWtDLR/WUlV5NtnG1DYSSnf+uqKTpKR2qmxW5PVJCSZpDJ7WyPQIFwqgqO1HZWt
	 vA1bNq1zijh7FEF49jFfPUPm1EcNiP31a0M4EKPEaVsGYYYq4Lrsrvfm9my5PvxmeT
	 R6y7UEpDT9Z8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9078BCCF9E3
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176141339358.23542.18323760285854529754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8bced6f795cea0fc3c290d7c5a2ba43a62a2f5d080ad145a851fc7bbb1c6b2c
Date: Sat, 25 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761413393
