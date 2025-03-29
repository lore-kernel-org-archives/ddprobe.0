Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07AEA198A08
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 16:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743265794; cv=none; b=oSh51sQM/N3HikWXtiq3t6N8DveAI8NO86ehBGqrJNQolXtlcD3fa0cl7sE2XkP3wVKsYPAvuE3gCzwSr0GcVhYujWdTBbrhxjh7hi3jjz6y0BF8cIPo1dVssLxi7o7CtqdZ71AGmcIqrO3cIIXq1AytEsmyXwsU6oohV2r3WSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743265794; c=relaxed/simple;
	bh=wcHFiHHM+30StJUpN8cJqj+GTOlRY2noMQRh6cZGARY=;
	h=To:Subject:From:Message-Id:Date; b=nWaAqacUm+IPuwqVrG+gTy8HhnmTWqG00tYN/OO+z/wW72NG58HFLf8cHwZTDABeG4wJGuvhDOg5FAOm7r4OEXw3LevGA4JOjkMnIZkDbS2vRnSVpjRUgTazexpGdEFtDa1dRHrAPBP0P7r2nCJffd1qya0wAToVgheqeqgrPrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c43kOpVX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c43kOpVX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1FE1C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743265793;
	bh=wcHFiHHM+30StJUpN8cJqj+GTOlRY2noMQRh6cZGARY=;
	h=To:Subject:From:Date:From;
	b=c43kOpVXZ+X940Fmuen2b3uSml7ALfUgOZiW28MYg9Zc2poyH0JO9r6nh+cUrVPKi
	 a70lItEIpmkBGdrDg6UiPZsH0B3wjZwY9iQgKNnImE0KESpens1DMa0p2DO47QwtCK
	 xzO3tGh11b/ZjyqQ+wjoxsLrmzaoJXju0T9OK1VX4OyWTXn54hIgjZHYV0pKJhdciC
	 E3kEdZUbOP6GY7pADYM10Nk08NyNHy3gocH2Mm3oKnutfCnQJ9DyeFlohL3IH1/6QE
	 4lVJ1o6H2rOTkEqtqbmN5VTcFMfjJvg03iivI+pbjg3H2Nidsvd+Td9/+Z33ryh2x1
	 xXHsC6Vvt2i9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B62EEC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174326579368.17926.8768467278891366386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddc2c4dbbc53313613053326cb7ba4774fe6eee738f473b85470e8c1c4b7ba2a
Date: Sat, 29 Mar 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743265793
