Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03153156981
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 22:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712183297; cv=none; b=awuW1/cVB9ehkjfZdSTveTnZ1dZhc91zwea1GpNcivbrWhBCndo9iokBckC6D3K2PxiEufP4CYhieDFDTn8qYXspHK9RocvgvSSOtM4fNgWXAeX1xpUeoX/ij1GNU/r+XIZQtimR8tYgTX0lJf9THwF3NpqOQeXcpJGrLWD+op0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712183297; c=relaxed/simple;
	bh=3d3TSmpT75TghWL8sppXJE+Rlu2opvdmw/hPzT+JRWs=;
	h=To:Subject:From:Message-Id:Date; b=HL+XQkv3lhexPh5Rkqlp/X5CIiSGEtpmuLUwQbly+tgebLaEUFLcnaXgiXoer+jx6b4g9/PfQX2+8I5dSjMV5IiNrb46ISDvZuY5wmuKwml9AOhzO3Ktlnp8jfve6sl5OPRmPh0nXsWYgicjpMnO/JrGoQXDdkiM4KX4NcrJcR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IbwpuGhY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IbwpuGhY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78AA3C433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 22:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712183296;
	bh=3d3TSmpT75TghWL8sppXJE+Rlu2opvdmw/hPzT+JRWs=;
	h=To:Subject:From:Date:From;
	b=IbwpuGhYfnUTsdUAK+DGYWcnAplDvCUjvxaeSVWfaSTnKcl1v5wXsPcst/mS+3Gmy
	 RYzjiIho8cnoqXUA8UvuEu1flWEEWlgofpBLK7h7Xlo3+GHp5S9zZZON/XJXNIDUne
	 99HTTHlSgDk4vF3uaTeOkWptf2/cgmo/e07J8RRCgl3T1SST0q1q68kO8BMtDOTmz8
	 I1sXo/6bwswC6dBMmtul9XHs/6Qj3Ecxud1coS7LVJLmnSTY64/Fbxgu04CCVqIBus
	 K2F79cbG+k5ivPWKCVQT4yLH6N8KZYaHV2Q1Mu+3mAz7JIsqbQGWgGMuollyibGrK2
	 EY0Ag4wcaStRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BCAACD1288
	for <ddprobe@lists.linux.dev>; Wed,  3 Apr 2024 22:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171218329643.9538.1937777335030876399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aebeed2cbc123ac7ee24be401387cd1ccd28352b076df75cd31cfa7f9a37000
Date: Wed, 03 Apr 2024 22:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712183296
