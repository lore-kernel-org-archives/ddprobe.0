Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27413219E8
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752628194; cv=none; b=GTREWDRRVTTSvXIS7R4PQgRECEsh8ypDBzKt24qmGv10WMXmU95fcZDy05sm1v4mOaoNyZ5keTCEXUAiZ3zzL0631bDYTo9rtfzDNE2tAcGIDi9D31h55TkJ7Y1dIFu9xjeXZKzjI8212VcuP/3EBVt0jTqvc/xFhFXsE2Hf5bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752628194; c=relaxed/simple;
	bh=WIULYOc0qARxBlu2PYWtDtmAhpVLRl+5iGSpdJ86P6g=;
	h=To:Subject:From:Message-Id:Date; b=s35T+cu+rrNuBmT7CUBHwntmZlSQA36GiOlpaPYwLr69wxW8GdHdzL1h6F2z0we64Zr6q/KgTX3cuEIbh6XX/Io44CB1RpfRG12DEPdkjkRpk0+9OTpU8xB3U6n3er8H9LdDQjG8YB/CW76bZH0T30yzUsxXp4PfBBERrkVV7Zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgTO9MXy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgTO9MXy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFB0C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752628193;
	bh=WIULYOc0qARxBlu2PYWtDtmAhpVLRl+5iGSpdJ86P6g=;
	h=To:Subject:From:Date:From;
	b=KgTO9MXySvulqRD27QSk0prqalS3nMTPsCdMYljSSgMr5TbFao/USDhk9MSDHmxDa
	 gkTKNJCFDzluI5zoWTJTCFTaZdH0MWEq1xJ6T1qK6DL7cRQBbo6DL9Z6cSEQud50pK
	 sqJa062AyEded5nlpmI5T1Rx9+SYU/oJnlnku8g5kIoZcobevKO/C1raXonUPvVkLZ
	 jqM88utueBOjAPHnVvuLN6zsbbEMIW6VOS+Vkif+Ujsar0M3Cz+7JL8uQntRDJbzX7
	 Mn5gf8qegBs525wNSh/aXBqWqwvtwniJKL24T7sNPiCIF0f/bQhJ7ZRK/QwcsJyNLo
	 Bi+q5YB6V20Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6BAC83F17
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175262819357.31041.13223270552840541561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1b43cc2e6630d474061ddf268a5d1e9f374940c8c8537a37b35e2843573ce37
Date: Wed, 16 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752628193
