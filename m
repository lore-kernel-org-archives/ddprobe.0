Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2822E163
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734758754; cv=none; b=MimqM+Vmop3Rvg4SiP2L/Da0AhAsb1AFsvDckRmtpPmvqBn5x8nTxWVB4ZpqwcNqTzNir9C69eQpMXNty0Fold2FzTxSOkA7xiOiqYGbMXznIM/jsRECeoghJFdLhvgvi8CAG/3VsgYd74xLPXbvjDs0KhNk0yQuxuE+In1AdrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734758754; c=relaxed/simple;
	bh=sQ7qEOW6A9mfPhdIBbiiqxXl7cazcdc/6a0Q5NsunnU=;
	h=To:Subject:From:Message-Id:Date; b=nPaMjiX/UeGZ+ECHJNoPTdxOvU6Kiv3+lOCDNfgLS3sis4knpsH1T1lfqSWk7EylWifyt9gA5X8BSjQwDRb9vv5wRXuJV2QuklDy/OWIpQdLeHowBp127VM/jNWyiHYhoWSLWDWVbT1ZuOcbZHfn4VQSJpmr6UMm/1TUBUXrdUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QtCjLwlE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QtCjLwlE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7445C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734758753;
	bh=sQ7qEOW6A9mfPhdIBbiiqxXl7cazcdc/6a0Q5NsunnU=;
	h=To:Subject:From:Date:From;
	b=QtCjLwlE5DRwsD2hySl21j1upERguBwrwNS8XP/xiOcoRemq6QS1gc+lZd3Cw+Fip
	 Yb9H8iAUlwgjbmeyM5pMinkcNFlf4ix9dEJXbWbmM6EOKAfJCaqtjKiW0NNvDawD6i
	 220CzU7RrNgqObBZsZ6AwXabsHyr1wsgRxhRZ3Gz9nv8kjcsOTwAiuwhob/mjz77tk
	 IRGmDFDM0A9NrJ7tPDzAKosB2UH18kdfaHDV6aJsDv0LQ/Mv+QZkp1f/k3BOuBr+GR
	 7MjXMzQhoZxnaa73E/cv9a4REHblTH/JpuIr0aKOKR+c5HBRIi615EZQLGzd9vdIDF
	 mMLSwboLH91Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9522AE77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173475875360.617.9804445464614808957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a6d8deba43cc5939464d8f9965ec8a39ed13b07f6984c8c25e2800befcf2cfa
Date: Sat, 21 Dec 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734758753
