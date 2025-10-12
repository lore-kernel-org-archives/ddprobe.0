Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D380725487B
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760263793; cv=none; b=aNXEaLGf6hCGsn83+50ktp3zLqgEHCwt7D+mid/G4pPD8kMDvifagtn6P3lqbabumzYhEPe1AHYmarWf8vZMI3V83HXVMC8iL+Q/A23QXQkF8owsA/46bpyjLCbO31qUaDmmwgnkvNqPsG7czKOMnUBBtmcnDUcyRD6MDlvf+x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760263793; c=relaxed/simple;
	bh=yzR7LtDSIT82nO2ojinfxhVVNrKKOl6as4joUPH0Jq8=;
	h=To:Subject:From:Message-Id:Date; b=CGaYPPhiG+nV0LMe/uU6odoaVpKR7HBpW+Z+8CzNiE404STB2VW+8HcEaAagnkpBXfN8xhZKJnHuSFcyLa9Phigdlyw5/BQus1xf0F5WFp+eLuRLDU0qU1UvheaqNR5+gGdmVO+nAIsGxGn/CVNdWP9YymKCot2SUKgHCvZLCds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ryJwLJHy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ryJwLJHy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F8AC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760263793;
	bh=yzR7LtDSIT82nO2ojinfxhVVNrKKOl6as4joUPH0Jq8=;
	h=To:Subject:From:Date:From;
	b=ryJwLJHydhs0HjXwXajn4Yp8FaI2y4jrp5oeY0xTx0b5aPr2Ip2iKcp8YvRHEo7g0
	 /CXykAzwLzf9TjnlVUTaCQz/qXAgAUSZfkUUdWT+UGckSt4hovOFUmgSdqW9baIrPO
	 3mr9r8y0GRUO0icFJA/qWsR7u5aDcSOMBz/nHF+Co6vuN+1efmf4oZ40+FgZMeQJOF
	 vETLgsgHK0MOVO3erV/Abem6ws2W3aVy12lpBdbs1CBxhQjJjzPyjO4iqDfEyqrt8D
	 YrVwbY3VbdQDM2G/F2rlqSt0z4A/hJeONAyat9KMofBxDvImoYeh/hMS6YagJeVZi9
	 KuUkM/gZ2eWPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923B8CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176026379357.20364.8034616360734786540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b770c3297748e2585737cf5d8d2d1dc73c449ce9e90cba8fc586dcfdeab557
Date: Sun, 12 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760263793
