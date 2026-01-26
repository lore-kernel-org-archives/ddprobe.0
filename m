Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A4213AD05
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 02:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769394234; cv=none; b=th7msY43rV5SVJDZK0M42/MGbf0WY+ieXa5cTXEjAif4wlqgCXuKpGPtX/aCs2VxlpUCQfhOIX2MXuumZoxcv5HZRiUP1GIkzb2Y3flNeLVmfA5a+8Dscm9xF+G5t/8HTxF68D/Ay3+aVQnwqv67697YpklucL7ChF1XoRR3OqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769394234; c=relaxed/simple;
	bh=WmKycPmVizBle7ipq/0mOtROwDSqK8W67wjyRiwUmzA=;
	h=To:Subject:From:Message-Id:Date; b=H6bOa+YGHsj2OwJ4K/46hZ/Oj6lZZdjGYUe8DrvFh1NwnFXBQlZsCEomG21EdwW3BCKvl7Bk6qzyeOkfp94IairXR4J2IsuPE45HG3nqBuqj+5oHY8M+ecdGVTpK5ruEih7J5lCxj7+ms+7kpDBvfMKVqbpDrvNFlkgjQqSDSvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDyZr+Km; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDyZr+Km"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5983C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769394233;
	bh=WmKycPmVizBle7ipq/0mOtROwDSqK8W67wjyRiwUmzA=;
	h=To:Subject:From:Date:From;
	b=nDyZr+Kmm2gVKNiYh+O6X+eQtYofLJCBkDioW1KwPlAtzcTovEW57X9gbeJp5afoi
	 qVzI3Qhi1efak528JfOXbfMsp0MyIk9+1n89Fqu5wUWMwAV3qSA8hc4InGos1LjUYB
	 Jwt2GPDuD7MQRHYN1dAhXp+5nnvcT4VJgOjhTILdY3brQ8o4/CF9GDrF61T5dZSBgE
	 5Lp6ISlzClfNxXMxNTQpHSLSuBu8a46/Pg6UpQV4HvrwboJeVtFS4XYQQbDXHANty/
	 7efOHXpPqXXDqeUoFWob+BdVovUVGh6arE8eZf7lu0ZOWBgCfueJ68vDjhPsQItc8q
	 Qkg22ybjdRLZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91774C88E40
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176939423357.14407.7723554571249778883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20c8e6baf56ab6d84ecee204c4d59de9fa716845ba6b786d75de13a3b74156ba
Date: Mon, 26 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769394233
