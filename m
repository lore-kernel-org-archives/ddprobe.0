Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7B648986F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785580234; cv=none; b=akx+UNVIXVGt8tbO04z+pVWNe62sIk7py8XWwQH0mHvJP8lT+ijHwf7QniC3ZRCGu9ZdNjMpKg2iBOe+0mLRQb2AA/FAO3DewkGk3+B8oBbzUV+Zbku3Xak4ejeZeXH7W33N2vHmsoBo1CaI2PsZeXvpxlqbKIe5ICOK+P1JjGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785580234; c=relaxed/simple;
	bh=LPWMznujak6dHaN8StLR2xywgSPDVd+7isuWME3Xf9I=;
	h=To:Subject:From:Message-Id:Date; b=geWpUyrH7dx91D19Qwq8xF8SOyTV/YIXT0nA37lnNa8QkIreoHJCw0AQ8T5eqw2BnvcMKfHylKykdsHGBlgfRj/CmNz/Q5rc1An8e0MIigNkU34ULqVv9mnlauBccpuQjjlDgWR45TKH1NEyucY1qvmt5nSSS8X9a2MUoXYtTjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGd/agCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGd/agCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDBD5C2BCF7
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785580233;
	bh=LPWMznujak6dHaN8StLR2xywgSPDVd+7isuWME3Xf9I=;
	h=To:Subject:From:Date:From;
	b=RGd/agCKpYTk3SR/5tC5VILvSzXtH6RdgJE3HP062JTzKIOOCP+OQnminWuosd3w5
	 AJ7k/thqiHlRUd3rMJqPUPLNQAzSSBpSys2SxygJ7msRrRt/XL5TCecuLRKnENM0+h
	 m4dyhnSNw5XFuDpZMTUrek926736QrCd1PapoMDLRKZT81ZFOYYWUgJPoZk31w/dye
	 Hxbu4lLNiHkp9bSA2Lkfcv7GnoR6Ued/GYEw1HHCWkItrKpwuOk5gjBXlx76o2sHdB
	 LTVHSIViltcPUJiiZF6hacPPbWX7IxQCm3sNtcEWo398h9d4U9S23jOTdd+b/JRdOW
	 SGstctodw0KRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA62C55175
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178558023368.31706.11261781657210338746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddbb9323ef3b01b1bbbf6e89982085f7a9a0f2ed817f2bff41d9cf1f8e0a0c06
Date: Sat, 01 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785580233
