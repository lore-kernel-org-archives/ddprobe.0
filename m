Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144B632FA30
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768845834; cv=none; b=YyySmRcuSlNjPXPiCr3Qr7aZhOJeUzEa0WnaMD+7te5ixaet5edgBphC1e99+cC3eI09cAxgfuMJWNzTMCikyCs5SVzwRPpSjlt1meCjphkjUXi+ZdX6OVfHmojAMm1vfEueNvIVtC29K3sQOxZFAT/SoJQjrVOZ0J3vxFVbxy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768845834; c=relaxed/simple;
	bh=bdPoaEaUwD6/fdY/uImT30E5+A5LhPVhuQOFF1YAKIg=;
	h=To:Subject:From:Message-Id:Date; b=QPukxMbwWvGA3r2q/heHiBbYFtklidStAoYjKt42OwXXniv2qep+U1iVNqY1pX4VgCpJFVQsiNPzGPSnl2y3V2/HzVJ/gubpbN0OMsQA4rb53DIe0B2nNhHPEsdb8AoJ/uwJHDwvoYliJQETwwdtufmnt/jyYBjrBCbTb2eKtcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ih0amDj3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ih0amDj3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93F3C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768845833;
	bh=bdPoaEaUwD6/fdY/uImT30E5+A5LhPVhuQOFF1YAKIg=;
	h=To:Subject:From:Date:From;
	b=Ih0amDj3W/N/+/KfGTZlf5dctILZvREUXPTjliwpNVcFqUGLx5D4CZEmAi8ri3d5h
	 nXi/djDWRkufsVYJV+CsUGuNUyDdB1cwsWM96vEEBDEp7bbBxoet1redetbSw7KX39
	 z55qzBN6eU1k+caWzjvIt5xc/OmooUXsXAT64rww1hGrthgSm7CBJyaX0cmoGgwMj4
	 x+/rU5XJxSuAHlyozNiaQw6iPIwiRJ/0FYoVZCyGyA5D23OkHSulPDBFRFWl0WYnOI
	 jBnn29JV98tsUy6hzdEVNKj3EjaFAzhrkpEV9pGhPOFsbFKCN1kVm2+JebOKsejpP2
	 lAOLKEIgQ6E6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99798D29C54
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176884583361.397.13931193619297263750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbf6ec2c35597236a91050071c0adfbbd010624e9002674edc30a841b61e76e9
Date: Mon, 19 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768845833
