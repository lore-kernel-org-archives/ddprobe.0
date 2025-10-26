Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ACF013FEE
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761476994; cv=none; b=nweA6nAbMaARtdhdjHiFXfGzMrnmN9EDiStJo9mrDdqxug4R18UO8bnqnVdE8jC5fzHwfDe8upZ06k8vsLo2k8I7GyCYykFaTodze4FzcKNSVs38sbz7MwJ8FkyhwjNUpzphHYA9Zwpfh4wnjEGYPv0bZvVOL/zb8RNbr8WtqFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761476994; c=relaxed/simple;
	bh=nAEzVp953NS5+Cflf2pbhxqeuB7nCNtUG9UdQUInmg4=;
	h=To:Subject:From:Message-Id:Date; b=YzIwQEfnhTGUpfclCjvjQvYvd08iu34mZy3K+V6ZW5ew+n3UAk23QZVLRfeEC3tCvtAX2y1YfKrgijLNOoImpQt8dSCFJF4mh5DiCbUmjlTmscmsxbJt3Cud8d0QYxcz01QF7RkJa2qMt+tUUaTfk37AaJlrnYufqM8EeXTw9Sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OoB0qV4R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OoB0qV4R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61A9C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761476993;
	bh=nAEzVp953NS5+Cflf2pbhxqeuB7nCNtUG9UdQUInmg4=;
	h=To:Subject:From:Date:From;
	b=OoB0qV4REY1Qe4p0ifLUCaI/+VZqbvoYM7L2OklSViSvj7vq3t3/9jTPQS8Qjojmk
	 rkSAa5xE1RIvXXOyrjpYxtb/cu27lew6bmyEYaI2Cyw2+FOpg8ebNzf16cY292WaAe
	 vcfxHPs6SX5IbH9PyP1jfzRp3zJ5pwmx3gzNwwLu8sJMfPF2oZRYPsQyR/52ahLyif
	 XghzfCIoytHPzlKONDRu/xHhQGYvkGqElYucqihFgOyIsbr49gFDeGpjdpVXRS/jij
	 04sRG4NB6jAsEaIH38T+wv2j8rgGFGO+zyWgKqokNS6grfsYRfQJetmgYyaOBN/DEY
	 I6AgfzhDH9jRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C47CCD193
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176147699358.7275.70152495343225957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9422030bd5b695a7983a496e2d2914c9affa0b92b705e6d5d32f95fd2c900dca
Date: Sun, 26 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761476993
