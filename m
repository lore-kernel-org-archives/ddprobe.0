Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414061E8337
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755432594; cv=none; b=Z18SEopAyEIHN22EwM19biFvXvKaSSd0a8rrrZHRdu4eZYgfrEJfxj7RhBra5qThBVraTuld85PNuOVPSikqFEbDDm93R8iporTEIkw6DF1jFpcgezgul4X6UDavUz4cdhuPt9nTqLWMAzkjesn0eHPzRpJxoB/yZbbuR6nMAzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755432594; c=relaxed/simple;
	bh=33mzvsbpCJcyCKnwMrJnO2EemEj5ZWSPqpGfm/2ek5w=;
	h=To:Subject:From:Message-Id:Date; b=cBrbp3QOX6t7wLIwVelI8QfzF9HVS5/6cJHHIpAG79xcgO2m7V0O/DL3Gdmt2z/Tr0S3UANDi6sR8RuNu6HjGFbgCuOEq7KcFMTEC0G/NMLp0a6W0byBr8dbAPYZnrXOLGziYCYoqPF8qlX5j5mSxxhkyKWcvj3LSAi+JfX0Qx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LM/F9XQd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LM/F9XQd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76ADC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755432593;
	bh=33mzvsbpCJcyCKnwMrJnO2EemEj5ZWSPqpGfm/2ek5w=;
	h=To:Subject:From:Date:From;
	b=LM/F9XQdWEdb32uuWgT861otmiAY68ZIAVBK+hwefZx4UGpgKUN2H21SGYjOTciDm
	 x+zhljMfCPzAWTI+dM7dGB6Nin3gHigCOAlwLq8K0iS9B+/1NQ1iphd+V8aOiv3q5v
	 RDLcTBgNYg3EeRMuz2PJl25ia8NtaYjpIvLWQbAvYPHpH3NkTG5cyuck2pjMUSFuuP
	 oje0qXhYJdJbkolsViU8w1NW7d6R7xTfwp8ptK8phqPFZJinUgdqMOkkrOQiCEKECY
	 omlfiJKuiVYBtnNvrs5MGrvdXvsAACtoYqBqmN0iqCRbJK4R9N5Gm4mcqiWaukb72T
	 0dKpN5BJtMvuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953E7CA0EDC
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175543259357.30374.385110236284672322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e46fdec37eb02b113006103d022ddfdc215e304b6181baa390982cbe47694eda
Date: Sun, 17 Aug 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755432593
