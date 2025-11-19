Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CD5C355024
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 13:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763557915; cv=none; b=cv1OxIpoScHvaCiy2ueiMezrkgH4UkXrtE7jXMl0zLDnG00CXJGOxev/MVvIBOjXJ+m8jJWAvjdSWD63g3O/joWIFMJ3FBtOaPFPy6ZpBxjEc+3r84gAumLVAyp/77pjlOY7bEePzol+hZXJY2Z7KWSjBnl7a5puPCdzf0BSntw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763557915; c=relaxed/simple;
	bh=0e8m7qf6RdHryyb7o3nUYa9nqk1elgeQVJn9vimz0ko=;
	h=To:Subject:From:Message-Id:Date; b=qjbuLilEN/FRuGJkRmh5HyOAO/17WVEdrUSC3HX7V+1O5cFO7pVAWzZCluAtlsLneTTFQ4X2qWiKfJIGiM5U9wOsWVgA5QAZ/Nn+MrUf9AWmF6FpaQYsqBT3XkfA6sawMXNP2vwP7zJ5dbueB8R7A1zudTwzOVRh6jbqxtlg8TY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2ZlOMM7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2ZlOMM7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA6F6C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 13:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763557913;
	bh=0e8m7qf6RdHryyb7o3nUYa9nqk1elgeQVJn9vimz0ko=;
	h=To:Subject:From:Date:From;
	b=g2ZlOMM7JjJ18jfxBkApWvHxkwPT+hFmEK/U1aTO1PNLygaMaqPkNSAkyxLQFyvp9
	 ggdpHQPYCg4wboU0JV1BXzyxr8Eai5NMnyjYOk1ILGfLm1KcQgW2EAidI7mPwWStSH
	 q3rPmyrAy8bpP0gIQARdzfV4ZL42n9R8yWwjGr/UdbdZjPUh0fiO8q873VHSqq5Ck2
	 sIjbmvVUf4zsTpJfxCEXmAHSqhLhu8arCdrOfsx9beiFkNMdMSDllzjg8W3z5xn2X0
	 hf8ioA3FThQ9GIcN3QcJRWnj2TTSASXPz45ET6PKseNW/4qXqC4yTRznf0y0B7Jobh
	 DCOt0l7P30bGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91879CF34AB
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 13:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176355791358.21535.8204861536568380234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 017dc94240b148dfe5f512da555149fc8dfd09c2999300b78c3198efe15fd5fa
Date: Wed, 19 Nov 2025 13:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763557913
