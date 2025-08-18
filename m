Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F1C146585
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755551394; cv=none; b=rL4AL+LZSAocYWu3Mc3mpae0p3pIGliSIcX9KJe3fo9xNBAuPKBogwnYAsjHfROXY1K0UEc9soGDGtdUPJeZoPW/YKDZDDl1BZsPbQe+SVr7l4wfKQRp3Y0X0F9bcVcvRSvVGSNzfKBBTsx0D0BX8tGrnDihePC84lfoC0Lu85s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755551394; c=relaxed/simple;
	bh=EaLmWPdfSYcEbZaTriF2anCq2TrdBB2gHcUAPHigmpk=;
	h=To:Subject:From:Message-Id:Date; b=nPBlxfgUP4AePQNcjRSc8K1kulH5oMl8oA7EAokFOvREqd9t7JAjYKRl1fBFcvUk//AD2WvzAEWV7nqksg6sciFHLIUjdtOdYrOMko2S/fpwyhrTNE06Wg7O03Iw3AYH50U8YKUTuRXz5o78iuxDFJjTQHEEnmBoL1gzchighYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NGE+pic3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NGE+pic3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B98C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755551393;
	bh=EaLmWPdfSYcEbZaTriF2anCq2TrdBB2gHcUAPHigmpk=;
	h=To:Subject:From:Date:From;
	b=NGE+pic3aVzYfzt2TKTbEjUq9jegVRsIUKIGvNd0ogASv1MhQ4VTxD1j2CGimqLfJ
	 W4f+/0IRJHQNu1U3cufCUM96i2UciSAneRbr6OpmwrMVFr6seklprWuQgYurr3evzo
	 MZ8jEmFfwxy/vBMvqyzBv5TKd+2Y97hsYeuYjvdTZcdK4uq96Ql63qrCxDGjz6mlK5
	 Hwq6YWhHX5AsL7KyMjpYYWRLxRlWrce6n0n09iHfyu6aD2ZPCgjOVeAFNihi/O3tCf
	 jEpOjgt6uCK8vgQOkb2QWv6UFN4ouy236LSdXYXveJwWHVddsofNCAosMdCu+lx+Td
	 GFIELu8WTC4Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F40CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175555139358.10771.1718359924944258881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a01b8df7be09b5fc0f8488e0214aaf258a4c7e0a80937b986e25ae4b4eacd3fb
Date: Mon, 18 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755551393
