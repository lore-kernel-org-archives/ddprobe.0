Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3640530DEA6
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 10:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777199254; cv=none; b=DLd/8GZ/Ej02dAm4nWXD+OZjpVcLIF5/UqaVBN32t2d20np/bhktiUml2w8hHsqOOTAE8fDJ47HV2qEBqDM4W+SiHe+u0qlL+nMfDd1KqCBifYVtkEohOl1ILAwrMI8wXZaowfGF+2cOLYiBJ3ajPiOcPQM+UdBEiKOoE+DoPmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777199254; c=relaxed/simple;
	bh=ssLN8Jfe1q5JAzwUQTorEmYR7HZFeBX8+M/VFO2VRxg=;
	h=To:Subject:From:Message-Id:Date; b=B+Mh2wBJrvdDr7e3kIid/RoG70U8OXdHjj0kGVzCrGohr3RX3NPn2FWE3Aly8mVRdlgtnoVbHI1k3Vqi06gram/SKSbwmra6bSbx1WBXaIhJwcFJPy/a2L/JwQTd3os6IGZP7CmSBntFF35kpL1KdpVIJS6nhRl/85DoPuoO34o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ho6C4pBr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ho6C4pBr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F8FC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777199253;
	bh=ssLN8Jfe1q5JAzwUQTorEmYR7HZFeBX8+M/VFO2VRxg=;
	h=To:Subject:From:Date:From;
	b=Ho6C4pBru9VdSOAMjwBIhBIzPjGxwFWkdXQIORcdvXZvHMmrrXuCec3da3t7Sugqe
	 MwSS78FBdHW159LrqM/6KNHLSjn/gFz2x/rTsSl5xmns5cfDHz8vWjW7g0I7M/xGx5
	 6zGsOtgEEBTGxlQdSrUT2hMMGbEzsfyaDzcSMWOEOvCbFyJ04QpiyL6uF9wBaUUucb
	 UsaSDYPOqxgNAdXhLbmw72XelB5+SylRRnpB9B1BrmOVOJFPW1UpNG1ulN4motrSrF
	 eou+Av/dsw8NYpAxmS/0+zbWLLtrR99u1JOl7HH+4cTWwDJNfzU1jftw52zwAZYpt2
	 fNdsWzkTFMUow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEB4FF885C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177719925368.20870.7494680116281196122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1498d9916f259c09e2f0c8cfcb0e5644f4d8a34b2d54760aa93630d3a156cc75
Date: Sun, 26 Apr 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777199253
