Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343381A3BD8
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747178394; cv=none; b=HrUQrKO9M82YOGkr0EsV/V6ImbqJ2jrHH0tnxgUiMnq9E/11JOCw49FIqo4YR+U0r0oC0QKb5X14eMTcZYoCIu3hoRJz84hV2Hy615ON/ritmY8KGq8L0EevHvJVkWqNx6u2czan2W0sm9FFG21/B/cL/m5NMqDk2yavMxM5Ohs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747178394; c=relaxed/simple;
	bh=mLpvvVYKuQfCWVZWyIgahoRvyGB6chNTDp1maXcP4AI=;
	h=To:Subject:From:Message-Id:Date; b=p8k1qCLl8FPgzJfa6bR5s8hRbrACNnk0aCcx/yuwH025BqRTuVP3nQiYkG6jwLgDoAkWI9O8vsCPXUV5IIumlJsp+2MUBT4BhcTHqmD5dfd8osJbkGOniWBe5Kzz3FNezudf41V+dfddguOZpknei6u45HkOQX6lm4mFUJQCzAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDKhbrl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDKhbrl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93AAC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747178393;
	bh=mLpvvVYKuQfCWVZWyIgahoRvyGB6chNTDp1maXcP4AI=;
	h=To:Subject:From:Date:From;
	b=fDKhbrl5xkuHOOLIRTKee2G8igUmqcmhiVNmIASNIE3DzhZV96FKXE3jwpqhTG5y1
	 tNH/Ws0img7D5K4nmva1BemwvFT/5eZKo9kKYP+Y69QwaWWozU18pYKQ4CYJzEBH9b
	 QywKRf8Xy1KM+KhsLHq6K7SYW/x0/QUFvuhIxznKSAOJMP6HOJ2CyyTDAyaY7LhrYe
	 seSYtdyf+M30gSJU9YB2IX84ez96tRXEUuSJz6bqxnn1KiwHI7Vniv90xQ3vosFyno
	 ZFNFfKSFER0ALYQx2juwmEITl0hzMSeN4SgZCqTnRXx6P+zCo2eDSLsw58jv1YL0Bi
	 hEt33VobUWWQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AB2C3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174717839357.8625.8726924038145798927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1539099386b791fb73aa9e105ece54e639c45c9401cf15a3c0cdd71335eb1cbf
Date: Tue, 13 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747178393
