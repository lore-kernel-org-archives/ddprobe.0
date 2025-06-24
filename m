Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23823256C8D
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750804194; cv=none; b=lKiGbY0s+Ae2CLnVgOCWIGs62NI/IITFa3Qw4rn+2xj2c+tV6lVFJc0l8vBNw67rQUbyr3qXSohLYyUtjaojE0fv1qhNx/bb8H3nLRky3N6yp/S5QMjc/InFPARi7HFUCDCzgA/xcq36jujts3AEu9eOuvhb0Ccdnfp0dRbabaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750804194; c=relaxed/simple;
	bh=Z7DpYL/5T6vp3ei/LbZB3U9LPLR7WVVVF3MyhoaVbSg=;
	h=To:Subject:From:Message-Id:Date; b=q/i/bLmgoDnwZLV4pkQ2jYrwBt2jF2rdFGnW1gJGAfLHrs4vUc3icnMEj/pPzqgVJoOHi3a6EhaVl8PDkR7IdkSCiuPP3MMeUihViUHbbNKFx9Nf5/MU1Pke9h5cXX3aNS23SvoiMPk1Fs7o9yW4fepa1Muwy7gW/TEFU+fKvjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHPch6PQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHPch6PQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2BF2C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750804193;
	bh=Z7DpYL/5T6vp3ei/LbZB3U9LPLR7WVVVF3MyhoaVbSg=;
	h=To:Subject:From:Date:From;
	b=JHPch6PQFjZwECl5s6exqT/0mCnTFU68dmW4qm1xD8caSzAaKKQ8GSEeeoMjHAlKg
	 TjwG4vYHigw1XDPyhZ07C9l07diMydzXcozy+6CDKSnTFzOMHvXmHjEv6XkTwttPtc
	 1AwSwdzg2fbJ0sVLyyYgdVxmBBTDvGZQpqrehK5a77/iireuuQPCwhJUN/jSt2BJic
	 /UtfpbPh1yA6If2VCxSV+8NTFs8x5dELMvzdPDMI3E+Bytk8c0184eCdA/qc8Bu4vJ
	 GqbqhHLnoZdiZqHnNGnLjz8srPmHZbcB+ukQhp37P+TDRBWlewYwTlAbHpXG58PbkP
	 2y72FlMnJ2JKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946F9C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175080419357.21290.505733480109577605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 066ea373397f04a26a59e900f6edabe0186f67d2933787d4fa7d50e2b818b050
Date: Tue, 24 Jun 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750804193
