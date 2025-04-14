Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324A023D2A8
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744644594; cv=none; b=nGPsJJB+uRH+pWPdJKIzJMYbfiAo4Bah2ArGax11j4CNNYOzxTL+k8uvvHzIR4MO0l6zQ+oawqsmweLZfhndgES9QTzvzkTt8z4rX1lsKiLx9wvViH3ngkZMy0dZ8lKegU4V8YiDTxsmEYW0Dyy2/tHqVzaQT8eNTokrzY1AV6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744644594; c=relaxed/simple;
	bh=mtwe6GIGphR1LDbsERx6iWIiAxBOLKfZe7U3oH/xQlA=;
	h=To:Subject:From:Message-Id:Date; b=s7lUskkqw4BoYYrK3IrTXNDVtFuLydyOUnLN1ypSnhBa2u3Csc03zp4kVFZys+RPBEEVzHYHRYfk7+wCVRaSGs0mWPpk1tLVAUtbZBPptzZYHhTYkvirv3q+Ro0lumv8QfrzOfa1iXfelPU3n8SVAreIvAyRlTBU+n3loK3vpY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oRI0HXMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oRI0HXMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEE0FC4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744644593;
	bh=mtwe6GIGphR1LDbsERx6iWIiAxBOLKfZe7U3oH/xQlA=;
	h=To:Subject:From:Date:From;
	b=oRI0HXMkA1PKN9Se98uOTqZ8TXFqT9G9PJ8BsMG4UriHy/7+v/CGq8GEgIh6i6y73
	 mc5YHsrUkiWw6J+a4JkW4zbATe/7Ul/QbudMCxlO3k2I6JWKx9EWaAhhVce58F/oCs
	 dBFRsP8X/B4XJeCUDZ2uqzdsYekKdINHj4rZJOxPEVG3W64eT2SWZmWntWXqkJZtLr
	 8evmyBgeI1zK+dV5SaEtoK+2qokhskNpzjTVRDpzciRe9RehoBL/UCq9jFwRiBkaPi
	 tF7uNzUdTXjT+1HUdqTD/JW9qkRuEEmTR6684bsMy0oOZWFH12TJ3jbSuuVoq6eapH
	 s6T82bDXxh3gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CEAFC369A2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174464459362.24261.8288042057966914193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee433d63eb0cbd26bcb650f3e7fab2fb3ce41b845bb5f5b940b5e3f1b1feaa76
Date: Mon, 14 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744644593
