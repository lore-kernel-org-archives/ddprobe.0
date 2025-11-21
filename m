Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 160273064B9
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 22:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763763114; cv=none; b=I6RHNxSEHimLFjbx3C8DdeF19QIoGNtfoIlZRdcKbkqBuoPlwCmR3d2u3yHwyt++KdfhpG4OMM+u4woIFFHtRsxzAmS9d0y2XvV4bHSWDAU5tdFx+NXNVR4ahzLxUXKdbpbiV2Xk831dFx0/iMiFIyWvcPNttWH53vsx0pk6454=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763763114; c=relaxed/simple;
	bh=U8QIO1T+koZK4cDNa8P6R5e0AWmPe4dWLwReOIeyn6k=;
	h=To:Subject:From:Message-Id:Date; b=e5QFVYboJ106rOou1BVOQqkgSe7ezfR+pmDzsAmwgUkwUxp1FP2KKwclz1wW3wLDSlgjSsPLiE2Sy4tAo9S1vhpM8Osdb96MEHasvm42sCbBlbiIoSdn3D6tyL3jmZreZjgOeHIbYulwQAHnPwyCiIb+SAbuSLfbCdK1eFX6q0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwdKU8p7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwdKU8p7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A698CC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 22:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763763113;
	bh=U8QIO1T+koZK4cDNa8P6R5e0AWmPe4dWLwReOIeyn6k=;
	h=To:Subject:From:Date:From;
	b=AwdKU8p7rGeRLdsWDGNcSxJL2WdgkDRSkjppG4kIHJgWAJf8lpI8hg+NRgvujQ74z
	 v+Z+lHnNKVtK0GDW8GkOg5tc3vWz68zHQUjiGfyPt1OHtHOKuFDGTo1udG0+z4+Lov
	 oXw0E9zSMYTPEF/qO3I1sII2nWWpZnv8Bsqi7pkTEWlgW9mXNzFb9WaTnkLfNvsHU2
	 N1sDYR0ZS3DvGHxTml9vKdg80u2sxdgZ2h5wC5ySHmvnMJKdejWt/HKwaUHL9kafWb
	 MPAschGHO8zsggH4HiYUPIbYLfGhpcgIK6HYKqyUgZ6BwwNWaSLVmrlNzzaXd5H+Ab
	 o6nnZFTRPpt4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9789BCFC50A
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 22:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176376311359.8706.10280712530546956633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93f12643142ab6e05831229fae1052cc85c6d291afe689b43b6209a401f18b79
Date: Fri, 21 Nov 2025 22:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763763113
