Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3924E18EAB
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763210394; cv=none; b=MmMf83ZiV2jRglaUVaS9Q+49y3QQUrgancVvP6cy0ttsbNwHGU8qPDbIYFhf8xIcvy3BxFXvXm4hkT5BsNeT5V+S5k0jNFt8xVUQJCIwo3iCCtbY0eQTWNvQtlBM+NJbx+qOcHF0Scct366y8nNBe00O2d89/3OK+JbvrDkerwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763210394; c=relaxed/simple;
	bh=LhUH6zYet2gLjUuhHootOY4ZZa0x/2l1vJaq+BgFniU=;
	h=To:Subject:From:Message-Id:Date; b=KvDleh9r3Fa/7jBiRNQuP/S+2+0QG9eHPmhLB2AQNrEgqRBZEBh6zsaIBaqvkFlOaDXHDIIrDttsDCX0hxZFsVacgt8RPToA1a/YMpjrCfW1/rIcyD/pIe2tpCOmbM4gBxZwgPHJn0aeoHpmbfpoLcEiOBH+bXq6AXa0zU7x0Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YTvaRKyx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YTvaRKyx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD5DC113D0
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763210393;
	bh=LhUH6zYet2gLjUuhHootOY4ZZa0x/2l1vJaq+BgFniU=;
	h=To:Subject:From:Date:From;
	b=YTvaRKyxY/o4G7ec7QS/tAFKfYajCO0JwT2ZdysADkwEC3j17uTjwUz9Dilp1jgp7
	 aOZ8aQqhKo7rrsKAycSZ5Pl1rFnGwEYuyoT5NJu/F5NJA813RCei3L1ZQsRViKyoV+
	 mCjpnSn1tBNWFby5ISFgr0Yody/pRt5u9IX7uW9b/74Rgk2Lmm9g+Tc6yIt089SIgA
	 TraWla7AblGf9+H87ns2PP1W18o67ifDkJ9GsC3r5DG+vHry0r7nneeERpiO9AXGZJ
	 ujvY00+lK7z+WXs8oA04sO1AgmsbM1b5bswzantgfsegndmm4kSKe7i7HFA2K34hE+
	 SVIPo3PAE18ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A2DCEB2D1
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176321039367.10672.16744987055981123298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d72a3b22bfd61821f17e46309c7a2ed83124acee3956e8851beb0a512e3f174
Date: Sat, 15 Nov 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763210393
