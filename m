Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D4A1FDD
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745383794; cv=none; b=Rh0q9jQ0Bxmv2DwwYa/fb0rrD00RvVQNLL1fx1bhXRU3NilMqbMnZWRTHz7GY1/+cjFAgyfsAvmR6cK4CSV7AaH6hYyMjZ4yyNUaNLlonSZM4sZD3qXq3TZ7S1bhni04OC7oSQqsM9YUfc76qUvNdpzZ0VwNIPguJ680IYQfLMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745383794; c=relaxed/simple;
	bh=pUkZ7gOUW8fitSso9NUCPiuDskEOfu59B5pkHrvPEWw=;
	h=To:Subject:From:Message-Id:Date; b=S4ExBF9X4vzpZvBhe9E4TMOjJsLJHOMmxs+9sli/XyTQFY9Rc2K+1w5gGcCSw/UblxCGZv8OKO56EMf4MiZqmBVaL5PvUAfS5aCOdZEGVUeAuEuHs+CKPsbeyyuao+lQm8nnjC68b5XUFhAMoj+h1DlXrN3Ayqst25A0Y97U4jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WiUacvLa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WiUacvLa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACC81C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745383793;
	bh=pUkZ7gOUW8fitSso9NUCPiuDskEOfu59B5pkHrvPEWw=;
	h=To:Subject:From:Date:From;
	b=WiUacvLaZMhoYdn7g9AH63hPeGT/dMEAe/VrW7KJEI8qW01lllbLzZ34JPQlGZa0H
	 lXz55Geg5CT4P6RsH2xErXx74UwlfVBqEzdbEp4DGUXzBQX2SFPWstJWfWgtKW3qKf
	 0cnVgYTvowIPFFEtDHc7lpp2/ED+WzfVzJ28Cie61QDlq8swXmnEvk/MQtC74wjUvS
	 pjQ/yH0Mev+iovCN/QzZKpeTYxYDNpz3d+9FpFXFFdaqdTGvzq3NOcrAljl0li8BoX
	 5ZiFdOixiSzzH+2MggSTZQn3xTxkWwAaqE80FnhlGOKirVyzkInDo94I/Z4wY84Pya
	 XJtKtLRE5zc8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9757EC369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174538379361.19836.6171431450482096853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e12d792441db755fac9c71d86ed1904fddbcae2e68362a554bc5cad0a13d2239
Date: Wed, 23 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745383793
