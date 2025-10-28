Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B29B18991E
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761690594; cv=none; b=KeS501nU6tqYKBaASJdBj07jYDt/cyJ1ztwQsbreRhqMUDIFUGNNWQLP4Ht+Kq1C5SOUXSTfnzEDryVv3/tGZ7BA/q+D1qamWVwU29z4ZIod7fld4+3bUON9ULUpfGlNyFBwNDdmA11pFnULPBZ6uvZymenEywzscSyqQilE0HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761690594; c=relaxed/simple;
	bh=eg9ocHZtXLC7HILhEGSguKYeuyW3VP5IcpBmXNw/ucg=;
	h=To:Subject:From:Message-Id:Date; b=pEp8vEg53H0LMqBBYYZmqut9O1ROCwhjMNZXYLbMe7zIL4/p5CJSDR1Ea06NNYlGXPxP4sW6dgh1aFFJj1u0LJ3WAQ0bdNpthPOtOrf+pLZ+4Xh6yzNO7dA2NtgGGX/uRh4a5M+PPl9W8A9i9wNhDlweWk2+cFyOgVoxrZsG00c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fs2b5N6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fs2b5N6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47B6C4CEFD
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761690593;
	bh=eg9ocHZtXLC7HILhEGSguKYeuyW3VP5IcpBmXNw/ucg=;
	h=To:Subject:From:Date:From;
	b=Fs2b5N6FXzr77FNk4nzaCb6poGderSn1TmIwksCA22OR38hLaflk2iVrgPo9jrLAo
	 eiMlzSSovkV+FUp9UdE73t4lcpLZSMLCrZ0u6loks0oawMSab7yoCNl1zl4W/wlFQ7
	 Ey1xi0EVWQgXYbHNIpXtEcffmMPp2TqLkosTNTLYSk77rwA2P35uIVRNZp3SOaYBci
	 9q3OaVdVUeaIEX9cyKUwWbUGCS1xD/4AdWNX58w7Gmp3LneU7WT7OpE8rS+wXngiPo
	 wCU1POTEa1c8NihC+NtdRUhUSX+vjlG7LuDevv7D9N+a26/EkTkPf8GwBF/F2JfSkQ
	 6JQUp/BveZs2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9117BCCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176169059358.7461.17988274511205725401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7973c99522c5d56553c518913f3fdda4659a9e7abdf5105857c5563c01a3d5d5
Date: Tue, 28 Oct 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761690593
