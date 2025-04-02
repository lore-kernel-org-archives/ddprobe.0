Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9EA1DB13A
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743575394; cv=none; b=jWcLqxsNZqNAovCsTpIjlFybkX7oouieKIDeJWuMCaJ5BNGJ4yMVWDPT6mYQO5VHGHnfcbaGJkxjosFiiMknsHU8snz5fGKN8S3VDWz0EWs8g3XZlzDRGIPYcLReUF3c42YgDhP5vstZwgR3434Hokksg7+K/QsNFWlSbuJe2kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743575394; c=relaxed/simple;
	bh=hsfbMrLuvwRwAQnz394axGywmW+q02qgNxCufVu/qs4=;
	h=To:Subject:From:Message-Id:Date; b=PtkT4IrVbwbjUlnmAxgKQ88xnL6WQT+498n8XrZ04bFOG69FfFmey6fGx4zbnpvBLOuS5F5xxqzIvuoqIoxgh72NbzrwCGtzsLz9/hr68cEZD5znXw1f530aMC4iTC/h2t1sPHDjWfVmcPF8FEKXY68MDzLAl400oNWnfCEk/QU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EexIpUoF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EexIpUoF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD50EC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743575393;
	bh=hsfbMrLuvwRwAQnz394axGywmW+q02qgNxCufVu/qs4=;
	h=To:Subject:From:Date:From;
	b=EexIpUoFirOX9ZedBG0W2bGR2iLKY8B84n4p5P+vMUHyWYf1RG7zE4m+762WFMhzF
	 H8zC/PUsobp4ANVv2rfvpJRpdXqtwGkCqsk+ugV0EmP4C/Z66nxmRpjrwc6T4J16oA
	 qht7RFNMO5/w0ggWx8Au2ii05xqxma9wXx70AAGUpKjO2FxDNNrzRN6Syaykzb/ZRg
	 ukV3tk14YhyEqjlZcXBzjnDlQO4MNGBiAvvvBW4DLuPFAxtowqvSYC29TJ1wbDCdxV
	 N1yubZ54Nk9KUaO+N4Rj6qvpProNpjTte5VkBk57pG6qsNGT5/J5ZTb0h03Xy6gdGa
	 +ge/iG/aAntWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94104C28B20
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174357539359.15119.2926069403014699273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61aa45e0f8e3f1425ed7414638f95e34288565257231e22e8819f00852c3fbd9
Date: Wed, 02 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743575393
