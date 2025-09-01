Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ECC92E401
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756689594; cv=none; b=b2juvXqCEwrP+uIa9Wqo0z1UcHY+9nmXU4vs8FlgYNGV1nkgVHe0FFM/Ar/m5fQ1GRiZz4HREJ5TmwsI/zLbPw2iIn4QdE/NJ3wTbGVvHw2SUi8gyKaFBt8pQwJo4IXkMN9LqdSG0Y21WomoGrUUSg0FPPbXr2ufqUxs17XLCXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756689594; c=relaxed/simple;
	bh=F0VyUw7fnlWKOScaemOrrb4NyNYt4s0Eujdl/LsczdE=;
	h=To:Subject:From:Message-Id:Date; b=czZqQ//PjAU7MJL7wgfE+xNTSHpBe3Bfd3cwVBt0zmdlWmEI0nAq/nz0SZn3Srxm+/rz6rqz9NOrMQubwqbFYl2t7DLj4BGUwXVfBBi1/EPUj35j/+xAabj1O1iC3Ke/pfl0ftRYlMNkv54bl9v2nzoT5aENg5b0c/AaGMNJXFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJl1/ppX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJl1/ppX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB3AC4CEED
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756689593;
	bh=F0VyUw7fnlWKOScaemOrrb4NyNYt4s0Eujdl/LsczdE=;
	h=To:Subject:From:Date:From;
	b=nJl1/ppXGk8ECn0Js2OAio6jxI7Qcn6HqMWXzDM0mPHSgqN0b70vdu4kARMFgnT71
	 rJRqKR9+WgOvvkLJp9OIvkADbfA70eqyYM+NALJxZ/Ig5FuXem8Kw8Pqen1Iymr+AT
	 eSZkOnVGVy/ovHfteT+IGz3QIgRF3nhtb+wJbOnnFRxlFF/0rppMehjKPuY5IYbfgx
	 itVDhWTqyV9KmapV41db1MtZh6qSzT78n61vPLQTPNvXDgAwoI1sh+DecZonXWG50c
	 bLKAJ+oTJf4onAx1jXargGuoZUNHXWKQSZonrSF8lXxJH95tMQfiu8Oba8m1sLxqpu
	 SGcc9Kp8sa+tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF03CA0FF2
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175668959357.21972.11264507789197604606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d5747c7f67b0a5cfa5f1012700602f290971eef166c55d59d820cbf620572f1
Date: Mon, 01 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756689593
