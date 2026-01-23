Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 155BD2D249E
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 04:13:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769141636; cv=none; b=iS4MNpOvbVv0KXKRnHsQ22rXZ9O4RFRuJ4ovOhxQijLQQxSD0yvmsGKyfZLF2iUS6idruRl95hmrn/NXfHqylOh+dO05XxpgNvICRtp2z9Pk0ZegtpzrxAXRQntplNUPPh+kzpyS0crLyFPT57lHOaiXrcpSvUU6cszioAlloXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769141636; c=relaxed/simple;
	bh=jsVekLNpfxRJcQ0uwiiyUeR9vzzzqklUl5cpaXQSMeY=;
	h=To:Subject:From:Message-Id:Date; b=MkD0lF7PReSkjdc3Gdenkj/zELWkhKd1nqgqg5jd7SNCyvH8ttbnSrkRyDNdo7fbq8Rxk03MJQq34+kwmVJfLCKrfvcW19OrHJMRK+N1zJnB3sdewu1QPTVEIa5coBPfc7gIHzwT5evnLXeaKztijX68lkPj+h/fw8rGAjCmsr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U+BQHZMB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U+BQHZMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A184EC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769141633;
	bh=jsVekLNpfxRJcQ0uwiiyUeR9vzzzqklUl5cpaXQSMeY=;
	h=To:Subject:From:Date:From;
	b=U+BQHZMBS43aP/aE5KQmipVCid8WZ22ln28l65xqfGeRAM010ZQbmHrnSnwKtFRaS
	 4YHWzzNiBDjWwx3LYO+KHZVNJ1tefySGcEGUczRiPEmLs4FI0XtfDeu/2COXbtHlv2
	 fqovkdv7M6xDzRei7FX8nXtXizX5sOkSd3v7fS0jQvEisASomsx47CipbvCyTWZBu6
	 i6F0U1w+EgtXW48IgeCup2jLcxzzpGrovdB9bm90SXBm3eDuaGTuH4ZHNXRUMHWyzr
	 ksoSHrhPFThV3WR+3KaLbZo33dJMl5/QjjMRLeSfIA8jEZYy1ABRmeSMP9e/Vfk4U6
	 YNfG8EzMsU8Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929E7D6CFBB
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176914163359.4642.3575989562856463214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50decf2c00d38d2c624b111f0394ffd1f4becc7d5d670baa1abad781642c4efd
Date: Fri, 23 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769141633
