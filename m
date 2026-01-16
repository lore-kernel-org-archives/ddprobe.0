Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9753C17
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768550034; cv=none; b=lm+6ao6Y5Fy0EyQKq2PeY0zDiiPK7uToKudQNvy+YOTndhORsw6Rc9WJ1NxIOvQLjC/JZc2N8UufwQGgzRfAZ4ggJelvzH27I1LZltXqtkSwloz8hKmab9qiRpjIPceyiCA7iZR5zqI5yY4G1FqinlgU8CAfjfcuCv7fhTOJtnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768550034; c=relaxed/simple;
	bh=glLgspW7IC+AtVCYkIH3y2/i5ojkhEekemiPVjaZ4o0=;
	h=To:Subject:From:Message-Id:Date; b=RNkOynmEZplRKGRzM+j6UGApaaxiQJdjEQw5JLtduAu8IUP4QYhVI/7PoTtvXAlUtnBm3u4fZmPslUGPRU3T9mmGlNYg6kFvhjv7n75L4efAvRFfrtSVZWAyHHCOc8/PMl2PsVRNR8C3pbCau3C1XpAT+9rU0KG3twce6yu0U8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qN7exXTI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qN7exXTI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3805C19423
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768550033;
	bh=glLgspW7IC+AtVCYkIH3y2/i5ojkhEekemiPVjaZ4o0=;
	h=To:Subject:From:Date:From;
	b=qN7exXTIZRcY6auwtcAy0kJkaD9/cKfop4LAC8mvVabUsxvcMZ7GZVW+5j/ulr2ZU
	 brObYantBCWrAGzbMDDKK/YGpDNfvszznWFTb48nZzon0LnKtJEyfGGN7lptU+GYRu
	 wxzFToAKTUKkdZObCxxZ5lmPVaIcK6s85O22nTeCfCVh5dx6mGNft1+PJHRWo8piFM
	 EDsq51nH3uRIcXaj8oxzCPSsrgS3mSW2M+4bLNBz+vnUvDvVvg9utHF1YtyE1wmGFl
	 K3xyFGzFH9lhBr224mPTxj6CAqDPtQc2jSAK60GpnTvvsISQ7KGBn6HqqNCpxz5ybc
	 3yvr5sPD2O83A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9110BD4A60A
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176855003357.31434.5488601972876875923.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b58d38487d69b0300003ce635ad5bdc9cec8801463a915553ee561619b04df42
Date: Fri, 16 Jan 2026 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768550033
