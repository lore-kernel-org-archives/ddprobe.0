Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4BC194C86
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738237554; cv=none; b=RD6zBt2t2PQeY3PH4ZumqOMZrExRqH/cqwjADJdhJrT3XwFka0nGfeIG6g6s57IlUgIuG/ndeAm4SGeEtM9+WdDvrZvQS9KRz+35FuJqmvcvGhDz40D0wPWBNLn+nh70VN9Hz7Qa74U5Hytxe3MfhsGzKCjBqhL5TB2wUP2QJGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738237554; c=relaxed/simple;
	bh=X+QcombfuIygko0s8+OlIWm8Tx4NG1LH0rtdZutDzGs=;
	h=To:Subject:From:Message-Id:Date; b=nmVxBhmst/cK0i5ygKwz/TWaIyhPIlcSCfrJlVJVETyao4aUNFV0VUtY+HplcmnjqK8AiWNZMQDys8UKIc8ZgKQNxNiAGnB4y4N5tsMim+uMKGtfjyKEzqg5KTG3A516rJpHlF5zoQPjiUsjrP5y7EmgEfWTz13sU4xzOGqT6js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxNLozcp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxNLozcp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD8EC4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738237553;
	bh=X+QcombfuIygko0s8+OlIWm8Tx4NG1LH0rtdZutDzGs=;
	h=To:Subject:From:Date:From;
	b=MxNLozcpYgCykWR5b32WkV5m8G/zg81uzB5u12VOh/ZoDfGfCyzsdyttluN1e7Q+4
	 zroY1BIlms/b8q2nw6Itad358cFMOFI9kV5AnGJsTn87ZMtDiSi15+C0E/nf//aeTH
	 +C9xtQoOFpOHdYXvGgEV/6VZnzJPRj4WJRiqrP9wqQga0VTcHtcl/qReQGA1QjLRAx
	 Itvgt1MQhOe9N9ZNqotV8ugXR/w97ffDniRRKlis/4Iq/S+g62MEJy0EBFn9DCbKBF
	 1Jh03pTlVXm8AuV++28XfQjgQfFneqmlTNWZa+Q6Ti9QWwBQm2V6QZieHt/Is4FSdj
	 C4onT0+CTsvZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9723CC0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173823755361.8087.4851426531174607651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa22aa91f33b41946192ef135acc6b2c208a8516033e5fc9ac099567b88fbf8
Date: Thu, 30 Jan 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738237553
