Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282C3B66E
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749386394; cv=none; b=SLse/NSNGCYE3jxgU48AMYml2w/pi6fp+5PswbknCyIdJrNL9pcq3IVmrtGkzZMFffM6uHXnCjjxxfE0TcoHSxG19KCNA7K4A8seKmX5cXJ4CAMBNr52oHSQDF2vl5X6nJAzFMiFT6n9zWTrpRs8+d+OwWAkWdWJEpRBecZtatQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749386394; c=relaxed/simple;
	bh=SOzuniuBEvDTjoo4lXJX8nborH6c3M5yhDhVhFc631Y=;
	h=To:Subject:From:Message-Id:Date; b=SA+YilnGWhAi+EVTjV5yWqcBmaK1me9AVtmR1er1cgWrbXh6uKU3vSIhSA0gUE7w19cHT3CqTwGMKuKAhRxNnjXBhmF76gdzgHlA28HG/Y2NrfgGe8uwtI5p1Mi/6a76VS/Y5YGNSPYTgOuOqxp2oAiwL4ktGcw/3vYjY2PXWIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgUHClkb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgUHClkb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6443C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749386393;
	bh=SOzuniuBEvDTjoo4lXJX8nborH6c3M5yhDhVhFc631Y=;
	h=To:Subject:From:Date:From;
	b=lgUHClkbsEHdWn6rbcCFloo21lCadR2KtttXlXck2v4iGosau+YZSAM/6C+LqjYAN
	 9Ihb5qMAFwpCniTyu9x4tOQriYUHVABTFJU7N/bu/LCjELLLfX3IGaiisbRIbHNqe7
	 H8NwAYnT7mOQZ11jkdIHMaaBsHf/Wm4YYxpCDfsrlIQ3hZUQR90LhnTUD9dyPdMeTc
	 Y0+Ylt2DWnLZVETqSJ1V5utwFUYvcaXDAh89CwZxPCPhYDVo9D6cfU6umumczsf+pw
	 LfnYarxqAgF7W2LSLWkV0cGyjMD/J0f6K1uoNyrwGKfhicH3XQF1lQbXTvaTsZQzRt
	 88BozCiHzv/Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90950C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174938639358.15837.2583099853087581574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d87068c079832ae654c385a4a46df0f51d8c1547f5cee56a339b128361dfca7
Date: Sun, 08 Jun 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749386393
