Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA382D9ECE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756820994; cv=none; b=tKkuKiYHPRbpY4edxRqvOqDdse40/X6gK9vx7jsl9qQiTAP18fziKUau0ycVDccNE8gDzemk00UsZpc3IU+RCOFgEVPu7mUPyHlWfQpC6Fl2CH63KODLCcol+thz5bcOIIi2PZdVbMdeyI4ViU+BtoT2iCqhWqEP46Q56t+ADNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756820994; c=relaxed/simple;
	bh=zd79w0I6ke4JpNnWUh5UnmdKcNdnQgRs1WDa24p2HVc=;
	h=To:Subject:From:Message-Id:Date; b=TLpnPxN7snxq+rudtBHBXrONo6AwUpBT4kmleLvBfstOPYvK1niiTBx2iXBHhrLP6JqDfaBATDO1jqcgB8+XacU2f+B3onFWcnQd8KILNttBEDX62r2adc1jTOLjf/ELkPdZW6lQA9RXSV5konFHwgPQ9xdfTY5ppYQG165rGco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qD/01Etc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qD/01Etc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 99D51C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756820993;
	bh=zd79w0I6ke4JpNnWUh5UnmdKcNdnQgRs1WDa24p2HVc=;
	h=To:Subject:From:Date:From;
	b=qD/01Etci0bxvLhw8yEVxbEpQIfwS9y6Xi4kspC8KW9Rj/DH6jqN0xyMzyJw5zDKo
	 vkWsGOecDVH/gMrZm/lykrVfpaqiv9EC1cNNTmP8MlXHycKDk+AbKbUmA4f2y0Xke5
	 a/HpXfmEoz01k8h0sr+YIDEk58eQXXHtIv96QggQwwIBBzp0arT5KIXWNBRigIbS1z
	 0xlnT6fV/nSTtLZIyR071EZ7Mj6tr9UC2/l3OEafHckUpBjH+I/FRn9CtYHHuyn18w
	 huSgpCl+a6IRBF9MJBgFoRPKkpn1KjjL9LCQFV3Ht3ESICAq2cRp2kkECRnwShQpZZ
	 hLXEju+KbLxMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC6ECA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175682099357.4045.6073722724668928386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f66f3e236d59213c17e851e952c5364e59a92eabf534ba82d8a2f6c4271cf9b
Date: Tue, 02 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756820993
