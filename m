Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C59EC1D516C
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761029393; cv=none; b=nKdNmnU6spvFrUxKCKK+ribAyhKgEsGbRF46j2YyvUUZi6LYXGlFKrMjer73cnUuuF7ReLruAWu4CDa2tInlw67zXvryVO0xKRh/JlwRwgrqmZI+ggMJ19p7QyEhT9CsgVeqjtWf2lv23riUFt+TkG1lcmGnP6fkKY0LdUhTdA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761029393; c=relaxed/simple;
	bh=Nrv+qLCuJlH1ynlMApMokJrQc2R1d36RIhHfQ2bsJNU=;
	h=To:Subject:From:Message-Id:Date; b=MwRyaCiEcxZZwpqW5G+2/6uhR+F1/Gb8swAS+nSTM+Yd7OyqWGUhJPR0kbLW4GtdX1/zewXEBUH6f0ryE0l39D354rpVvTg0enZtgNncdldFFiav7KW12TT9t7d2s1Kz1106HQBpj3uvSBTVcIlrJtM1tWpaPBvDfcQPYm/BtGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IfBA17Zj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IfBA17Zj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E900C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761029393;
	bh=Nrv+qLCuJlH1ynlMApMokJrQc2R1d36RIhHfQ2bsJNU=;
	h=To:Subject:From:Date:From;
	b=IfBA17ZjHnEjuEJosB1s9EtFSkpC9TVXBiq/2PiHjbebA2pLKH2JTDMJmbP7zT+oy
	 eim0vjwxy6RNB94oQz2ci4eb+zfZeIBKoTA5rglxSDB5zmyGGcAOTEi8YAKkvBWUud
	 X4Oc7sX/yHq/g6LRJiyYRk8WshZNW7mhstVl5PVIKSICef4hL96gs4BZLa8pJeDGoG
	 Mj03f8+QLDhlewxiv4d0I1lJUq/NCHr7MFtO7EuroJAbr1NT6H06UOEDHYw4ljqE13
	 XdXk28RSR9f6J5GECJZZrhjy96jZhs3PWinPipbGNPpEh9AS9VYm523BvFqH48IWEq
	 ut5JWa/3PTv6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9047BCCD1A7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176102939358.11977.7766629403704629135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97493e674915ddb04b24bd4da7c036a0fb516d6f3af350cf558528471e73ddf9
Date: Tue, 21 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761029393
