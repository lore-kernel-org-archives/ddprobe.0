Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AA61E9B35
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 16:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764087774; cv=none; b=CcdO94WnjhkjltfrXy+ILm+MzZKEyOwZnKvre3i12cpgb3I9dUycKaa89gjywfwtQ7wsYnaxLIr/yM1zrFU2YfBAv8Swgz8tSWZZQj4vd81l40P/C8e6IcCCDxZWPGn0X5kFIwo29IuJMo43qoDvWK8Ud2N01VThbO9/iy57f1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764087774; c=relaxed/simple;
	bh=vrZ6J/q2hkbw+KtMPXncFoOtxEcSCCW2lA+f42oE6/A=;
	h=To:Subject:From:Message-Id:Date; b=WtqFNFc1A1c98M7UQrRMOHqw4z66p6+gwBwRdqCcsnWrEE7ndXzq2IEtEh3IBiLY+5Wb0c5UJzlUjmXMsAynf13Uc/smdPCUTwnyKmntov1d2x/osVxZXXYPcQJsy2hj2Cch/4Jscfn/zPI2UWPcWdnMcMatTOPMyyTshj/Xcbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VDBxPh8O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VDBxPh8O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B3DC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 16:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764087773;
	bh=vrZ6J/q2hkbw+KtMPXncFoOtxEcSCCW2lA+f42oE6/A=;
	h=To:Subject:From:Date:From;
	b=VDBxPh8O8jj+Nc0JRj4GW1ggBWSFBLOAxNxj4vPEuM25PjKd7roxFxlXTQiQW2wli
	 GMIvNaiSYFZPK/Go7Spufh7YaN4wIVjKvfpLzDTOCebFdzwoz5iwIvSouUVTFlPux2
	 6EDofNFMJ6Us9YP+8Gxd86nFrWnmL5grGV8/LoTXrB9ApccPqMJ9jdUkwVugVWqY09
	 aqmkn1DM2PE0Ecs+G4XxlTGhoAGlmzbz+Qm8+UdtAdJu5sB7ysfeLXny79XZDgX+EF
	 antOXR5MRitPdCmwjackSc8MzYbEoIeo5Qw8HaMXzEx3041tQAGHApmdFJDqUl77c1
	 B8cnm9hdDKwUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9044ECFD37C
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 16:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176408777358.4245.4654440061066501547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1a8d9934617c33fe5683959aaea8935afd571599ab427366bfa392789894f65
Date: Tue, 25 Nov 2025 16:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764087773
