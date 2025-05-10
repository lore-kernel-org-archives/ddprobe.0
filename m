Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335B22E406
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746892194; cv=none; b=ltM/Qcojco37rQW3tMpYe8TrTIZhUc/WTAfB4MzOjUnEVibVfWVnww0lOiMSlD/wvgs2k8iBAsA/F04HbYtvfSu+NahqZidxX2vylR8yr3uT3JaFf5LdldL2vz+aNfgbLQSN7W44JKcs63zzzg8XEy6haUMJ9HEgJpO6Gm35+WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746892194; c=relaxed/simple;
	bh=bYSXT/zkpAOdpPic0r+8bPCKqRphDLie9Al8WlZrxgw=;
	h=To:Subject:From:Message-Id:Date; b=WZh8/sf4KebIcFKDwYm7urLPx8f5zAbeNYzrrXOAl41z4s2fRXaltoLe4xIzxZ51BJ1Orxe1tUM3Yv7TP6v3gSgbf96ihQn2qhMdKkmjuLm4nZrdnzeo2AuCGITRJA1wO1ky9592iL3VC085Abf9fK9hJWUP3veiEM1c5d8Qm/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BjZwKyFI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BjZwKyFI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12A4C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746892193;
	bh=bYSXT/zkpAOdpPic0r+8bPCKqRphDLie9Al8WlZrxgw=;
	h=To:Subject:From:Date:From;
	b=BjZwKyFINmUV4gxreybdggImOvQLPc592yYk+pmMKa3oqfInNeey5YK8QFxltSALL
	 6O6hBVTIaQY7zs+fv6zrXhsgbamVxO84eFDGCc1CD05j55I3mlrRFkSuuGiU+Esua7
	 B0p0+ETZ+nFBBt6/DDeu1J64NGngPqFj+ZedfLAzhJYfUfHp75H0Zyxnbu7wdStHJs
	 RO2NpV/9dnoIMxoK2Ad6nb3zhOqVFU5wkRMwNVkEZdkvr/lJ/aZ/pTYy7mtkIj/fBG
	 4xV3qY46Xl/bKz50ltGr+p6lX1SoG3/hZ+pAp3UKhHP+q4wdvAHWX6g9HwAwzComl/
	 JZyWLzqQO0M6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E552C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174689219357.13983.3660377167641432983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 013686c0b823f49a82254c5e50c3d74c8c540b2bb8e350e73a1f304d65c34aaf
Date: Sat, 10 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746892193
