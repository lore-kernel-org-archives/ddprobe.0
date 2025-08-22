Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA4F2238C3A
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755878994; cv=none; b=kH1zkr2JU80cfiNvsPxb2HXPw34SSUxMMUZTQRk2ywgTtDNysHids4vbQk7Jwi1ApYx2SoBC3cIQxovP8hcfH19lex9BmILqmfbdTniEIkPOT30t76YIIv7F6p9BFhfpWr8BG+HESnXra9UpWVDYTtggSDASXF3dFWUpLTOIpm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755878994; c=relaxed/simple;
	bh=/dRGmifREdPH6q9F2n0fgdK2E6Naqoj8lG2jT0PLycI=;
	h=To:Subject:From:Message-Id:Date; b=C+ZPcNc6P6eUhO4iOPT4YRMz9m5CTjxn4Y8ksf35C+P/z9A4dBQSVQKu9nxobf3TJKcFuxbgQEhkbuonHM6YRxQRBZdRaXs/jpsW0fkV7R237tHMHmRn8ExPqQ2sjRY+oVVdVf4xpWy98LN8RbUpHTogneykLF7Pv6uu/8/h2QA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pR43FwQi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pR43FwQi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CBEC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755878993;
	bh=/dRGmifREdPH6q9F2n0fgdK2E6Naqoj8lG2jT0PLycI=;
	h=To:Subject:From:Date:From;
	b=pR43FwQi6UXttLaIF0Z3xZZz2g6Y5d211KxOoN3tpNG9mQL8D+s+NF3SYPMs0alrv
	 1k7QLd5MX4wLxmr+IdM8LJ28VVU7NiX8149s8GnTv8/Macpa4EHPcJzz3jmqdA2hZh
	 AZSAuzQP+WM+v9Duq0r0taejsj2jQi6S66hM5ikcwhHWp21Y0F7sSGqwVdj9c3oKgc
	 PPkBmqrvoRj3JoixYuP3G89cX/ilJLVgOFL1uuAQFfEJpdclx/6JU3OASpAwf/s+tw
	 kGCk2bmQsjn2zDfiWU1Z3e5XKIBis77rnQMI77mC8ZoLh8A2IlfecbQ6svLLsAJR3s
	 3PuiLRkYtQNoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C38CA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175587899357.22177.12324800819255312764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c8824d4f62bb300b5aceffe12df008acbfe7a05dcf8523b42137a2b299eafcb
Date: Fri, 22 Aug 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755878993
