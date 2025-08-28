Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E69E2116E9
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756409394; cv=none; b=P8Ea38H/73NdO24ahkDeo3OWxAW82E2V8DoM3zhbNPayXeK0XttBZ3XyLd2VFE7LFUzkdvRTasoYeAjm01VvtrqJmOjpc6W8yGgxAWRtd8wzcWackPKw8xJ1piO9EdaWT2dWSWpHM6Nfw1YMgH8I371tJGXeJUdsGVkymLPQnXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756409394; c=relaxed/simple;
	bh=kbw2CzxKHsNmT1I67InYCErhBd0O9MeSbUdxO2bNP3o=;
	h=To:Subject:From:Message-Id:Date; b=E6XCIZLjOAS1e4ypVAxF8eFckKiWpThhGD5cnLrU7EzDROVg7rBOJOAhSfFQ90pDla2hZ9yjo34R2jlO2QxUyHrpFRwfXlgvSN5i2deJe5LG43+3OdXVyc+xyzFI2k4rDrMGqZ6HUqeVRm4uSS3zbHE8UGgkrAAU/IqakRT3+hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddFh19Hm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddFh19Hm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4228C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756409393;
	bh=kbw2CzxKHsNmT1I67InYCErhBd0O9MeSbUdxO2bNP3o=;
	h=To:Subject:From:Date:From;
	b=ddFh19Hm1G2U4UZcaCDuo22XiOd0gGqLyca17JjX7j9nVIFSLD3X3D8wcJqbbaR8L
	 O3E1RF5tTRo2II8sfKp3qMRv4gd+yu9CksPlF/H7AbmeDkqiu6utJjDhIbunS6TdHd
	 L7ngyEDVMmXSC60gOx+uo2b00KxkrpL1itgAdic0u7xZbJy+sEc7F7MAyIEx55Owg6
	 ndBXiHrIM0Lxn/ioNurDYseF5AwENkvx8kMrxUa/CiVX310ZJu9I/1BStVX+DOWus7
	 54ZxPE6vThknMCa22yQa3wQ1Gihj6LAiHZtt5ABUstj+R5XT7hc+kXnBQ19/WaPizS
	 ylMEhdoAbvJGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901A4C8303F
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175640939358.22523.15140836600828035296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 589b14b695535620081b11f5e7111e1fa55fb1422858ac345aa3f6f5ef96367d
Date: Thu, 28 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756409393
