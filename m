Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AED62222CC
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748604594; cv=none; b=t8C3u3TZIgbhv6xw5FIrihtElOFJiPIg1jlB0NJenTFoYTjUpbdfWHUCNbdAj27lNXLPm2KHvry/5e3hPwVEEQhX7Eu200ATQR0rfCJsHK7ohoy8kkjDxgs88qWEpRkemz6DWkoXXCAxZi6wTJg4mamLWe6Ld8dgwyIptfBp6Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748604594; c=relaxed/simple;
	bh=ckn7uDyo/lm0EgydORA2WiiT1Toj27pdjJnqPOesi5M=;
	h=To:Subject:From:Message-Id:Date; b=BldWdVazqpfWFk7oIvnAbr8dEIPs0UvR414kCt6U63npf3wHkMJjEtmz/78WbsHaFzuDNQSgh9EnunFGoio0m80IXsdJKHf/pNCUm5pY98EsLGXQeoQEcgC6dWL+vHQj98ybbh5/EEMIN2DqMKHnbG/YOAqlwG/UtAWRdbLYYVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DaTbMpcg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DaTbMpcg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A491CC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748604593;
	bh=ckn7uDyo/lm0EgydORA2WiiT1Toj27pdjJnqPOesi5M=;
	h=To:Subject:From:Date:From;
	b=DaTbMpcg2Isi8H4eM5acXsZ+z+CRk0BaZy3hFMPWoqDm3Pl9lDt3/QaZvGVZ6eZC3
	 IvuuWpopiamZZPTQI5aOU1gEmY8zHzDo15yGgu5PyCKjb0qrOJpeXpZCRgGwBpvohg
	 yskhwqssevKgH/2WMZJB5SsXIK7iuxst+nbWr7uCzouNQEDAaqXG29GPqGd5V+77Tw
	 /+JJixbIteGjWPG69zTZulWY2RugrQJ18pz4351+cjAzUfQnT6YpRb8QA6DRNvC8Al
	 e8jezC3sl5l2bK7HPDFGH41AXMhatFBBkNFT0MH3UKuUjUyaK8z75/Cg3dbbrt94uc
	 dScO25pBZZzzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA3FC5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174860459358.14223.4010994319664281942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 935a23d376fd58ab83197ecc6ec7675bded1c453e1be5e8d6cf9fae5693600b8
Date: Fri, 30 May 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748604593
