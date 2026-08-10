Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59FDD14F70
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786323034; cv=none; b=tnuipHL+QVKkTS9pU2JT89uyVi59EqAxnYBJr9RaYZJGZO+Hcq8nuyNOKXUnM8Ty68UEUr1u9i8BAchHukgheMurkWgYmWlqEcUHbzF2U/qemzvKBPanlVrcAjUQXGIcIPX2bujWybwW49hjaj+t3mF5UK4Cc+b5dIF/vvphAak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786323034; c=relaxed/simple;
	bh=wClyMBl8W59wOeYnjDqHKS7xFKGoJbRJ/dPxGYDZRoE=;
	h=To:Subject:From:Message-Id:Date; b=bx23kB6w976Ky2cIKZQwK5OgXs0JBNO/sY0D6stN2tpfaTVZ3bva8KSfKAnxEjOuj3ODtRpl+l5/Eb2Iqu/ssvBdvskGj1Xa4CI5CYPGvd4Z+CH0JucVpKwdAjdv4hL9R//CV4f2pZi44GTz1pZr4AK4WoL/YPUfVk/P6NQRcJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JyVptY7Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JyVptY7Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57EAC2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786323033;
	bh=wClyMBl8W59wOeYnjDqHKS7xFKGoJbRJ/dPxGYDZRoE=;
	h=To:Subject:From:Date:From;
	b=JyVptY7ZPEnNb3HbIcNtySUiTBPahpCGlt/i/wpt6USAPDCEXqJXEuWndfOvEH4Jq
	 7nfkKv3+xRKVA6offYUU79lwE5oOHO3vng3Jo75WaRDfxlHGVLNYEPSCT/QiT/+TBQ
	 SFPQ+d1ltnOsCnuCil9Q9ZhM7R3l5bB6HjKXlzNecvMGDnQmlYDo1ugAVgRB5Dap8l
	 4OPsds+ht533+OxZWGCzYx+9HwhtqU0mE7ys8GI3zUSXq/ut2KSnRC6e1/SeU0YtdE
	 o34hGGYE14a/sPe8tOvZeyVJsdN05LPV5uFWE/uuTNNMg5k4M9rtUkP2eJ9JyT0mPd
	 7EsFQmha0h02w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A98C5AD4E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178632303369.4423.9332235241737742182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20064d980a6013876d62518eda50a0be947525305ed26269c5b29b316d868090
Date: Mon, 10 Aug 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786323033
