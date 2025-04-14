Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E827E265CBF
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744629594; cv=none; b=DaLmhN50Box2u8l9Cj0WmUN1582vQ0dVOxVhQmsEw41FGltRsxkyyFvqvl2d6q5JoP364GeXgdm0B3HhviD0V6MiPm66HHbWy1otWyL8hjvQC1RdW6omW/GDcrh+KeHyPZC4J+OZCFet2V4E8xqWT9X7eQswK8IVfRCSzP8vlN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744629594; c=relaxed/simple;
	bh=3KpSzPppBMrQtOyBh+oJisP28UeiX65C7ah+SQ1L8XE=;
	h=To:Subject:From:Message-Id:Date; b=Km/u1X5N2nuCyHTCvGdvN83s4Qx14jQjFlM3J8wNIr5ct9LkmV3zRKVa5dCBOQrHFSa4hKBIMDC3KPmTc5UirOAa9eGMq8aGcZTMRAv/wEkcoEJj7MpmhIpWg5ewFSoCd909Ffp6WPZpBa8D8hREF7kR2xWgixMoy28QdkysUHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nuy7ElLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nuy7ElLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC471C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744629593;
	bh=3KpSzPppBMrQtOyBh+oJisP28UeiX65C7ah+SQ1L8XE=;
	h=To:Subject:From:Date:From;
	b=Nuy7ElLGxz3n5O2Tda+kLr/H9osB1VhRbUtfoP6Lia7epvz36VNxsJZpcILeT5ggY
	 lrL8nL+oMgCzyx1aIpo9BNpNrkYYveXKMcTlDjr0mkNLF6VYFZ86QysAQylUsdkmK3
	 3p3tBCGuHMXODj1+xI6Nc+1rFz3MidT0NH08EFU5mBB3h9YtFK7Le1KI95U37PbH8I
	 zi1Qk/YaM1Yila+feho5+PggHOWasTfhHuA9/eph1aCt8Ikoe5kr/eRtFAMurH9Mua
	 CbMQLr38yTTeA9/0AmCwQf0/MXAEGjV2ROq6XadjVm05yuofEW/G2MgLGT4hgELQc0
	 qwKLfFsio4UDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984A1C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174462959361.16453.8064115074462258325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc3584db38d5ba652a090347009c97a08cba81fcf045d4ba623be846eec90f8e
Date: Mon, 14 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744629593
