Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313AA327BFB
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 21:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779400354; cv=none; b=QjV9ojhlrkUaPDkMfIOATxG8Cs8UsKk2t2RksZ6B21FZdg+kLPoR7mwhQlensMmrnZ1UMrpO26hq3ChgCLukkJiR8wtgWKRTtbjaOslkeg/ukOLfXfklYwybqZz26plYQU8KPtBICXiXTDt6Z1NPMz3fctVN41TLX2WGxEzyCww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779400354; c=relaxed/simple;
	bh=/mln4fLfWSYBjloxlp93Z3GM4hmVDWG0U1cd9rRMIYQ=;
	h=To:Subject:From:Message-Id:Date; b=XL9AG0KBSNi3tGUrHM5n0Cb2+n0xcUUpzHgjTIkybrv1bBuYZlJqd+Adi4M3E8/QqIcGtBoFgeQeCWFD6WzDoZXZ3iNSUpN03aw2syRQZBDPArxeYjhH5brUPs07jyxGRJ/cRQIasaIqFtmSjPXZ/E1PKZ8u9mQE7udOEP0qpOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYnto9rC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYnto9rC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1823C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 21:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779400353;
	bh=/mln4fLfWSYBjloxlp93Z3GM4hmVDWG0U1cd9rRMIYQ=;
	h=To:Subject:From:Date:From;
	b=RYnto9rCbJrDW/6xySqVI+04chTRIlWjK78QlYIswXIHd4yzQk/IVuDxtWvWMhp0D
	 UkS7EatOfk/j4aeQ5u1Kqrb91ATSD1ww00GzksYv4Njio0dbUY4dZT0YJ11mJQlTcd
	 0vuD6lKY6wNySMb/+cBfN2lcRgsF4RhWX1dtIX/9QHTXlIyKNfUg+WXqdhOcbxDdPx
	 Yf3P1h6Jn1XWsGj9DTudTe9ueLLIE72gwJFs/jZ5gixj2eKTfaSPWv5G9R4KSkdMi8
	 M8YpQrZeDOi1/oANvtqQtTKIzJTzO0zCOGzvf++kDPBd+56ruH4GA3ujhWhmUJbFqK
	 PO8cUXlywph5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A943ACD5BAB
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 21:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177940035368.8007.3577549859201900830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06f3602c12f19c96225243e8b30ae20f6a47fd29243641e5c61fdb4731c93643
Date: Thu, 21 May 2026 21:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779400353
