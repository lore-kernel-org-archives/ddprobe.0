Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D49236113
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 00:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706576297; cv=none; b=qGz4rPPXJ07GKEaM4YcRpnZAvvYRyaGWhhZBMUvtdqOiNqqOyHAU11RNKRGMVUXc5fl3KveOCZkuzD4f/dPCJDCKIWsy/ZA4Sgn8ZDjZYoA7ft8SD6yoe2Ynj0HI8xFmeNiWk7EYX9iyfE2GUzy+Ck80BijQskfpRPbp1mHWt6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706576297; c=relaxed/simple;
	bh=l2NzfCRfek8c3ChzSzTtXtKvYwiFy+zd9wsBjbjU5E0=;
	h=To:Subject:From:Message-Id:Date; b=J8t5lkbVpJkDL6guedGobSqpQ9GNkt1KK1wsvujBy2ghmUZ7iNYm+p18+zqyuP7q6jF7CDBOv6OxFsFRI2yIWh9YpCsSCTsSQEhjzGiFMLHNjg7QdprYpGGzJAiLtXyyvIVJTHC7iM/C+K/kyIeWIlJBsttmmyZz9BMyPFvpS5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uy9v8mAq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uy9v8mAq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 887A0C433C7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 00:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706576296;
	bh=l2NzfCRfek8c3ChzSzTtXtKvYwiFy+zd9wsBjbjU5E0=;
	h=To:Subject:From:Date:From;
	b=Uy9v8mAqvbe8i9toP67ZIEZUZ8yGufZ7/ZocDhAqK9E7z5/bszl37iz1NHDJdQthg
	 QT1+Q5KvB3jIymFPQsm9J4cAIc30sKzyCNdbLG/L3rQeGn9+FZb+3ujZOJ3oD9VMg+
	 h1lTrpaxaIfQSrMleYtROEbVusy12frD12PXZdgnuJJx7SVx0cnmn9KDc1bN1L+cMR
	 8g61dG4eqb4D2fFpQXGEo2P46+xZBbyZzhxWPIg/VJ7dVEFmW3mYOZHbDGvMTTOJFy
	 t10quiD651uFtBC3QU8lV/iEPW5x576kp7/EiOff7C0bEuTTXEvbJc1v9BR9bIm9Ma
	 0kur32PUV/KTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C1E0C47DB3
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 00:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170657629643.14959.1484699277313548803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3a923503b551077c8d1c022bb1766b50367b48ffff907c16db39fd3b233d041
Date: Tue, 30 Jan 2024 00:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706576296
