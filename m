Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225ABAD5A
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767101634; cv=none; b=oK83zrGKUWj4Vh+9zU+rPNOajIRUMdloci+r0YWsa9KrWennTifHNjU2LZNItr4eadqLY6mvZmH/1jdBsU0yQSTrb0ji8t5OErrSKIYNQ+DJKG2dTUOhCAeMP+vqamykgO8k4D67WgxK9BFrFzkv0KBuK3k9J70sfvv4zBPDrus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767101634; c=relaxed/simple;
	bh=CR3xpGq2qUAgjpvAChAXRDLmHsoXJv/SGE6YclkAUJ4=;
	h=To:Subject:From:Message-Id:Date; b=QNfcgPPveJf/fUoaIyUZxivl8vyotLHMbfJZ5RVYpohWnihlSYfWQDyqF+WBQA4s0LUd0NQjgzsQe0MXJRDLmmTSo1NTrAqIVVUXNrNIxeUAtzEvzN0MH+iCMwqSSo4T431nsIeUl3pYP9KP2ynuarFIwbjYsFPUyUCZKuHtDGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9PQ26aM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9PQ26aM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9EB6C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767101633;
	bh=CR3xpGq2qUAgjpvAChAXRDLmHsoXJv/SGE6YclkAUJ4=;
	h=To:Subject:From:Date:From;
	b=U9PQ26aMPYpuJyDeHXWpyzQaqlDgs1svYxu/22CvAN8L2wioUV5RgDHd3ToFm1aoq
	 Zn7Jba0Se6istmMe8efgR5VX1GKnADNi2ZXkrakRGil4RWr4tq07iqKYbU08BhZIuT
	 8UvGLRbzUJUrY2CCXPJawX0WjAx7DTN2JyVlCHiF6DdgWF25XJJXrv3IJ6Gg+bKNrs
	 NSROP5ivmQUqrHEMyTNp4+pcC7OWWdQymxUsaXxGGdHxceWGakfsbFAO54HlUULRjj
	 ICrre/ZO07apDwcIpqeNZjqfstIuQ1C1om6RsxuXVCiWP271TCZ/nsAF91CiX5DW/n
	 3B0uar+M4Ucqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97937E95A8B
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176710163358.3284.15508885277255694249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcf85750ae7e70245932a9f68229cfc7f8ac7e59b9cc929fe90b4810138af154
Date: Tue, 30 Dec 2025 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767101633
