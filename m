Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FA32147E5
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 08:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780130614; cv=none; b=XcyLlpLEgXO3zFlnXEeKKahTN1Jd3WEx5oQWNwG4QPtpWR1EbKwWxSHYXttHxMAeRu4mjkS5VMK6TEJTdAmKuyXYaLNOC8dFHSAeDXGhpcWSeT54s9k1RRUo+eiCoMvUWdxpQC9KoHS162CsA1j9tI/S+UeQu1JBCpkFZ8QiW+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780130614; c=relaxed/simple;
	bh=1VkamTAvAdcVOBN4QJu8aR+Yh/WRDWdTuOYjttILMUo=;
	h=To:Subject:From:Message-Id:Date; b=k/Z0QMpxAlNtZxzzPL+ZugXubh0JLWz7c1auAs12RCo8MP4F5r5ugM1z7n0zjub9AGaJMOng4rZ+SMNqenSu8llW2GR9yTLmvZZSKxO8HX+Q/TTjurwPBaSriVPPp1WmPyIffAJjdaBeRgUen5jUSXh9Va1+wRuwyY9uh3NZweE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hdiZfCXv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hdiZfCXv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8530C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 08:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780130613;
	bh=1VkamTAvAdcVOBN4QJu8aR+Yh/WRDWdTuOYjttILMUo=;
	h=To:Subject:From:Date:From;
	b=hdiZfCXvCX9gfK1qgq8hATBNxsd9Yogr5xvYfiySoBtGYqEy2yh94Fbb2rXmlH630
	 h/5Srzxe3o8AKMo0l/n2lEjJVlYv0/tG/f+uCSIa6a4C0cLG4QH6GQRBZNtjybR7vF
	 qrb/4upy2gWY7M1mDaz9OD+1EfqiR6ylt7ZHtvAVk/EJ1Xvw8CMScj9mRzhDe/VqXa
	 +zOyO6zVtsmLRfau/uk/c7mtG9eJgjaFIm2cRZkig+Nv4w6HMi6BNtdExGsTW5plea
	 BK9jDiWMLm5YTHRyyCOyMh+2hlAajSzFd3yaTnI7G53i++a/d4m+l3aslehiJc9VBv
	 DDwDdoAFYAY2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8460CD6E4A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 08:43:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178013061368.16780.16888093451392758113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 179e576ef7ee79284249cc64798768b85b579f8be785a5a13f246a8ae8b5222e
Date: Sat, 30 May 2026 08:43:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780130613
