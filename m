Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2796413B2AC
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722944154; cv=none; b=s1Kre+5hFG38O7s5QiYag1XVBwtZ2qUauD4DLdw8PHgrzkOvxFYorNE+Q1eRFL189HTw1GPAgMqGH0q3HcRgOQXYKZbMniUaXFORVcwTmnGwIvYbLdMyvIGkwGV3X7kJcKZvJuPqAtJn/PcbABR6r0um58NVIat/Dp+sEQbgquI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722944154; c=relaxed/simple;
	bh=GF/7tP7tHSvPViaeqBvftHEzu9J6MEX2dFJSeu6JUPE=;
	h=To:Subject:From:Message-Id:Date; b=Ft5MOCehFRjRPj218+lzuX9Dvh09SYs3sWAqURdCQbLCR1PfNLO8DAYR9MTRRQ+v5m5/RLr4vmgn0aOPz1Owc2FfIBisbUPohaaXSnGHTJA/AzxcEa04jOjrXtAdoCNZOMmwgyMkBY2qETCJ6zU/raIsuopAdIz67Vn2mhX2KPM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S07JaooK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S07JaooK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E54C32786
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722944153;
	bh=GF/7tP7tHSvPViaeqBvftHEzu9J6MEX2dFJSeu6JUPE=;
	h=To:Subject:From:Date:From;
	b=S07JaooKTGWkw2D/mOfCbFu4WPDtYZRvEfTFhjftKI1//tKiLfyJcVGM2INubbtL7
	 SVOC69UJb2TVsPGMlU33zB04L69v2mySCpnYsiojUqGtNpaFp11icJAgCDWq9/e7YD
	 lbOY3dqgThWJitCbraEVS3GaPW45nueSYeneNI9nbynLvxbbI9IwEIEXYQUotOCFuU
	 jMDm8pLlQO5Ewu9Wh+iWMatvyfTMoMN/rPMLCeFPLLJY1swfHEQLoyV06ThLT6VfPc
	 g/thWikYNKvZ1HG9Pw7v5KNkE0K57QJOguM+UK5x+7o20l8cAXKTcKhWOZb509wTNT
	 76x4J2DmFq3Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976CBC3DA64
	for <ddprobe@lists.linux.dev>; Tue,  6 Aug 2024 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172294415359.16938.8391754151417252861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23905836e4dec8755b218c398bbc9ee160b6bd66ee0abf4a32a6cea894b0cc46
Date: Tue, 06 Aug 2024 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722944153
