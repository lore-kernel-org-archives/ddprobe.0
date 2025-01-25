Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD0013C67E
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737804954; cv=none; b=VB8sdVFXyN61jHJt4J4bcARFBFUcCkVDJJFyAHgWTahB2CQYJ/oRBTumESgW0JfXLK6CV/9l95kuACTErimAzSUcRZYEU+BDFUR6LVBvRbgbShkzmwN4ffWZBvsYdBUkp+AJMcZBf8uYkjF16wggsJckbHo1icaGfu3IvOiPEoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737804954; c=relaxed/simple;
	bh=/D3VrCG1YVUx4mA1henFR43xDCaUCxhgj3yhQ7N7cA0=;
	h=To:Subject:From:Message-Id:Date; b=aimKjT7Hvn/5hWb1Yg5EiKwOi7eFpj4NkJdHZJrLiHiJC68WBzfjpwN+xEjutdFQ6tbsiCe5QzjNV257GWpWK3F16bLTzGdkzRs2Dr4Dur5saF30KRIaoDWmxykKUBC39K63k3ZghRDNKuabFNkLk6vF+cDo8RDEQfYPIqk4jpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNBJhrQ3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNBJhrQ3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8949C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737804953;
	bh=/D3VrCG1YVUx4mA1henFR43xDCaUCxhgj3yhQ7N7cA0=;
	h=To:Subject:From:Date:From;
	b=vNBJhrQ3fIkH2diVryWPU6jI3/29GBG1ZjCHkgCmjxOYOqReTdAQoEq3DdpRVrGT0
	 Jx0vSLa1Nxu3G3foIzTvO4B8WzsMijBU4+SVTrhzZ0T2vhr0L7eqGln99BmAY/n1DU
	 /18izmIuB52E9UYi5WGNLc/1DOCHHRu328S0RxkX3xUt4IdoC+3TaBHhe9oys/GAub
	 j1mCBh+WCb5WsXjZxtarHzQ073qa4wHik73s89y3b8nlPmYQP2K31/xGgy+XHKNxEw
	 60lLwB3peZB/ZROWb7LYDjntw12ftfPkn0hPkgXk8rGU1AYMlIJH1jUZJR7dEsGVPt
	 ss+bmojJZ+Szw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945ACC0218D
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173780495359.30215.276671679529149100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e68ab77f2113b711f2ad5a065a8ed28a3cf54b88629aed44f318863ed96d4370
Date: Sat, 25 Jan 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737804953
