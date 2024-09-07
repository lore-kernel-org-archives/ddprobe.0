Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED3D282FA
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725740154; cv=none; b=d+GsMLHqTeDfP/JdNWfXmHh4VvA2lKth9zgfwTWxUYTAQLYZuDrvKosbIO0jWn0ASpot4c6tEclj/z0hFs52Y0OrW2/O3WqyR4Tb4AOrlO5RlWZnViMC9Sft1xJVKpUgpRlwmLppMyD07a7TMxMR76FVkgyG1OIF16rK3BsAOXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725740154; c=relaxed/simple;
	bh=PBrAe9lBFwmqMbq9LZe8GpkYbpFLlFbO4l4p0uEM5Sc=;
	h=To:Subject:From:Message-Id:Date; b=Qyf+caC6/ZODvUGKqTNG23cPX7lZu5C/Vpe0/DeJVmyHpTuIJaFdzs1q7LusKgIFCoOYKeB/wPyGxqgF3yUtgLh2ezfFSJwm1G3984/cQzlFEWSx3anmUaZMGNnx8br7YgXptlEXMVQH9Z24GhdcTAQbESemltbItaH/+5vClN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSQCiliR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSQCiliR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5853C4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725740153;
	bh=PBrAe9lBFwmqMbq9LZe8GpkYbpFLlFbO4l4p0uEM5Sc=;
	h=To:Subject:From:Date:From;
	b=DSQCiliRLOm2fziCpCVVRaoHYRhDfQD1K8hYNdEIoiBW8EXStWtdUMMaRgtgVHdgP
	 nfvzyJkVFImgbjPtxAJvg7Yr7g8LbopfKJtvsMl3v9Zu2R41BA+LSI1S/gmHaUra0P
	 lf3kYhluTW/BDqI0JCOUryUGAvcUo/K1W3mUIlakevXeSA4LJ6zzc/0UmkhY63PsMN
	 cGcpbFKhNekzYsZZpAxj7RJKSXH384lqrKVeKHJg685HyGeeSL9WrRuAVkmE13aYD3
	 o7vs1/ni0qbjWjuZvEiEObblgIjV0bMMlnGGerERms6CJppClUlqoVz47IblmB5ZWH
	 6wGoJUBDVTosw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96911ECE567
	for <ddprobe@lists.linux.dev>; Sat,  7 Sep 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172574015358.10178.14396855910210015461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 353a25cf3d7d4b0851c3d48fc7a47fcc6a7b21fcf2a72b0c4b4cebdd56310133
Date: Sat, 07 Sep 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725740153
