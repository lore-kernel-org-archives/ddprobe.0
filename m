Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C45124466C
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755482994; cv=none; b=qX8Pgn2fpM+jjV1mWTSxaOQ4rxjKnneCd0CSGew7nWWkyjtBZ6YQzntgOJIitlv0beUdBn+srNqW43DX81tFNCldQwOy4UhCu0lIwHsX8BbjDYP5lSMz5zeA9xMETtVsBqBjG6KQNaroF9j7CDqyVIbI5yG/FRV5ZkIcqY7d9sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755482994; c=relaxed/simple;
	bh=dP31ytCteiwLK20oan+rK8KYks28hhSI1Npi0LlqNh8=;
	h=To:Subject:From:Message-Id:Date; b=YsxSFQWoP6JJAbOOoYJRN9Lu4iAM6BSlUPlsaXUm+uYeANZ+/4kLuQUzKxKsC8pb33262roQRrKMQIUlsNIo/NBdZovxwotRsCOc3wcgTrql3pPJudcXXgB/B7Dxyx1u5uSnYJZGbYOOQnVJPOmnzCfhfYiB5ErLbCHwLddofzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+vIKu/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+vIKu/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2ACC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755482993;
	bh=dP31ytCteiwLK20oan+rK8KYks28hhSI1Npi0LlqNh8=;
	h=To:Subject:From:Date:From;
	b=l+vIKu/5M4hs/JfjEDmlJl5ZPQG3o7PeLxOTop9LHz19fVeOblxHmHPsyt0rDbCBu
	 5B2g73lyOcurVdB+nk0JuPfGJcajBRFBi+2Atg45MjLx+ZefkyHCLf3Wf1gLBpPc1l
	 vJNzhD3yGb8w9NJ9R1pB3p+nwyxQ3ynr5DKofYRyA0Z5uAuN+IcrGX0Db8stLHm4tN
	 ILB8roTjYjva51ig6LrxLAswQpGFIm2cyL7pDtamY7+FX04IoeDO5P0F8LblRa1gmg
	 bJlKtqxn7OPrz0ZPv6vDif0KNcaL0BT2j6oIGilboVFkoyl/UQP5uKG5fIy0WvM1Ea
	 G/3NfYxSM++UQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F19CCA0EDC
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175548299357.14954.11562021685092745886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5703ec17d7c89e640b32dabe2691d5d5b59954b99a08c73371a1459726bfca36
Date: Mon, 18 Aug 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755482993
