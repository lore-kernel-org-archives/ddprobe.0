Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6509CFBE8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 19:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721070923; cv=none; b=Q4uztrGoloOovCg8ZwlEskqEqfrMr2O/65XK7jg1ckJUVksyh3AgHsB2W6aWtcnMyymlFyyhl8QMik2h1t6jSiNrDMygKEigBdKy6ygEt/ZqwCX+Oq3vGIUBW8mLC4ZcbgtjLNhNU8MsfwRkII62Zs63DXVGFY1mLIjf9t/VynA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721070923; c=relaxed/simple;
	bh=QU5rMVLf0wS+uCLXm/VNtcOiXmo1bIYA2JFo9zUUpZE=;
	h=To:Subject:From:Message-Id:Date; b=bACL2ZevcjVtYzIvYsWe9CWRQjwqm2lYyoFfwclDMyoNNnJL+JvUBcIMG72Msti2p0/sJOihqR2Jp17pkzf/Lqs1wHe4uqXzAIqANPf9bmIAztD9legsD7cHSYwfRkeirC9QhsADnNkq6x0uGoeKoGXfGIXMe5DRQ08A+gnZzy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y5RdGsZm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y5RdGsZm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4159C32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 19:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721070922;
	bh=QU5rMVLf0wS+uCLXm/VNtcOiXmo1bIYA2JFo9zUUpZE=;
	h=To:Subject:From:Date:From;
	b=Y5RdGsZm6H51U7DdbTFtnWc/cXUTgTIJULb+ywBf1HKeJHfJ8om8+kvmDKFz6hb1l
	 wD4uaW85Q3NICR7uFYcw6Zo8MvFOjhlJAcoVJtrErJsLrbfA07EcQA1lIWCjyJEPcs
	 lwMGsTEJezxy5Su99/fyDgY7/w+oyAj7LGtMOdGFPdI8gDro3pRq8tHuaOGjE/+2IW
	 zKxTtY6bA/b2lTTUVzG/EYy9hb/bia/d4ccMrkHZtJm33YHwIT+ImcZlK7+ha1JCAf
	 H5HtOeqZN3qe13juxQvH/X8wGKAz0C9rafJA1/4PtOaeo0ZG4n1E5SrGtGVKrp1RIx
	 YXyE4aoNxL0Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEC79C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 19:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172107092276.13557.3628202999240043706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 451f123d184978a682a2ef12435003f533a4aa8bcbf5deb1b37aebac9a9f2b8e
Date: Mon, 15 Jul 2024 19:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721070922
