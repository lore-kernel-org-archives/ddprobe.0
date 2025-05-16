Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E05746BF
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747369194; cv=none; b=DRauSrQTEU4sg6wutqBrfkICCNuxY+gh2YBdmw3eK4/0/NZmre6stmBHkUOjhEz5D+ZRf56uKlRnXsRVuO0Ra1D8yRusOKwUnotHG7OoCDtOB4gX/dTNAH/ao/gRIkIj5khip9MmsMi/hgqA7ZH0k2h53eLgkFkFrBZNE6TfFKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747369194; c=relaxed/simple;
	bh=R1EE08P7MrJkP6rm8SZ5pq5sHP2krpPdZ+t2MrMLx/g=;
	h=To:Subject:From:Message-Id:Date; b=kUjfhcyAmL0/mFat/5RtnSnPm1TGZN4szJnkBh2cctOuxaET/D4dFzjkEDr+H7KPkV4IuLmIhe+3nFnUQhkcE9jOI6tliWFpduEZ3bi0ZSyYP82MzxFFH4bHsAoooE2BSHfm7F6OZySZq7iHryMK5S7ISkirww5DkOzgWxx5Wqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JLT7utB0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JLT7utB0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0084C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747369193;
	bh=R1EE08P7MrJkP6rm8SZ5pq5sHP2krpPdZ+t2MrMLx/g=;
	h=To:Subject:From:Date:From;
	b=JLT7utB0+qCcTBjcUyHMDjlwUAj/QrcvCsukcVIPIFGcNuMPwPFTDCT1gaGTMsW/5
	 aupDhj6+VURIPr3DNeMOBeQ6C299IzRqa5nAjIlZgLEYlOAgPmtNPlMLxzb7jC3JNs
	 67Ypf3dVOeQrYlp9XJimnhEDApEbc+eU9IsnV4f4QUAKy/hQSMCBWS7zH3jZ4rAQB5
	 oUvpspocfKeejaTQRXo/dM3Zvwh0NhqZmhX/3b2H6Mu5fmlHp1NSdtawbv1kr/X83N
	 52p7bW66MT4bmvZj8Z81XhYQ/gr7IR+2AKQiHFdEaQI0xs+rMdIU4CKC6TdhyhoUU/
	 WbBZmpyHwEYSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C166C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174736919362.27606.4090563085485166883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2bf421d9d461176c7bca2472157e422ca532b4d449a3df746accc25ace719b5
Date: Fri, 16 May 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747369193
