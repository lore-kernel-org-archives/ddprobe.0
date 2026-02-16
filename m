Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AD31C69D
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771266894; cv=none; b=VOoRnhl5QJ5C3bin0/Eqyz1goKbeThj7fkyWxPEHgtFWXpDkbiBKZAiQuZIRGLOCQZ8x0qu7ccl60bMoXlU86cHnQQNCdP32IvU1izdthgoKwHWKg8eaXgw2Vz/lxmfwUiYM5OATYUVJxEgZyueXiBHROrMvG0J61gijua08q08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771266894; c=relaxed/simple;
	bh=bPt+7pJVOvXlIogDVnQaX6wF+or1F5G3ok6licnc3vo=;
	h=To:Subject:From:Message-Id:Date; b=bv/mHqFoDyjWOJj2tZDbzKgvAY24wK+Ju1ufRyO9h9tb99NyLQi0B4N7ZYthiv1qnlhkMzYFtlslY+T344qVdDeEPhoZXRiFuO8AvCYEAS29zCn9DKn8BYNC2/UyMYqkjkFQF6GkC+Bk9uy+r2PSZMJ+/k8BDtSjoxGF5moXjBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YIW47gPC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YIW47gPC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D8BC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771266893;
	bh=bPt+7pJVOvXlIogDVnQaX6wF+or1F5G3ok6licnc3vo=;
	h=To:Subject:From:Date:From;
	b=YIW47gPCHKG7PRYDPvvKEWlpT62bqpq4fc25yTv1COMnLiI/ipJbyD6qyq345ua4G
	 nduj0PpCEjhE6FO0BMkAsLa7DX6npqlnMAIOYWphIUNc42HXHJ6WkZWBrYUaPZoYNt
	 zVNLI3MXFLC1CDSlTK1+RsGz92ptXNmyBX6wWdsojV99P7b0WpKXdQeFUNr1JP2Poa
	 lLzg9do3QULz5+Pk5LncNNXZT4gwAoJXXcTU/i8xlSPnBvlE70OtjuKyrFhrklSJ7r
	 0EetbG9jysy+EXMsZFqpD11/j9r9xc6tfx/s1R7wAkFUwvWR6MOVGdKXvFQraNoKgD
	 rVTCkehfkcNcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B021E83820
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177126689362.21266.18372642090347751533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f4d8195d9140a0f8e1af3bada71746c2b0d8ebcd58cb72bcee787c88e8e4261
Date: Mon, 16 Feb 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771266893
