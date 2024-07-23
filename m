Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 127AC28E8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 04:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721709954; cv=none; b=uK+uIqEHz6tVIE3J6keIrZQsI1gslgTtChe+6reFxX2yFyb9p+jC90T0mr/YbXqAwLQxFjOYAXDB4rVilJb2lKdZISzT1AryXB1TK2UTPpnoIYbdxStAo66B1icSjfeSjgehlxwPbDyCt+VRPJ0nQhzEWCni3yL5+GqAdQC5FHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721709954; c=relaxed/simple;
	bh=tijlG4G4JRSi/p5QTj4ElNmBmNUR5+tg893mr9ePYyk=;
	h=To:Subject:From:Message-Id:Date; b=TJjHHlZFWLLT/8xaYd57A1Gncy5IDQ7RiU1lctZr4tsGQBEgvt0tTDnT/0baX1dZWS7+NMVtasxP4Cnt8b8XEdKduU8CpNLVOGLh8269OubdpiHYKnvItn4Pj3eGLysrawNAE1WZTpNoNz0XyGyK0hOmse7Ji/EH8TgIBaNU+6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xvg9PQBn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xvg9PQBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6032C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 04:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721709953;
	bh=tijlG4G4JRSi/p5QTj4ElNmBmNUR5+tg893mr9ePYyk=;
	h=To:Subject:From:Date:From;
	b=Xvg9PQBnlR89f4vE9ydStY5o+fuinEEhPbK5BDSLHRDphE4gKP+fM422AoEKfBKPC
	 Rvp2PGesLlR8hcCmOAX5Rd2n+sGWFP1a/LcyFQurbNWftHoHKy25hXMf4Rt2NLoRPE
	 DIrZBzmuofp2Zb43nT6fShApDioW+RUE2ffzuW3M1ej8nFq+ZARD+gh5rPr46evl32
	 ev2+bcEbiTXergp/JFKj/ttJsVkIJaQDHDkSJymvdF8LJjdKn1IREXY+1A1BkMDPAh
	 ZkvUisyU22E5hKRpKiZySz4HgKVeWVQAXYvDr6M204Q2LadGwYJvJLUWNYzwrq4EUm
	 gh9Klv5NRaxng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92267C3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 04:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172170995358.10338.12572728997016055260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d58bc4eed87f1ce86a1e965600aa91ed63c3c657cbd545816924ede12aa86229
Date: Tue, 23 Jul 2024 04:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721709953
