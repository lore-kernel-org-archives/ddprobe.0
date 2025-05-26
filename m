Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30EE820E71E
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748271594; cv=none; b=Xpp5A/KhwoJQ2zpiZsMk3SeuL9CexWgsMB+yb/7zXMt4Lmh9VKkw75qKWaTnkmsoLRAj2q6LBZG1fgzUxLkvkZ6QKfEKhsJUyZng5R7d4G4bn6mDHv9IO+e5jS0q5MfdVuzc3zIZaVXvgQzymxkiDWctC4MA8qiaXUbS5TB7u58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748271594; c=relaxed/simple;
	bh=TNw9OJtf3GlUjjomSOrDd8YYQX+CuhzaeRpF0F1ZbCw=;
	h=To:Subject:From:Message-Id:Date; b=h67kTOfUwj9DqIjFQYLlAdSetHC4Q4LzPfWqZpj05fWBvMHyyCg5lt3Kr2pusULBMtYX2NQAY3X0FvU5sSfvKSvqfgAaisN86JsKXiQ4vvBZDHClRf1lvtvwPvJ7IsFMnK3InixD7q4XU0cS+45iCIlJlei3OgUH2g8eFphhKnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUI22iDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUI22iDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A59E4C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748271593;
	bh=TNw9OJtf3GlUjjomSOrDd8YYQX+CuhzaeRpF0F1ZbCw=;
	h=To:Subject:From:Date:From;
	b=FUI22iDtlt7zBv8pMtduJpz24tD0VE/ko/stO1r7Bp8PcMHaC2tsqH0D16djQ6oS0
	 iz6r+EO6uA+pAh3FKpCxRHMwIFm36PFZCuULkYfSOikBYWedcHS54wspYlI5JvrTcD
	 2P5lvZjijgkmV2V380YlB3LAd8m1DQrVUrC9RokXJGU9szcxpYnvCthN+H+rT3kSvV
	 JkLsl664bVdBLlloMAi/E8zjOM1RqklRZO37wpOVVaQsNTQgsDKGOUm4rdheaJGWgi
	 HE6UbT9LUEIthr4vDj+qi2Q6xeQOOaWKPWASyvOzoS07LXCQR/FcohJ1FlVGZFycty
	 kLRXszJg3oNWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9FBC5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174827159357.28272.3678596973690882623.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db44684db643af935257f9c4ad4ce0b5dc2935a040d1ae885335571c9a53ba50
Date: Mon, 26 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748271593
