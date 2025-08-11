Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313A72DEA97
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754903394; cv=none; b=Ydwn8f5L4FvtO/o7WRzRpgFYCelPP6R9r8lXJyTnI4k2rq6tBMqXbqDvlC56Os5f9QpaF7HBsSdMcHslY0i4SJ2L00XwwxPcL2bzxOPREZZ6jIyX7XpFs7yjr85pxVyJEFgx44SzXMXrWQMHR2TbaUn1S7iQ/Wsn4oWRXPtqd/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754903394; c=relaxed/simple;
	bh=4y0TYksey8Xj+Tj8bER3aSUAxirhE5yH7Cr1ztzvUQ8=;
	h=To:Subject:From:Message-Id:Date; b=lFvmqIX9H/dBTBQGertspq+uczJutPPJevIHRHLWs5efgLwAvx+DjlW6QpBBTK0rv2xVi4z8fvIzpIl6fJtabbrFNaHvhMAgkYP/Td4rqDuvkM3WSxo54HEuMBRcR2KNDOxZmuS0IgKMiVswgrkwPmAaM+cgJGETFBdMjMihoTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvQw7iJD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvQw7iJD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D865C4CEF6
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754903393;
	bh=4y0TYksey8Xj+Tj8bER3aSUAxirhE5yH7Cr1ztzvUQ8=;
	h=To:Subject:From:Date:From;
	b=CvQw7iJD4mFxE+B4xfARubbT+evMlF1vyJyMaVezVDBRPgQ7urzAC72NwYKOKxSvI
	 QN4GXAxH6SIFuS6LleI4I+geORkyp9pi1JT1i++n4NzYUpNjLAsi3yPSpfuQTvs//8
	 Kmj+DrTZu4K0Hz8YOqtZjP2zPI/W3gGfckfP1ZGUqD9obao/0gmZgwCi+wXO0aOkNc
	 W4NDc7D9tdMAw8hTQlCza/peiolCLPkHwFf+uQ8J24bNaYigKbiSnNNKCB/z32ngCM
	 ltvSQdN1tP+lY+9xbtAC9Q2JEhm3RodQytxkPiy9/35yr9QZkPKFKlKskGULdi/w3+
	 RzOaBgvKtyxUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900F6CA0EC0
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175490339357.14313.3773045278636753790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e0aefd008f8347e5a31d5c7dd33afaf51723204ea76b1096d136d3fbdd159d5
Date: Mon, 11 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754903393
