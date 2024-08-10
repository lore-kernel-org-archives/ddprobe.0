Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228EC3AC36
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723323954; cv=none; b=OarHOb1h6HvAxJUYjB+z2ntyqaDy9w9cvd31r6lHAcIgAiPuQ1bmBDUmV2J35+HJlV++HYMbGLjmpqnNqO3CcPUVibjO4KEwcfCzBCW7sGGAhYfuJ50gK6N0xDbOODEgoPxYyLsGbCRMpFEyy/yNkkdff174ZlQ19y+eu95HP5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723323954; c=relaxed/simple;
	bh=J0sl6FRYE0DRB1hCXoj4NwHtYc0hEFbxbFtDhR36qPA=;
	h=To:Subject:From:Message-Id:Date; b=a2z8/J2Fh3q8lsRb+RMNWorvqVyOm/oD+DYWhG4sqIljRfq6vi1QacWpsB4g7LAkAocWYRTUhFsDNc71O3UKxjnhdwR5RSfsgDl8poo/q6mjPqLZIVTsZgfDWJ1MOfaiesdyVEmDXSjq4KiYgFN1nP5I8QC2+W060VqW2Q7XEIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jROMtlm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jROMtlm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3DDC32781
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723323953;
	bh=J0sl6FRYE0DRB1hCXoj4NwHtYc0hEFbxbFtDhR36qPA=;
	h=To:Subject:From:Date:From;
	b=jROMtlm8JrOe6MCWsoNY0KGoFSQAM8xDSURdw6L1cVy/6Hp/E8D5qETT0nDUvAyYL
	 zBIesmQvYhSHX2nvKIEXPYgIhJA1A+g2SatO7+k44Se8F8rPaMBRjMlrHzxnrep0w4
	 oTkYoX5xBCpZaZInD1cyMasIG2A0T1wErJZiAU2dOo9J1ptsWHMX0mFxmdnyoRAeGM
	 ZhMJS9vFLAZ7KfxF2Gz2KMPL/mRalBtzGyyEW/+X0MmPrlAfaFnpmqxDm3poAvHgdo
	 LuCMUijErsnreN8h5VV5H4ACBH7TmhGEx0WIbZ7rCBy7bECn75wG6d2UPf0rFS69q0
	 FPVDilS5IVpGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCD4C3DA7F
	for <ddprobe@lists.linux.dev>; Sat, 10 Aug 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172332395362.3705.16444667798717929881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2508fc805d592f075df25e77e537d80f3c5372b3eb862453fdbc2083bb0ade77
Date: Sat, 10 Aug 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723323953
