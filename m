Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365923112AB
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 11:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780398274; cv=none; b=O44CxE+dRbwKD0qC/XoPEVz18bBtQTT1o6AVnF2B/49UjiBTwkpgW/ulx7Yj2nvznvC48bjOYa6SZjjZdEgOj5iRTjlobtX1c+wOgppfXDpPgnCae5gIb81AJmvr2QTeXfwOIaIIzGr2gTXfIBuHcbaY0cH1OMtYh74XADhTFFQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780398274; c=relaxed/simple;
	bh=eFRJWSFIwtscB5hUeIAi1mlTbvrTS1ho2yzPLJS+YPE=;
	h=To:Subject:From:Message-Id:Date; b=axCBip64gYVvz7BlUhfLf622GI0oLHfH+1kj6IxTH8YarJl0brf2CGmteAScxNHuQsORdGR10Th/aYzkDo3DTxctNqo7NUgaRHXFiiqqUCJYUdu8XrYp5OJEBWSwFN2h2C8xs75/1iMLoGYcF/1tmOwQymka95eSkS/VrxDxpPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uRqqGGcS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uRqqGGcS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF315C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 11:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780398273;
	bh=eFRJWSFIwtscB5hUeIAi1mlTbvrTS1ho2yzPLJS+YPE=;
	h=To:Subject:From:Date:From;
	b=uRqqGGcSIE00/SK9JV4n21PsE1Jygj4JpyBED5fL3pP7zH1Bx98kNqeTKVQ1NuL6c
	 /o1QAD9zArLlBb9reuSucqQgK4J+fPyhFf3FCElCSkD3i9vv2tqcgU+Vg25MRzS6AB
	 hJfZSGIiRlERCzAT/SqKe2YcHmc5GiWH4wGF7e1MxtD55Rb7ou1nqKqzZC0/DZPC8M
	 Kd17FxkkngEYjcN0SWesejb2UuO3lTNrYfPxMyxn/be4F1CHPnMs25oAQUlfexlNrC
	 yGIwFa/nP8T28DawzV7yvmc1xhxTmR/zbfqpRyqZJrWhiFPYMFb8Ihf/ZnGKPLspjx
	 0odTxfHw+sEgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB2ECD6E57
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 11:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178039827368.1493.10444992727153665906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d281c0af84c592d0a8a888e316d7fdc3ecdf383603accc4b81433e83d7e8635f
Date: Tue, 02 Jun 2026 11:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780398273
