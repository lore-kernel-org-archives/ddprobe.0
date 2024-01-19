Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E69AFC13B
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705650497; cv=none; b=f/40kpIkty719GFWZpViZUBGa8LxCJY+d5ijUNMtl2Lq1drIfochBaDwdRSTS/k6KAJ6m5mUSQZoJVO6OxlenN5H461sevHO2KUdR4+iCmJYb1Cs3uWaxjpfUeBbr7skK3kOokRbDHG1jjmRSsn6yfMY2j0GINtTZ71HooFHIJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705650497; c=relaxed/simple;
	bh=/dOO7HLa7ff7ZvBb/7urGd3FKZSFivbJNdOApvsq/WA=;
	h=To:Subject:From:Message-Id:Date; b=rdddxXPk7+YhuTktPO7kXlWWIsDG+++1E/9w/Cj1wP2adh3JcLmmLYUmAD/k4QC3FIgnqtzqs5h6fmQ+JeIulCjSMVvDaFPM8gz83AlaF3/LA3NMrsJZe9VvVBRmJr7ttCJDQu5G2vOYUV1hIkj4JvMHzwLm/dNJ8dFTxUouOoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PrbnJOnL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PrbnJOnL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75CC7C433C7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705650496;
	bh=/dOO7HLa7ff7ZvBb/7urGd3FKZSFivbJNdOApvsq/WA=;
	h=To:Subject:From:Date:From;
	b=PrbnJOnLM/sTa/S++44ta8iBPHIQATEx0Qk62/H8eydBiMXc+hh6s6pGpOWePhH4f
	 tX4RtFc075wCsR50MVZ+E9RqK69YIWRN5zW6awv/zFFAZ1buk2NWSV69SHi1+ki2Ve
	 fbCoK8wYgeUCGMRl6MXs6DFmcolkp08TalxUDCgo9mabYYlc91m2eTnf1WHYBKYglI
	 iv6rie+Zgo3lKNZMVgWcf2Nuvf8RzRTnCt9jrwsp3P+92cToI7c9+k1axtfuREWn0L
	 DYW8lrcgr2wG7PYBEtHMN9TPoqBapTgrNI4n7RX+kzsWaEmzh5c3mSmBHofDjShjl8
	 3LSBpAIW5/acw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D452C47DD3
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170565049637.14548.16383819461639368288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bcf8471c3be87044ecadb57b62aa23a55e1818751ba249f63fa1e64b4401a7e
Date: Fri, 19 Jan 2024 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705650496
