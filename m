Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4973595B
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 10:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765275174; cv=none; b=oHgbG5/g2EIefCGZZEVFY3gyHU6QDcLg4J4NYe+mYkWbgqfpxZiIj92yqlI7x/UrSk0VtEOCh+84kneYkuEkyxb39oEavcp4M+ZuIPgyZLtWyys3nmOlnm/CWOKHH1ZinbjY1ndHX5BDNFQxqib1gNF0iab1NYtnRl+fTgSr3z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765275174; c=relaxed/simple;
	bh=B/Y9u8RlH+w/hL0qXotMXBNqmAb8EpGmS2Cyj8M02Hk=;
	h=To:Subject:From:Message-Id:Date; b=qnTnYQvss9X5QpZQaNOomcFYrECKiVbyjMPB69loFGPIS8XQ6XVYPsVjuBXl3k/dB9pwTuQKiFejBEWLVzTdWX5Ar+yCFU0yJohVw6zjhed9RUr9RsaZPBfbdd5C+t170OnhkmtS1fyzoPRtw/Qclo2uBoMKr8WBKoOOAnGm1jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4rXG7bN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4rXG7bN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A543FC113D0
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 10:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765275173;
	bh=B/Y9u8RlH+w/hL0qXotMXBNqmAb8EpGmS2Cyj8M02Hk=;
	h=To:Subject:From:Date:From;
	b=C4rXG7bNpF138dbiy6hopXDir0QXP8obm55v/kC3qvM9zqBHCHfT0lBOLbVRHKCd3
	 hmZlfmPM7TM4fsZxQ2QkmGL+c0KeoDyu2sfmOuVounqEdn1CDfdDc3IYiZvIYvHC1Q
	 9swUl9xhhwk3FDv77vw32nXJGsPpxTVDKO5y9Bg98aUFHYJl2/f1oBvFaQ8PvQyHXt
	 0rdCdah5SnV5R+rBmB4yYWbIqiwXxlr0u9UjEgXHGoGNy8Swn8Bop4D3TX1mmTX6C2
	 4SLAS3UpmJW4ArpsMUWRFqpKCKQj4VzGYSBlmE5SQL7Y+T2Uq3+mXTeHdSjLfUUwsE
	 uq4w8Ak03QGug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D82D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 10:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176527517358.2671.11608757729234571127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8b9c6393598ace5434812c8f76c0349e3b4ea0974a73b112afdfbae31e1cb9d
Date: Tue, 09 Dec 2025 10:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765275173
