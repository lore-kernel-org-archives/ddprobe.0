Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CCF13D53C
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767408234; cv=none; b=DNiHtoWsDd+Atc0/YayM+4msHsuqrn8+cMeOfDmHCFHAlbhkebYfXbxEd6A4nO/VcNjQAXq34N3TQ5Kl5Z8Qm2XSC2TE8T1aD3Mx9eb754TaYzoZ8nn/tkjrE/TVbCwtNgRydVznZfMJLPLsv6s5GVlQCVHCxK553d94waOVH0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767408234; c=relaxed/simple;
	bh=HfFjSRCttOTVcg6BPk7JZypM7c6K7O5s/T5jj5nQ00s=;
	h=To:Subject:From:Message-Id:Date; b=riIA7qGxx//YEKaKKqlTDVlBvByO5F2yVYzXrQXfc9JzWEjDBu3sh7E0ffwEWwzEiS+ezn5vhJszUr18Y5A9ZiPsP/yXofLAOvcQKmqtmss4NIi5KfXIrrbHb1HahwJM/P2WUgb5/TXPu7VI4Z/Apt7aHPQV+PvJ9WGATfizi+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUfzKg8w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUfzKg8w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C8EC116D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767408233;
	bh=HfFjSRCttOTVcg6BPk7JZypM7c6K7O5s/T5jj5nQ00s=;
	h=To:Subject:From:Date:From;
	b=nUfzKg8wVEjnhVYk5Cs4qOR1mHYacTbZxvAbXFsvZB71tNTWkO2dI1OhcERYXzHD+
	 CTklXJ0iHCuCGn1zfgs1xO2KZF99X+j2iFBcnj+4b53eQTrmWCel1PwQPDiYm3d1Ju
	 K7zCn9D7C1lC1xABXlQok2U9K7Msgl6BzOdIx2+6I0C9PwXhV4tls7W6CtBc235FQY
	 JHsQG+sIAuXE9Jr9wAp9DAZgnmrnuiu+YQus2Q2lzJoXkw9dTK1fhiVmdA+oRQIctX
	 74BdFAuSan3O50W16BHZoGkHN64CKb64wIJZ1Ki4Jg5cUUGlTT4nsolz0NsN+rDq94
	 izTVJ2X3T1fzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D2CFA3727
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176740823358.30505.17120073311384318731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecd4f15d07a42f2c20a2f3a00ab24a0933b27630e26a28e2133b1a2e90da1fac
Date: Sat, 03 Jan 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767408233
