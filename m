Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425F32594BC
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734660954; cv=none; b=M8OXysClvErQzAoOndcKt77FTWsJJ+xwDzIX1MatI5nCxmik86GOb9CK9BEmL5L4PgY7vgoZX1iSFtS7aE/9axQ17SrkOc7V6ufjaO4mjZSlT6ls2hb5vHOdgdoURGhzAnVwDpQ5VegIJGodAeHhm3jxwXC7gldGqbOOWaxZHMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734660954; c=relaxed/simple;
	bh=1hLA7EUCVlyT6Emnv3eJVLJpxw14bS9ptc5rF8XAd54=;
	h=To:Subject:From:Message-Id:Date; b=WHofqXfu0SNt9ocjVZBkGe9DxdLyrjNJoE6k5jh6jucW42aOTAHm24UjoqXRfnO1eztWLJy3rCBBW5Vzr/nbshy8wCjeA1w0uUBEKPkGcTn7Nc9fkhynGgvHwftXcCSQZ2gqVf2GJDQ+q/qU2ty3WzTU/XvaHiNhywEFRJ+bTnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iu3lu4iw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iu3lu4iw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDDEFC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734660953;
	bh=1hLA7EUCVlyT6Emnv3eJVLJpxw14bS9ptc5rF8XAd54=;
	h=To:Subject:From:Date:From;
	b=iu3lu4iwoNyFft0HXmIV3I9pToLSUaO6IdzIoICJx/YGwQ6X3b7skk/q5WgZKrksM
	 V/BC62sdAPOQ/LWLbUuRsQvGN4J/qj77C/xQtNqvuSVYfNVBHPYZ4lnj/JCv5lzI3U
	 ez9cdzlwksbb0I4QZiGv1stBjopU9VqVpoUlRTmcjwDWHABQA/7Z7mXk6rAFmywSUx
	 WnNKDfZc+VcE3qUSoou+kLx8FQyQMDc9RMdZ105Hw0ZCG0bulfMNjwaieHULxXr8Bm
	 bXi2oovQmQMy89ZZvhqVXTC9MFGhu1HIEPtLtQwTMYkd9jSeOuQxYY9ZxcGcOFD+aM
	 TU+fHac3eaHlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC750E77184
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173466095366.10535.4425467481195760708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9468e15afb41648685a691fe272e615c200b9d7f2660728d41c5e273755864a8
Date: Fri, 20 Dec 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734660953
