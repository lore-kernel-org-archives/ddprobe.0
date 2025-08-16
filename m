Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218EC13C3F6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755359396; cv=none; b=dyKH4BROcS1nAxs8uPX5KSiGMUrc+cuaPKM7PQ0PuKnA9k5qgMsLHfznrij81I+tT3htR8EFxlOnC+51XoQHNXaUnb7qPd9tsQr6Z00Lviao83keDWl5aQUaYmaNRnZ/nIl6DcXfV4+jv9q1YSv3nxUl0bUMh4HR5670jeUlXzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755359396; c=relaxed/simple;
	bh=s5bfipn9UGZgTOtpqO4+7Js0EQGDtR5QvcTAwGnkALM=;
	h=To:Subject:From:Message-Id:Date; b=MEumbQ+qtvL3vIGH35XErUu0Wg7y69Yl02pMvAqq1kSrxOnkCnYGIRLVd720YkRR3o0lbuOHCKSY4OnT+t2gqo2PDBS7VoP4aRQrdv9do5tNIkgLtIDBH2oXaIXus6CIpzN2SoZpqGtlMOXItGHfi8zH3Refn+ik+rwkCuiCtFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3dm0glD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3dm0glD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8448C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755359393;
	bh=s5bfipn9UGZgTOtpqO4+7Js0EQGDtR5QvcTAwGnkALM=;
	h=To:Subject:From:Date:From;
	b=V3dm0glD4ycqlHpvbbkweoqHEJSRw+/08zacRrJHthdYRVIDA+zhKNYvT9fp/1Q+K
	 pAMo1YUt5sWYbb0/6lJNmlhinghfciO5En3Z7RFyTCGVBoT8dIUBaUYbjIfKHck7Pe
	 ZoH1QTU3Ujdd5w+rxrePE6cNI/+35P5Et4mRqycaRQAsGbrkSs5gf3clG2R5X+GuGe
	 ltSONKvoyqRrtUk6qa6OXYuMcmYbjE1x+2gg9WgbFb3oW0ugglo0+x1tqjCyJc8A1B
	 owHkfvAOfZhdCQE20lXlPGZhiGqHKwNO2qglCeLMKbliKZqyA4+BpP4KAqtWP9B3c3
	 KD2kWZLX4eIxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95375CA0EE6
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175535939357.25770.577054892120744189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c967febca24303275af21f85a2c259a3264e4ea0bae7df56f159c5d51d2a1263
Date: Sat, 16 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755359393
