Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF5E93CCFAB
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773926694; cv=none; b=YjcyLdRII+cuWz0IdjjifCLeQAhVnu7GiVuIIp2rSpqhvH+XXClMJVVtt5DxfVBJO56SNZHmjPI3SopJAPcArqplv3JTom+yvGm77sASIB/qjyTwCyXDUZSkq8WCHDvaYp2PF6ma5skphAIeL/05g7JeiCaftqq65OMFsmdomYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773926694; c=relaxed/simple;
	bh=Ssy6DJxUnjRIruqzfvMaAsBM/klSJF2S2cCHNrz4uU4=;
	h=To:Subject:From:Message-Id:Date; b=nkwD4orQ17gS9x8pdgCLZQqGTRrdOpW90xdMvrXRIjnJOo9lydSTHVYFE8CZJmnxReTljhP92EFgtqJnNC+0hani7mNpvbX9JhnCYABsy+BdO7QtwNsNb9wcIFqZFf4O8+N9RCbb/yc/mA2EOXZEXpVAL+GGpT7T42jziXfiN/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDCHkzlY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDCHkzlY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1C4C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773926693;
	bh=Ssy6DJxUnjRIruqzfvMaAsBM/klSJF2S2cCHNrz4uU4=;
	h=To:Subject:From:Date:From;
	b=gDCHkzlYxP54SF9p1bKxLPwvTo0WJxqczWDgWhTDY/hqDVd9EjJ10899p1Zf8wXVl
	 FUXauvvWtZ/Nj4NLjTJj96rmlmfh77HBaGmcIOyhbJ/Eyry/LEz4PhBdxTe4UpB7af
	 5ZoOeIxdqL+bDS1hkMDVfAQfvlHl6BQsOmgwUF1uMXhNkm7V4pClKTLdChsB7xXKgG
	 KLX8Uve1mzfno89DKXG+aiTkDlkC9lK5sJX7VhoLcQ4C7/7eO/qpRBZNT53/nkC8+w
	 6H2AgJHqo0GkrmM606pCEaJ8Xj2psKzsCOkz+/EXg6zlmlaS7H9TBcqdR0l80IDtC2
	 2nu8AY/++j2fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDFF1090222
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177392669357.7007.12150351889958892135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c070b0b3c4dab921d7bb176db1d3e2b5902118f6819da0f41f8e4caadc494ec
Date: Thu, 19 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773926693
