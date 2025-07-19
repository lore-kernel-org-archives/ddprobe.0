Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F1221D3E8
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752910794; cv=none; b=Egl9CJFi2Bxn4j7F1yr98Swrb0SEr1xkFFaHiMOOsUuJD/v2k0lgIjaHIYp4KBClDiWSZAN3SK8WNz9pJ9Si/Gp+vTK0QODEiqhvAU2V/dAjUjJP1GJMQzji8brKhZQK1sG2hJuW5uh1x0l+jhWRp/8PbvAoiai6xQ9apI2BjrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752910794; c=relaxed/simple;
	bh=5R2iOYKKEb+Pv2m1T0TsP7ZbJ1jEPrJDNX2u/nkWKSI=;
	h=To:Subject:From:Message-Id:Date; b=QsH3bPwxJFLSzOStgo3a8LEr0Er3d+kFGlIH4zQ2m6vbEarJQScWj1/u5DLHoiuorUZcjgJR2BLif3xtS1fnxwzoWwUc2UPY1L3H0rItc64PQI2tsuLP6kbIBW/ZW6RnogQ9Tswd2I77OEmueh8aGMNm062uIj5PgwsNoW9yi2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PHLdEoGo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PHLdEoGo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8AF9C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752910793;
	bh=5R2iOYKKEb+Pv2m1T0TsP7ZbJ1jEPrJDNX2u/nkWKSI=;
	h=To:Subject:From:Date:From;
	b=PHLdEoGooVuAhVPxZPr7HoAQJktCGlrg28cF83UZm4T53WluUPHMsz9b5JVLjWJ70
	 aJvnoR07ll/hb1aBkJ3BjvMHQTqEz0jdpF4ksHbCmJsfyJSAuqPuaJiR0TyxcLFvNa
	 oNQAyHGQ/LQFzNjBZDbs0XNi/HpuI+243WPcYjHYRS+yptuK2l89fGj/CsyDUZBPEy
	 ihD1N2OxyjIEbN6kepseZPXNHSccdX/6hu0MPsGW53zonxiGYUBj2cWbiKd1q2YxIc
	 Nwbg0JuhReom+ITqauZT+JTnG+s572aZRJVhuwx149T71rS3aAuW2lv3wlM9t7j7aF
	 eBlokZFJDou8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A9CC83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175291079358.11507.552988489170662256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21eac01238b93d21f77364320cb679797fc04ac3157c80807799d777eb531a40
Date: Sat, 19 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752910793
