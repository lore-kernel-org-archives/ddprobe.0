Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143C917DE36
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 08:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728461154; cv=none; b=iEMJAWAiGUsfUY4JsmqdMRgRi+0yTN79AQKnPRJ8mgjnx6+ALaTNF7KNb8QlTN9xAcq8br0alVpQ/KrSBycNp1B1A3Dv8m4nyy4CJvvmJp+Fw/fwPh9JuR26uTjd0JrocriKRAiMOL+L1FGbg/CwnhhXEcPCV3gL4UjsKp/kvgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728461154; c=relaxed/simple;
	bh=sRC9EkkuXCYzasi+RnFRLkMed593/PSFHnVpXT+jkJk=;
	h=To:Subject:From:Message-Id:Date; b=T4ouSceKUzcPaizzVKp8Qka+ECDKeEs1CK5+Kk04lUvzk5hVi4OHLOp0MIE1Ycc44Pv1ORYwPr9s8ZYitfxg6VY2Gbe89BgKoQT6qSeXAy9MaBn9A4/YDx3/zFM6Fi+Ye3Re6w7pyS8vt9Kr3mu+ts1WiIeZM3v0AZgq6DLm4Tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUJBNd6M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUJBNd6M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D3EC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728461153;
	bh=sRC9EkkuXCYzasi+RnFRLkMed593/PSFHnVpXT+jkJk=;
	h=To:Subject:From:Date:From;
	b=nUJBNd6MBjDWUeqlbBTDN+sR+ocFZKQoPgaVxPfGem9yV7xao6gGB1KWiZe4F2Z1W
	 SzfZswmHEB+v1dQIgOY29ZQWytfgQDn5ueGUKyqCtTp4WLUOyg4ak208fBh1DvhyJv
	 A837DEfpzhCxhJV+VHUQpP7lsh9tmmK7SpgrVF3ruEP+WeBLOUYaNUiTStf84zkrCG
	 1+/TaSuf8AAsY3kAW8NNxl/Afo2FIGLfseKdJfk9OsGswPb85N+kB9YqOo8W8T5x3g
	 ucZ9HOnDmRRHBTb6PrdP571PUPgbJSiu7zOfCl4i2k4ABz8YRDpzUVSNXUB6EDUWDd
	 GJiFwUhHMR2dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93234CED622
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172846115359.7614.12284021517872277100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6913248705221a98800fd666f1c17ba5a95258845684c12c4c110ecc5188c860
Date: Wed, 09 Oct 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728461153
