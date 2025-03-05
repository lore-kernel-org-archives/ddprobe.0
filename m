Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F272561B5
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 20:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741207134; cv=none; b=NxOnUyoNI79kpzV1Bz6N8lB+J4pNkQtLkVC6eEx2t+AeW0JZ44D8pgu3NKxUeyUh3N28hwXNah61vhnk7c2gS7fEQ8gakUg1ml6qw2+HfzzG2cAYMnkDSDQ84lU7qE3oR+O75M9K2LIagXVe1P5GwqZgCEHYFC4KelXiD+25+mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741207134; c=relaxed/simple;
	bh=JxQ0svoCkFVoGtLUdAl7ShwwseC3p55zhDFYudSR0HY=;
	h=To:Subject:From:Message-Id:Date; b=TcsurBh9MxkYQZyUsCF812lwY0O7LebB7MX6jyd8QkYCYhIooOzIAwL0+ZnyFhjdUGxnrB+htfwBEyO4iScbCbSx8S3I9QVYHdGyuqnpBV9siBeej7Dv8MJ5eB2WW03F5ERcHGdQMUg7tK4ts7u8Xlmm6l5vLOaIElHi0YZU/PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3aPnJvm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3aPnJvm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3897C4CEE0
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 20:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741207133;
	bh=JxQ0svoCkFVoGtLUdAl7ShwwseC3p55zhDFYudSR0HY=;
	h=To:Subject:From:Date:From;
	b=p3aPnJvmj4DGk2OHPZfe61GnYvkewbeUZ8PgppHPdlSe6wzdfF+uRrVDRlBAhBD9O
	 8oGaEw8OeZ5u/Cp+9iPqEzBBNeTMSjVvgMoRBXDMcDJpQTeWg/4qu/YqErLKsuIx2E
	 3mPFOXVI/OILdomL7HcLkWvTmAsjtOpHG5Y2exo8dvovL8K7eRuqXwpFSkD72uKnjX
	 2ytkNUkCXqqy62IWlCOi2A8zApazIXpvYKiZvjQRdPlwCEnmzL1GaTCIzubub1xF/H
	 MH5ASpjytycwaZExesJqV6MD2bpOGr2+nlqdmjLD49DFO6OLP0YS0wMekuO9kb538p
	 k68E7/cSxFE9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935E2C282DE
	for <ddprobe@lists.linux.dev>; Wed,  5 Mar 2025 20:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174120713358.23592.14366659370172400824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 782d87b2c8e5ea33bb1f8c53db2a622852525f91ef4db83289652d3b6298800c
Date: Wed, 05 Mar 2025 20:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741207133
