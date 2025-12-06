Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1591FE451
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 08:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765009374; cv=none; b=XWVsLpTlyAq648vLn1NM0UteXoRDufwFcmpQer/lyYvSdrKlowc+55XAUw7h0eZupFRphXfSKuhU5Y6817w4uGlnVHbL0rnp9eaj6XuA/KKGxz1jKgoUNYgHLSd/9d8DdZCYT5awq3WSJfdNilmHgo9UsZmhIz5Mt02l1lQztfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765009374; c=relaxed/simple;
	bh=FJYRpTfubtH5ZcDzEoVm9evfblofK57TifNApp/jgjw=;
	h=To:Subject:From:Message-Id:Date; b=rEOocTQn1RFNUbJEtxPL9q2jQblJh+EoAeLplq5MEB/VYO/2xWVd4WFBG666W0pR3sZAFhusdCg26S3XW5JSlBTaUzzOF48//i8OKjv1gUob6x8trBca/+UujCjXyNZ+SxgfeLuf06pCbj/XBuozeDhGbgpT3lKr0X6HElG7VB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbvmQYRz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbvmQYRz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB324C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 08:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765009373;
	bh=FJYRpTfubtH5ZcDzEoVm9evfblofK57TifNApp/jgjw=;
	h=To:Subject:From:Date:From;
	b=BbvmQYRzvwzsnzJXix/o8lEi68NGkk+Dz/QrSnpdG8hqrvAeWgWEY6cIYxOzUSkFu
	 y3eqbkjLsXbbXBMBl69tJ4bDCNvBrlTtdMCWBt2XOwFmWJoggRScK0G5HzqqALeAJ5
	 KPkC6sjcJUW5r30dKnFL4dpWYhOjlbAyoLYaoAXUuA1sNkKeL50ibu/DEW5px3vdTR
	 BXV1gqreE3nFtsRQ3vkrIJ65P1DwugmUZvoOsLOJaL52gvBljHKyf8Acdj9VJSsuEY
	 Tb/LugY4ymhWGsYRVwUOWwqyIE5lRyA+E4U37HpRhulW6EWuJY0XJRigpeLYLqw/U+
	 CdHAit3qgwuPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97800D3ABF9
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 08:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176500937358.9588.11019643888767504997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 221c6a7b15e36f6e5560023055db638ae38e7945b96c1589f7a52fc999721485
Date: Sat, 06 Dec 2025 08:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765009373
