Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AA86FC3
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 05:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763875914; cv=none; b=qZbZ4T8BMsO1awdBXqD6pJuNqhcOXUrHw9AsksC99yLdGy0DFsV/LOjvhmDgF0VWFrZQFOhFu7K+Onvwan2LkhtH0xsJT+gAQDGi2gruaTTcEFhDr9YGgveXF9ecT2HNrXBy3yJpZxT04Wf2+DTrx30RkaH+A49Zm6QtOJwftp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763875914; c=relaxed/simple;
	bh=O+KOlPrQ7t2DcmjkQdDWQf+Hh0b3TvgSM41sKuIz5R0=;
	h=To:Subject:From:Message-Id:Date; b=mvavbfOvfqnov+h1Zldpwd2lT1E6k5fdT49fDPzJ1q0Y+v21RnPSxW6g6SpwEQfF3sBweGcVToFwtdaRdigEs9Lvt75fA3tKHGVNK5UbqnN5GlUKfs0/DycW/fwAeecrG5gyeEvzd29XcgbMRn0qVxkimPifxoXKV1s3QfDsREE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trDdTfzW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trDdTfzW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C82C116D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 05:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763875913;
	bh=O+KOlPrQ7t2DcmjkQdDWQf+Hh0b3TvgSM41sKuIz5R0=;
	h=To:Subject:From:Date:From;
	b=trDdTfzW/DR/hGK7qu+t23YzgseaK0xn9WR97Z+2HeVvwWSbZFVbU1zbBuqQL8AWm
	 kGQoDYe7LtJ8rOvM3JTa1p2EdNsc2Ie9JgjT1Rv7P7qdvnNrLyY83ntu2csphTfcD4
	 MQg8c3pupn4mgGCXzeHiu6uip4kJuhHg61KK+Ntzat+mDQ7IDOk0Pg8knoeWAONF6a
	 hovswyteQ633MmCLUVDw6Iv429T0INQGyUFCRZOlH+0pP15uAS/luztfQff7kIz8wE
	 KR8oKTRmVUrVTJQ+1RvvOme82N7a7S0rZ7i4vvQ4XyA4DGl/jwPf1p/3Ug4lyjptPe
	 8zp200V36LqTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91624CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 05:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176387591358.15275.14618783048349398386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7cd8b3b2b58ff1e470c2ae8a5ad0ff037951a6738ff9cbd5831216af3b4655d
Date: Sun, 23 Nov 2025 05:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763875913
