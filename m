Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1592039FCBF
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 11:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777288054; cv=none; b=PpSpBMe8O1IhVIGPFkRbtZbpWlsqluDNNCFb3hoZ+I6DCjvrcC0UJVIzyjfPzZsFwQqCBu3jjv/lrYdJ/ULHmgRb7zbmrXwEU+5WP6ZgYm79Tde/dFiecxDJYOkAyBJ1ntF2/uuq/2Jiv8P/almksPrPlAbVo8E/gYYM7Z4LjjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777288054; c=relaxed/simple;
	bh=/nipk9dXp95ayr2f1ynmflmzPCACPswWQGIXo44bvos=;
	h=To:Subject:From:Message-Id:Date; b=W4cp8aBuc5STtVdmMAjX8xiRASdwBzkR1lMlHb8dBikvpAuZDLgXkFPc86syqb/9i16VB7Tv4FBGwGnKG5kwJ1pPG+Z8sYIdN+b/NOrBhQImxAo3KpyNeH4I+xW4Hh1dYi4cmv5024j2XixOa3fmTz4EoeJ9lBxH8pJi2Ycimjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRywM9qH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRywM9qH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBAD5C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 11:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777288053;
	bh=/nipk9dXp95ayr2f1ynmflmzPCACPswWQGIXo44bvos=;
	h=To:Subject:From:Date:From;
	b=qRywM9qHTKs331N9d1HtsiuFb5L4b8yW6IXC8STNgU14sG03EPamqSzfeCwzEKZGN
	 IfTEilVUieerfg15l25O2JNMS8uqQYvlYo3wbuaOrXSRtiG4yVvJBWopCnEPNuxhuj
	 0+I2+3vAQQ0gJ0dA45CJstj3UjPxcRFGIfBBe7iaTsql367Xck9HbeWV4cIz02vRdy
	 5dIjyzZLwsPIEuJ3UAxm3GogW8c4/SA6ph7RjSYmIOVO64HkJoqAmJMjOgV9Y6t/25
	 De1MLIKj7v/3T6lINCm9jBEIjpwDd9Y9VR6Excy3YtRtV96ZxLgAH0Fil4Zz+hHiI7
	 snQHuEbAGnd5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB78FF885E
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 11:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177728805368.6319.13180460600020026362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57888bd28458c2c8fdfb332adc057dc98e63d195a3e92305e528350bf0244a37
Date: Mon, 27 Apr 2026 11:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777288053
