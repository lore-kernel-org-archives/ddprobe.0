Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5C913B58A
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749406795; cv=none; b=UjdtUrGEF4niyOjqPSwkt80WwPZ71svs382l2hLkZ/jlQeqNpLr0nuEeVeJqNDy53noGlQUI0vS0Wa9NAjtpug9sOcJaqVvizZZ6b8BBRDGGEtQYZX7sARwykyFmY+UEGxsRXovmLQacKUujz+kTsGoACmd/Brn2PwzYEThB52A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749406795; c=relaxed/simple;
	bh=tJ5tdSzKgJah7nMJTEs+p2yjkTrDSW7jrNud2g+YsoM=;
	h=To:Subject:From:Message-Id:Date; b=VasH8j8eUVvjku3iDPh3ermcHHjN/vAitVAFd5RhUt6mBEfMknB7gocR+qNs8Hmti3jXnWpzzM1KmLmAgguUFzbld5dDS0fvpSfwImYsObvHnx+nFRHQmZRGvbfZ6Ab5YKwNPWvjGEdR/YsCslmn86p7r6IKQKgcDrN0dnvWoaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sz4gIKEb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sz4gIKEb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A518CC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749406793;
	bh=tJ5tdSzKgJah7nMJTEs+p2yjkTrDSW7jrNud2g+YsoM=;
	h=To:Subject:From:Date:From;
	b=sz4gIKEbshc16/lDJmpQXFkml6ywPS9TVBlJmw8KjOvKM4739KxcrvXDskh3+nfHp
	 clWhbcT2+oirD+qEmayOkAPdSsd6K5IB+y9jIfVY9VJotmiZ/rjW5YVKsgsD8H6aDi
	 mzSwwN2RFjnCvS+MABQCiQ7l2VrBtkETYMBinHPTN1lELK2CawwHqgZw5vmuPT6Dwx
	 2VxeU5z9CkP4+YagU9H6AasSAxzOUwHM/YsqRtXL8yNF7ZJtk9bSd0rrmLBnLZkrXw
	 KYZ8HDEhdvB42HC7DFA5AU8cUssgHfySp/SqwvKy/NCt+U9p8PWUuVqNq6HVgy2i0U
	 hoDmKXiqz/8Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B87C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174940679358.15633.12384472324975420834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a56de4addd29e56331839fd21cbfeaefa1393150e5ec330fd46dc7fc692bef93
Date: Sun, 08 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749406793
