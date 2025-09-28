Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE2A259CA4
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759086594; cv=none; b=Kn3i/rDuLd8zkUckrVNwoCDBqm87ZRfGdMjlCewsUYVJIW1L3pqj7XigsBfnaTDLASTFIdJa39Lu1anyrlWnQ1kDKV7Ma0xCi6gTpSl0RwxQxWhzMgnAkpaOFLgX0o+hf67XMoCPXcrGMorQTOkrlCN+HWonSB7HJYa55jghfaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759086594; c=relaxed/simple;
	bh=ez98hguHJBiP0Yqokx9NFVFakCvtFHdVAJBHaZYR/wE=;
	h=To:Subject:From:Message-Id:Date; b=EYzVpAiHfIx0KSddSQY2tncilVkwFso4d9Np56Wb57O/YJp/xP35gB2h9JsQtQt1zNWUu+tnIMOmxb4dL6Y+7WWCprA/AdcDbsadpRScyAJ0PZ4uYUxS3/TtEISKb40BWlKrgCbbPBubDu98V4LV5cCsPOwdytH6+g2v62C0Gps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oImcpR5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oImcpR5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC87C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759086593;
	bh=ez98hguHJBiP0Yqokx9NFVFakCvtFHdVAJBHaZYR/wE=;
	h=To:Subject:From:Date:From;
	b=oImcpR5f5PNz33+NkWDkIm7fMNjmMX4Uy+WYyS4qhTCdMWWJoxHhTL0x3XDvBHy9d
	 xxPnBy5S0pfxJ6rv0ao9msz5iGm85tCar2FrfBaqHzWrwyOfqDvNfVA0CoJpx2N01C
	 VHp1bpALt5ZzD1I8whUXyAzOi7kz39P3U1pG1VqhzNpxHbo+6bvmUmUtpnDRLemQV9
	 H41sc+72izpSkVgH2sBf4mT4QqRcEcu77DCs+lIrUVKD0PD1Jiyt7lU1al1CEmMxsb
	 c9mjyVaSj5MWR0BS+0/A+Jiv0GEjfQrMrKIORX5dHOJWac45rB5zBwRlLSp02j8psW
	 Z3LZFbWEKh08w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95296CAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175908659358.8816.7917735617416900547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66e36ead77d89c63096acfc6e48b50870066cd1300c1d2dae6e467fe066d2184
Date: Sun, 28 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759086593
