Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2F6A30F942
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 16:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768927434; cv=none; b=LOYQ4b8T6IulLY9EqXaY2inFbK2kzIGIzMAmZ5a5jue1lIPhhpvxPK0cz9ZwCZA1F4OG/mqtoILZ1OcjA1oDWLIuYbWos7nW3CgKTGP6zCud4sCZRCuT4/rJFSBqrlkRjsNdRfgLt6tG0F2LkZQRDUP+t2BSfluXOCy73tBNpG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768927434; c=relaxed/simple;
	bh=uEz65xCUdRfnbNWjz1QNHuHnhrnVPu9zL2nHXpV/OwI=;
	h=To:Subject:From:Message-Id:Date; b=Mhv+t+pRCYsyWbHhLNhUmHNKMKFiaoqlufV9Na6xanZrteVBsc2A/6EJMZg9QDzE9Tdbf7WFNyg8yy4uveL35UHgU8DAAFHDrdmK3n1YZCak4JR2rOfKCO/Zb6SjN9ZlsJFv7SNGgeLCDyObrBehnJzmevF+4zrKYrdjzOSHo38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=muVM3qjr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="muVM3qjr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C31C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 16:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768927433;
	bh=uEz65xCUdRfnbNWjz1QNHuHnhrnVPu9zL2nHXpV/OwI=;
	h=To:Subject:From:Date:From;
	b=muVM3qjrPCJTITlttv1/GCBfKbWU6Cyjgq7+8WcLtrW52Y6jBpQKHvZSmX9JavJoz
	 axK3RltfN3RYcxBoFKCB6ItBxiUs5zlWjKDGsf3qa9zwHbvlkRZl+7XQgJkyyggbAD
	 Lzzvp5OmVS1tp+58GBnEOleORX5YIs0bwaXN9FcIuCzo999QRH8JaVlbsD0IN0qV1+
	 jRRGpVbdUxgCNDFNnJbjKAk5XLZ9acxjlM5jsCR/fBjFhyw2yfqVTitbIBqGby6ftZ
	 h3b3DrUwVG3hqZ/fVOwp0vzPNq0UDfc5CNraZdCVr13WCGCvdu9j9t8AGYlqeuOnO5
	 8DbAb6Asz30DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92164CA5FAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 16:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176892743358.4024.8896921059411583614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e62cb9b8bd1cc4b96b06c01300d1af9303aaba22d0706b25ca164e85fb87812
Date: Tue, 20 Jan 2026 16:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768927433
