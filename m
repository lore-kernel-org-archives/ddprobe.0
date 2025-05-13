Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBDF188596
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747109394; cv=none; b=Iu9MYp/YWwN21jGD9eNgczyzJam2MZslZRxMdpT1VoojaWJHX1NK8HfWEfE01+SycqsiqwUVs4/fZAu5KGdg7lCUzEGJHqtiJVjSpd4AUSM/tfETkQiexj9hEvbTFhaL1cNsfke0IBQIf6ccyiuTJ5S0rmkfzASiQ+GjNyRc3T8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747109394; c=relaxed/simple;
	bh=8o3JfdYPT74HBp3IeWiZP5TcDk9K9Lr/xTgkTIvhfEE=;
	h=To:Subject:From:Message-Id:Date; b=Ou1H8tCxJgD43OZAdQqcXhhFVBEfVjrMbfFN3ji1BeS1MNFIKgetTjLd2j8Y8QfOybaxXyhhnxgjle07YDlPBM5XcTSoRy66mnvKBXPU4xNvj6+ifHYPgcZb5MEULDByL27HL2A4gnMq/RjFA0qcEQE/C1gul2LM3C88OlKZ+hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VwuVQKB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VwuVQKB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF22C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747109393;
	bh=8o3JfdYPT74HBp3IeWiZP5TcDk9K9Lr/xTgkTIvhfEE=;
	h=To:Subject:From:Date:From;
	b=VwuVQKB1ijWlLqJtxrC/bZWBrwqJiOmHqm3Sv4V5ulphG2ApUQegD3XdPBmPMigOr
	 ZPaLdsud6CY9if4fiL8xm/Wc6u83C2mPKd+BTDIlIucW48LK+x0pKfOEbRJdRUyDSQ
	 +sMHSHnnqQnINs2xmhoTqjY4vKnTRQG+7z6Sckyq5LejY7wkvN82zdGhXVrqcke/ov
	 HeIGaYfUxlu6a4vaq3Fj3aIlN6cwxLXA1dUL+/QnuXSuL+r15VRosvPkkl2Bv9m7Ym
	 38nharqDb6cAOXZ8N9GH6RQIWY+TkzaVUwY0Pa9l+WlyBtVNB0ANUlalajptiYVUXk
	 ZOdguqTcmoyiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0C0C3ABC9
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174710939357.10634.1912923758678854044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5034ce0fa03624f2439b0340570e9088eae1f996a8a91b5f57f18db35fff7ca1
Date: Tue, 13 May 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747109393
