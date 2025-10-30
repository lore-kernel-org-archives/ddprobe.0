Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02FF63655E0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761840594; cv=none; b=NK9dGGrAgSEbq+gom3jW1XyQmbO5SzzG9OWO8aPVa+WAqWNWTjCxKgCKRRoDokfi+rnz1PKWRLNrQHyy7MJRJyK87RL4fNJmO+SsoVq5K3m/APfc33K9oqdCgd7mbpABuHPFSf/VC3orx0xPnE//BcNvaQ4Ra17BQi9LY28iR/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761840594; c=relaxed/simple;
	bh=1wKkQaVdQ9GXr4uy6KvrIQ4rAl7wJSiYQmvkD3XdEh8=;
	h=To:Subject:From:Message-Id:Date; b=djOIkleQxgOexMyw6tt2GRVo6FcI+oMJ1Sb+qbNightoi8o6xZkXF6T1zu1OdrJ44SsIgPp+mVVOmNU7gzsrSIL8z2PtPtH9OjGQovchFw3/y4io+EjusPwyBPLcQavi/+THGiic/RfD1Up3fXVxdjA5COuHfMimWIITykMD8xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j63JS/YG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j63JS/YG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8DEC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761840593;
	bh=1wKkQaVdQ9GXr4uy6KvrIQ4rAl7wJSiYQmvkD3XdEh8=;
	h=To:Subject:From:Date:From;
	b=j63JS/YG36Bj3IBlgplZaRK1pbid4JcirDsyf5QgD4UjttSkcKPzdTd2i/IOYlDBW
	 07jy4Z0cPCuGZowiLtv46VEOJN5tBH/4ELdQUvVuLiArdmzw46lgNCntZFe/bFwkLj
	 dJc8AOKmj8t6DIqjj3gH4vinYylQ0LD2cA9JqGUAuqwjW/843JmhRtNa1MZCK5rdIX
	 YHgyuYqQCp3HalXhVk/34F3T37X7uzGIc5kHDn7v0LAC+9G+uR9cdNNmS89mkf5QGT
	 iYKDvuwJEOLoM0Pr9cZKu5SsJj3UlnDJ8SNVoImBAtZ6FhZDERC9a2wip6OmVgJH1e
	 R5WeDgMe9JhRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC4FCCF9F8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176184059358.11569.4988005489272703521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d62a69f61c7345c3cd8931c043597cc0a8bad525312a1c3c85a61d63b285181
Date: Thu, 30 Oct 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761840593
