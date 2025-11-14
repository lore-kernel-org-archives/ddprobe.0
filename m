Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB87298CC0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763161794; cv=none; b=Ky4I69QV+byYcUnckJx/95+mZtwEVzsd7ns9npZPZ7f2scBTzz036VI78mWjM3amLqTsoWT/wXc2w4N7s731ASFBgnOH2oRxRER4etyStV88QaboI2kVMyF9g4s7B1duYP7UZAycGQkDqQatOuVQ2CVrDRxCGbKYGDEZf2+BJos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763161794; c=relaxed/simple;
	bh=1XJrnQShjp/wWlSlN6yUZYdOTY8AUkU1R2Qbt58lzLQ=;
	h=To:Subject:From:Message-Id:Date; b=e3MRVWCPOOepk/TQ/UGpXQuiZzzkQ9L/LIkC0rhbee9Ah1rCNMZ7twpe5umP8NGk3EKescwY9eeGjFT6cx4j6IZFci1p/wfqZ8HS91BLkBeNMC8A2xq4esTBVb36WFlF1ISLIcxYLFbdv+oxnLhA6RW1XbXBproBoVeV0f3Eb9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ap4M6I5Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ap4M6I5Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F051C113D0
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763161793;
	bh=1XJrnQShjp/wWlSlN6yUZYdOTY8AUkU1R2Qbt58lzLQ=;
	h=To:Subject:From:Date:From;
	b=ap4M6I5QWfTHHgbdkvT8x67JjOds3Cv0aMf449guuJHN3dgYJzHS7DEntYXMabH1O
	 OyxR59uIx6viSdujzDQ4vRHNNKns5Po59Oai+IoHrIyqLz/Yb4SAJz5DnWsEa8MZop
	 DvYVQwxM3+OBlStGiGGVhBjNBal0yrUkcsCtsIaVacn/UPT8t/Az0n2nXQc46q1uet
	 c4j4cHz16s8So912jvxzvJDIQ5zjLv7tFMafEXRuLFjx38aNvf8DN59SIAQ2I/Agsx
	 nK25NrCvrjXVio9mOFnrkhVGZsHz3RoQb6vw1RFD/RekJbvMzhWUCYo5NBpvShxLxk
	 EbPoi+lGjlJjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DBFCEACEF
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176316179358.23950.15429585542576021918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16ba73270a5db6887fa2f1d12eb92fec760a5f0c0f9e6291543882e47254e326
Date: Fri, 14 Nov 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763161793
