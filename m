Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3254822D7A9
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772364894; cv=none; b=GFzZyF3DKh0OpEICMGRLPRFHVlhBokF+ef2S2+6fQ/MvSoZ0lxS+ngdGR+iaGNwGNwT/NQEzbh06QshEPGvnCD/3EqB+L0tA0r95XfLvIs/tEGwXtyP13Hu6SNJuqqFSuJS/M/9Oxn36cK1uH5t3aByXgcanD7fxCOVEAuRzF1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772364894; c=relaxed/simple;
	bh=tKpKLsfaHvbLixKqse2prKw8/JFO32i78xtIDM9rTLM=;
	h=To:Subject:From:Message-Id:Date; b=l1ZPcyWBaKCL2ag0cKclLHEAWbKYEMsczJVhNnRuNn5TGvaqbdKTNfCdwhj9JpVHo2r4mzZWToMF+8LzUR7lJe0umU3u4BgyUyuxx17tYkqcjaZmiO+TX0UJIzkoTZqwfGcXBUqBt6dZbSKfBZD0ikWJtYzersbAjvV2u2aJ/ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8AKRPsS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8AKRPsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B276DC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772364893;
	bh=tKpKLsfaHvbLixKqse2prKw8/JFO32i78xtIDM9rTLM=;
	h=To:Subject:From:Date:From;
	b=Q8AKRPsSQ/ZzVa2IPz3arNC9dUwH7Qinb9bAyH+LOk4ziKseSy/euGSnFiEQIjBxb
	 tmCwgGhJb3YSjNCJiOnNK8AE/wQvkzkQO1Ul3bKrQiiyo0tZYQJep3Fy4FhVNcZSxI
	 uW8wUkUopSQOfiiXyvEctO6DAgOhrL8mwj7Ey9SHsP04JTsRsaAFgKqeLN1RU+Ydwf
	 1YZuxeI62c4M5k7Jzeu0teRuhWYeuzM588dVe4bFUP5X2bxldWH7UCYuzW661Noz9J
	 rhLk/rP456jyWBgZ+/tAycauKDt4NNy4f3BHyuYA4LIkYrCtp+TvNHF+WbaCMNemrZ
	 EX4q+vVDAFutg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DC8FD0061
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177236489359.15500.18084614947856484547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74afcf16ef1679b71494465a7ee6e3748ca324ba094ce4c686184e897ea34899
Date: Sun, 01 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772364893
