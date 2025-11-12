Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B3F127A12B
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762940994; cv=none; b=EvVTQ5V+1KUjX0xdtAnGruU5pkIoI2cRUp9TUyaKWH3PCVuUaU4lYBTm2bHT0sEf8l3ThJgFV2RohcRFJRSO12AB6WVV4LpTDq1Y2ERE/vS7LDOsBPq07n41bvFzH8hQsws6vnm0w46Ge1xFG/v6clVIrboMt07QWbBiHNAHzyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762940994; c=relaxed/simple;
	bh=6i2X5VeR9qvAwcAM+a2Cafebucjr15WUji0RChc5R7M=;
	h=To:Subject:From:Message-Id:Date; b=ZsH2ZNTCgLVOVrdE54Hj0FwPPnvaTGSilsEh6dhYxrq5G5QAI5FYuIXt6lve3McFharTWaQjiB11dXZtuRfniGFtxgwO0dFFsPPDBdJ7ngulI4kkDXwbVIEwxqvF9DHg6/XMR6Ul+xJBYe/XXSLUFa6UbkgkuUgWq60bFYYbEAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBrJgH6j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBrJgH6j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCEDC4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762940993;
	bh=6i2X5VeR9qvAwcAM+a2Cafebucjr15WUji0RChc5R7M=;
	h=To:Subject:From:Date:From;
	b=VBrJgH6jCfhzbAFnQI1JcU7p78N9kvE7HdaN3OHuYQZMfby6+zJ2Dtq0IDav1r570
	 NEIqzBVOhXP+yiFBXiRMfRPMftTHwyeZKLfUJNIa2XwmkIvKgKp6IazAswY+sWpec6
	 7K0xfwVA+YGdhEEOEU1ErJ6IKo4QduceARLLiWpUM0Umy+ieFPW0rfP/u6Mfzy7YtD
	 8nv0XBfX09lBRfZ34IqJruxEUvvFPkP8WxlmZALEuRmcTKZfIufaQag/3BoUlIUMr7
	 VZZoWr/v5sgYjB/UEikyB4yTVNGTzt6oPmOvszlCYs3Cxl9ETTiir+aa2e6E1Ca/BU
	 0YSEsNR7U7SGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9047ECCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176294099358.21608.1500379808344366593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09fbc4c1f28b7c3d449b773d2ed9420ecea987adbe7e2b32ac7090115ec6d348
Date: Wed, 12 Nov 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762940993
