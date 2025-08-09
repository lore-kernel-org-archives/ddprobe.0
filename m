Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2306327702B
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754765394; cv=none; b=bFcyoJSHWJ1AxHGFTifdfMUsDrWuF0Sbl3LWjnnKQhL/0Cdb7IESdkQfr6DoAqeUcZDkb2M0aJtgWUn7y2ciRzWx9x/CxwrcvxcH77ps89fAudamTpmz/hG2XmrVscXA49oUpxWH6ROWLUPa8rNK5m0+Wu0F6Q3GxQKEC24j6aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754765394; c=relaxed/simple;
	bh=9MDMr0Yf+VDrhfg9rC8wlu3OloeqKAgX07bV+tQRV10=;
	h=To:Subject:From:Message-Id:Date; b=B50mjDv8rzAOmDa0Ddx/1LZLp4tvQq7dSQKVzBoWEOVB8TRS7FFOpAc/grBBBGZHvNcXm3yqYXehEMgqSq1c/0V+kOFT9hyaKpRIDv51GlegIUIz0SdMsXyyDs++9hzMRKB7dmpJOc6ewkXH2XOkrNnFs965QZH0DfOjFCC+Tz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QAfsI/fr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAfsI/fr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5839C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754765393;
	bh=9MDMr0Yf+VDrhfg9rC8wlu3OloeqKAgX07bV+tQRV10=;
	h=To:Subject:From:Date:From;
	b=QAfsI/frLePjQHwhuMKYNGQjlQHBrjxFLYTiiznTse5sQv9/vhHlb0Ah1KtuFFzBA
	 8VQh7VuDvunURAVX/1j85tZjKUh9mot57rilEeHK+e2cMVvurerUzXlzMZYdKE8+ep
	 XhFStlhYSx5cETCh7eaXZae2zsDPcZWZAmMRu/vXe9Kn3GB4CM2x175HbGEVxqaXht
	 kgg2c+ybypvD4XHKpUxnmqgMUPQCgtqjfm0mo/gruemCkROHQegRw3yHvZaLh0Li7/
	 Lct8ig7VDQDMyVt5+QqTAnh9zuHqI/vLedihvVAPbQcOBwIoT4QLCbl10WEGuGeEzA
	 RiCkjYnVVMJuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92742C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175476539357.24274.11168721857395389970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a094a1369b40649b3bc248087b5001e8760bee77c6177356062418a489b961d
Date: Sat, 09 Aug 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754765393
