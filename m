Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4734D36A35C
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791198034; cv=none; b=CPcceacfDhj7IvEliOeeZuWodDSS94FsUmvQCh8riKmY1MpMmp/YT1HNtYGGs4NdqDNuqK7UXz6ovNtz+VSKYlpj6gPObpkk0t5bsay1Hf1E91UDfVMm75lopeF4jcwNvUbBRtYM48gFGS68Plv92aa/khvyyrVwfdqo+D+o/MU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791198034; c=relaxed/simple;
	bh=LhKtjbGsfbEnliOgsHRKJ80imKmk0EgxwLKx4YoRUjg=;
	h=To:Subject:From:Message-Id:Date; b=BCIy2Lvo2XhpAXSzcbHsL+ikggUrpDqwLPINVN2ng0PPrihYzx74X7mujX61w6IBtxR9N9ycixvq9alwJOk5Z0EH490uKD4xqzxPD1+63BNu0Fdt+2L3KmhTqzIAs8mJ7sDWTxZAZxHNBEGVQ/sWgA9NQPKwwMZB9o1KGwXoWK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=msvnxgTT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="msvnxgTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D074BC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791198033;
	bh=LhKtjbGsfbEnliOgsHRKJ80imKmk0EgxwLKx4YoRUjg=;
	h=To:Subject:From:Date:From;
	b=msvnxgTTd1LsETEwzTIQr7/+8T5gf12GiBQW9T01JMaHxWY46PGhoiCgcswc5TN4l
	 UqfwbU/84o6tYZ08LMys/QJQmdi2prHqrT/MUFBjxt/sxMJ8FR7S0B/lNj5afkGVDy
	 8lz5YWHT/eUCoPMRyHwpHBoSxf3RK5RsmkYGy1xyWDER2DoGgWNlBXH7KPhsICbcJu
	 yf84IkTCicxcc2+zEPUkzT80/a+mR1688oirod0pQUrFa40+c9fAqOT0kM18X+Sn5E
	 ZUT14vUKf6J356mFmHoCG6oAF3cwN26GFUReL3LA2SUIeE44eL6wDcr5+lfaHqtnTg
	 9Mgd4XTQC9Vgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2A8CA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179119803368.28156.2728358963453971753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05d5cf8aab45761f693cf8716e63e29a10741995d6bf45e8bc34b8efbc6087da
Date: Mon, 05 Oct 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791198033
