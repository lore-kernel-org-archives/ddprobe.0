Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295271E503C
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747208994; cv=none; b=k+MCzBHJ/FHkGzgp2AzzcJcOCOWlSNuTXbWkR9BjeuLWlU02iSikt1qvwo7+kupknNfygpqiCf0frJQsPOtTSfELJtXPbcykNjcdYh3H+1JuR75S9KdilrTHTL+Yir9GatblS8LC8JLkM79o4jZr03USk4BB4BoaBxkWK1VEoig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747208994; c=relaxed/simple;
	bh=yfAFp9sdGU/zENj2qvWQWUvYQz1uJ6Iwb/mTJm9F16k=;
	h=To:Subject:From:Message-Id:Date; b=FJfcfVTl4oHX5F9SbcB+MtAilBWZzoTQWgQ1vP+HOvjK+i96jcvCz7o13qF8QiPT/Y4MAsutKj1Rydlc31vE4bCfQfMFHstUOl6/Kr6s4TU2oPlED5H3lGCcMTmtMC8r0BwK4sra5TifbneaPiYwMVQC+KWnPZL/N9y9lF1VVw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIRfLpZZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIRfLpZZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A0BC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747208993;
	bh=yfAFp9sdGU/zENj2qvWQWUvYQz1uJ6Iwb/mTJm9F16k=;
	h=To:Subject:From:Date:From;
	b=jIRfLpZZh3DVcygD1J8E+ufpweXFtXRxseb95A/ikJ46A1kuWztSmGhuItYZRoHxW
	 tiP8Fdj0YQgpJLJ2ll7L6nLDWB3twzx3SzKAOpabqk8wP28NCagWQzk5XU5wofCC8/
	 stMcjqxX3R3kH2MtS6uSQ+nrFxFpiB+AVseYQFc6NcLf5w8lgIgqyQOcyNB+k10rkF
	 SbOjHv0vyFBGYQX2wAEjPTJeHu+dBGpaEoZj3i9pHGuDU7fKW/k9PpFjo349C7nroh
	 pBU9/Vyrf+DvLYcF2ghkSfN86XuUeDPU04SHLpYIEmFr5hmlNSmEZyc+QKDuvTqFVP
	 h556Jwuvgq3qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F067C3ABDA
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174720899357.31868.4713168777855631977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1727395adef83388093d0cb6a8dd1cc4b9c843fad3b1300f725cfc56c93968ab
Date: Wed, 14 May 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747208993
