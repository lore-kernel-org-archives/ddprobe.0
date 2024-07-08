Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C4313AA51
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 14:06:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720447583; cv=none; b=EZxSvBaKkKufh2HIX+WV104fcROmd9+y8a7omkeazPG8Fi6Tm2bvArGV3N7bgpnUidG32j9X93jd5BPOZNeQ5JPsautr0p88uK9LLGhXlzdNlgJ7BxsateUBtpCrGnJeq0ZQHafKnqWGXjqBG0k9y8o7AX8Nu7mS9/hZ6OgfLxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720447583; c=relaxed/simple;
	bh=qzhfZUBzBp4MdaROZSL2+HzX4jQgnXHytWUqqHlIrJE=;
	h=To:Subject:From:Message-Id:Date; b=SktpeZWKRxv4iAoTgJ6PDsUvoawNMKGLTogwHkfIOn1Tt2GI2Lh8VOjbTtVybuVF9lG5x4bFL0tLQ18fzzrGW0VdOHoi6V7uvfZOPKdRxjiYJMcxxmhXXvsE4aWZlstJm0ON1SaFYr/s/CD8Ws2P5D1uYYRNJ8/bdIw4ey/W38k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8cd2XI9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8cd2XI9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79A7C32786
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 14:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720447582;
	bh=qzhfZUBzBp4MdaROZSL2+HzX4jQgnXHytWUqqHlIrJE=;
	h=To:Subject:From:Date:From;
	b=R8cd2XI9vgdvUbumyEm5jZ8T6qt5XmZHDr+hkS3ZoSU4qzVB7iu7z9Snm4RoAadzX
	 H9OW4yfobP7rtEsKwcOb1xNADKTDSnxYeaS4LL1QpLuIgD1t7M6UBMow1Cv/EvApD9
	 lPgyj5141GGAb0ufJhVMa9frDETnsNNWPd7V9RczserHyUW4SY6d9GG9GN8acpFA06
	 XeezK20TN5EMbP5ERjvMz1GrVQboRAdwW+GIBihZeitQG+Ug+gUEgvjxuCnSdiUtrh
	 SAStsLsnkq1MNMR+bEp2MAynBJsBlVIACZDhslLzlHQe8rLDP4+h8wmZ/GepkUitbQ
	 rcjPUaTGIsNHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF390C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 14:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172044758277.31643.16250533261234529251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b93d243f429dc03c0b36ac434cd6083233a1abe78dfc9870a30bdd45347cad1a
Date: Mon, 08 Jul 2024 14:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720447582
