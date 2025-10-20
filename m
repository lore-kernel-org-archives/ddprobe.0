Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4166533F6
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760923794; cv=none; b=ZGjLp+oq0VYSI1POthRhtFRkY7ysyB7fkSRKu5LGRA1fCmxNm+WnkcTKG8upxyIG+gUgemx5SIwkimn4yL7eAUzoZfOYeK13EUrnpbtVt8Dj3dM3hLwiUd41zqlYomGdI+AeP2WzRLiG8dyAe9ThMnpy12aAjEWj/C9zwPheVBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760923794; c=relaxed/simple;
	bh=i1ovV1cY1+LpqO/cHlTtpD9MBJ6boLg42DxDP8TSUiM=;
	h=To:Subject:From:Message-Id:Date; b=A86aMc370Bvxno/8fSYbmwl0FxnpgEU/68T83Aspw6W+EfMk4lyBEItbaeYPkdtEiXmEjriWSnh4/ZxB6l5KI4ltxGBi+r4Kh06IwQ/fQrrHD0aFZ9sZEb8BRPfy6D31JlOhEVBj+3bhoB6aZnw7AFEES5L/Cze1T5yaJSrK6xY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkApYE6u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkApYE6u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBDEC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760923793;
	bh=i1ovV1cY1+LpqO/cHlTtpD9MBJ6boLg42DxDP8TSUiM=;
	h=To:Subject:From:Date:From;
	b=hkApYE6u8jibQMpNy/kW8g6teXGHhP1pL9wJt72xwZs8c2FKYVcdDRVdTleFlsrxB
	 OTgn2/PsS84zIDUy0lfWmirn0PKwSxUCPrt8iU1rEog55K258TrgYOyZkUFG+OmsV0
	 tKxLpmiXVioBk0WHZ3yaUcsJr/hK+kyX96xsGI9dmIYwCrfqx+CQOP+QhdAXPiCyxo
	 Pcr67SdN09D+ZACT8CBPweYCj7CTdVTPP96uID3vHcdS49zEck4gfDz9i1DgX11lWz
	 ZmAi/DiqdvnKCHj0BxkIAeHr+a7MrTX70jcx2RvdljwaxcHi9HINwwfZNzKi3zfX+B
	 wh0Wh3MNCrAsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB8DCCD1A5
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176092379357.28206.11014936233577928889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd6bc22f36dfd3f6b43d26e9f004b4c8065cfd1fd214bcac23c055abd12154e3
Date: Mon, 20 Oct 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760923793
