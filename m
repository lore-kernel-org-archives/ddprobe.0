Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61EB31DA322
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 23:15:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719962123; cv=none; b=rW1FrlSfE8bC2QCvjiN0Kk6La4bHkk3pm93sXcWNm+5zU2EPSBzlQW4s6O8jLVqAKu0vw6XGuG+0gPLJz+r2BPqtH9xGsMOXQ0Pyjtlw+MKY53hVRJPDXqoh0cTDoXskYxdst2UJ16x9szhXH8tZl16S9WvMASeqAsan48td8/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719962123; c=relaxed/simple;
	bh=6g/JcIXTAQo0A3yXHTKtUmv0f/vprvfUb1qlXqE4pzo=;
	h=To:Subject:From:Message-Id:Date; b=vCKec4SqNNFbbzljK/HiX7OkHAM9HNwpS12D9LyPaUU5Y/SERDWT/r0tBdyO97Uqs8nctrNg9FgLGRw5ouaNdZxsCOrg/p6ZBMxQo3McnPCfo6iMNvAzk+QEwZ8LgIJ+m43fEQx1TKR7vLTgYO7h1Ffn6T9MOd2ADeCyt/uE0AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZmU9zbX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZmU9zbX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65E5C2BD10
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 23:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719962122;
	bh=6g/JcIXTAQo0A3yXHTKtUmv0f/vprvfUb1qlXqE4pzo=;
	h=To:Subject:From:Date:From;
	b=VZmU9zbXhjcChmcjqxKiRD/zbBjxIHrtr16DDfQLzBB0ho6qWVN74pGmLJpZE7WKx
	 Rcw1X2Rheu2iyt6VYUUzGSZ/0xk3UzY9uDJkwzjRrbNxIjrkkGbTBi/eurNUM+v/af
	 J55c8Dhdh5eO7ygxsdcLNSzA+Q1ztvoxF6C9qZYGJSELXIzW2z6yN34NO5k733VqS2
	 TSj1fwe9OFoBdGxZKS3b4l/BJ3nrdXsR/F/a8RDsuiz/IwZ27L6iD+djWuIvcqdgHk
	 kbSMqTnSnbpc0ZRATFdRZ5YMfY9OcZCNP1eELZJqDtLhUOdaYniToEkVJCtXn5FQlw
	 eK5K1yf7aWsxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1350C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 23:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171996212278.3877.9543638551930437177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee770c619c84e26b1d8a6e4cd8d5b7a4ac698d5ebf7aed511b3cd3d3bd4445c0
Date: Tue, 02 Jul 2024 23:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719962122
