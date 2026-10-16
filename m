Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336CC5427E3
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792170634; cv=none; b=f+Owu6lCyfZOtZV+6MblndI3l9Srx7BwmdFsmjLRs6sBuiE6OntJ/RnCCKsSu7gQHQOalPsnYkdpNxDIchn45iuxqrREIb5qK4VkIthvPGGOadzl/aBRLsdf1nnSn6hyOd3iJH55eiWna1vBqaxMNhDYyP0l1HM3740UZNjVTF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792170634; c=relaxed/simple;
	bh=+xgtBE+1ZVLTBTHR9y1Ik+VCkfU1uu0upGZiALLzW9c=;
	h=To:Subject:From:Message-Id:Date; b=bDVdUrYuc7XN1Hfh15dDXMHbL85HD6in0a4RLamPbolmTi8TorHnM79y40AuOfxAwdg+M/ghnT/X5ydM3RlS2zyAFlZW+972cwW7TJX+iB7Pps1hNH8gvrVMiBw/SnbpO8mXb8VGm10tfOToyloAd7B356B7C0H3dIYEwx3ygoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EYqRzR1V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EYqRzR1V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E82C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792170633;
	bh=+xgtBE+1ZVLTBTHR9y1Ik+VCkfU1uu0upGZiALLzW9c=;
	h=To:Subject:From:Date:From;
	b=EYqRzR1Vd51f+9hM1E7kWh+TBvqHEDlXr0Iii7wftKyGI9KOcLHbj9IWHHnaw765j
	 dNhlzbwuqhNSwHyKQYWHwbSwNpipkFOxy+my+qrtz+8mn/1dOBAlyAC2ATHpAfHBXi
	 cbIfujtVrYeJARcWOhvg0j+Dnbn9EJ8PTjavNRm7o9nKNt2+H3mB1lZ8uIrtIJvHmF
	 BTtej6GsqTi6JH+czLsfyBs3jDy7sg4K0Y0fZUe6FqY/ovz7CV7zfw7sBT7LzBpkZz
	 DjUaYiZVGHazQ6JYsMLoIqahJTtgyCH0uGWdCUuBu+X+7Or56NI7ltbjBdHxSEBMLv
	 1G4KuQeuP+WPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19E1CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179217063371.22848.4616145061491349215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77c0b4992f2ae08070c32e8e85f9cc703724b1f080999c1c517bd5689c534b19
Date: Fri, 16 Oct 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792170633
