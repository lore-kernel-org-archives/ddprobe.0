Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6624F19A2A3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785383434; cv=none; b=AMxh+MooptSV7WoPHmZUhuFejq5wZaWphxY9urHTZR1NYTQAwlPPFuoQ2dQGVlTxWt20V8DdPMabGhwjQoeidg1aWbXQxv+2ietFGsa/eJ8T4pVVsStPpGfjPJ2ChxfpAhyXvIDF5mEyhVl39CFRtxRXsYgsDTjGEoGUUDHA0lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785383434; c=relaxed/simple;
	bh=MsVA/7BzFAHIwixBgU374KnaQIHWeiDh8sgeQ1LA2oQ=;
	h=To:Subject:From:Message-Id:Date; b=ux7+POEL3jedd18DwDTL+R4RBUZzzqCk2u08RoZ+uyzzv8wb8ckKJ94rvx0S8mt7V7YsEose8ajm/QVAM4UaM6fMrk4piWQgzv2K2f/QQUn3Hvy9jlhwlFlKlVXnzjbF36dSWnLF6M0nlxIkx08OUcNioVlmK1BdLE6lv8aLPBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YE2iYJJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YE2iYJJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E45B0C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785383433;
	bh=MsVA/7BzFAHIwixBgU374KnaQIHWeiDh8sgeQ1LA2oQ=;
	h=To:Subject:From:Date:From;
	b=YE2iYJJKrGUyqjtCrNod9vvF15qlY7M5oDbe+AOC9yCA0lbrmjUyiqAMqwvvieUYZ
	 YK0QdQFoTW4KlOD7JcgRiEE5+WqGXjnolykjKJND3fLV+INV2YnuixvakWS/m7AFBR
	 t9EAZs1a6Y401sNwbxP/9LmyV6zqLbAHXKnCSQA9dWI5DhYL3u2Pk9J8JQfBtYTG/k
	 A5UCR1s2dxLQZfN9M6U/6AL3avviIoKl5viZctzM+fYe1HAZlceEhwgJp1paq5g3YV
	 ukY2BsQ3aaqmWx+55lvYRbnm/fLROKG2Ejr+xFn1Hncj+D1KyKCe11O0hWWrIhnanA
	 bJvXBwcYC5q7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD71FC531D0
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178538343376.14641.1737957425696182892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d978c23bbc750f60b920e5d87283a3e1ac24ec1642dbab26c4083f2775f9fc4
Date: Thu, 30 Jul 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785383433
