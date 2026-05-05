Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5F048C8CA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 21:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778017654; cv=none; b=MdOwobYSTZxEumRtJNFXx1TIajD44xi3emuo+pGhl90TDEDSpeAIqLbPozKNOxzWqVIJhvSqvQ/eTmsNVKpkrDPYXM7OELxeVenmxsF83TTGJRV5iW4WJ22inWuT6WvhAHDusEAZX0usiD+j3lvQR5YVnjUsLWVcbS/XoHDZVdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778017654; c=relaxed/simple;
	bh=kG3eP8osl75rPf5qc3gLO9Ffc6o7BwkFQcyHf0GrLRg=;
	h=To:Subject:From:Message-Id:Date; b=EeZ45byOKXUafDIr1+EPIk/hv6Wvms1DoG/gDxPQAzJ9krEtU5xCuoG0+elftsYlrj513jqA1RYr4M3kqJBrrrLbCPnNF3JeieD5kmitKTNpvx9ZJtic3ObUxbnYLQvYy2ea002WpirBdr4Gtk4mUp9iILvCTHzhr6HB5PEt8+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QDO8zuB2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDO8zuB2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03EEC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 21:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778017653;
	bh=kG3eP8osl75rPf5qc3gLO9Ffc6o7BwkFQcyHf0GrLRg=;
	h=To:Subject:From:Date:From;
	b=QDO8zuB2xrax9dwYvnvoaAtnbLQ5+7kd0dBaaH4xL5Pkms+iV2ko96+mSG6ZUVGTk
	 q1rIGgAHzxDpXeXE15FQPiOo81erKagcYDRUbQOXNdKRpGSH1tWvbPHS2BMJRCWjRV
	 XWyMpbSSXczz2JYxdGl13dnsft+o3v8wCWWSGO4MG1cF93A5Iqjm8eV6Jc2RvNGle/
	 87RnIuMys3reyOmKqbCIUi4557TASL8RqiaNd4G2A/byJ5vGMhI5y/C2D56glUg/cr
	 im8WknBNB85xwTQwci1y6Qa7RJBJ2TXYWbKOhs2djzDshEqwIQDZ/F7wF6BC0KNoAH
	 hRrazxX5aPJZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB534FF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 21:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177801765369.28984.3822905712334730093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 105c6a3b1e096d9107134308ad50c3262183b67e5248047a191034bd2d46884c
Date: Tue, 05 May 2026 21:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778017653
