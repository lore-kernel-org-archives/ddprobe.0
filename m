Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19CE7179A3
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735760154; cv=none; b=U6iro7V6vq/tq/qQELrvlJBzPAs2siKwKjLMId5mGH0GtTQck4C/TyYrDRwWK7rKLeET6uj7HyFtooZDMhZ3IR7ld7azJA0On3FQd75MBWkAT41Co/OKwONHXRALNfa0TNQ9cwToPyCRFteYx7y9hHvDl/WF6lN70KIz/1ou0x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735760154; c=relaxed/simple;
	bh=d1UZDSTaZ/jIkdFjsU9L8KsuP/Ez9uvTNv1rzyO9cFY=;
	h=To:Subject:From:Message-Id:Date; b=cye8FdvE0BQS4HpBC0DIHOzFN/6KTgjRPohB6iukPyqetInn3BmwrzhhnSt5lE1BFa9p+gFaVvivS/OdCPCIEV3SMo429y5r1YCrLmkdOmZhkVd7rVZl5k1YLaSUhoF1WXg97Pe2gFCGdWFU4Qo6Kdo3V64SPQgOVHOxmYddBso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOCijtFH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOCijtFH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AECDDC4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735760153;
	bh=d1UZDSTaZ/jIkdFjsU9L8KsuP/Ez9uvTNv1rzyO9cFY=;
	h=To:Subject:From:Date:From;
	b=BOCijtFHDaflYlGB9wSd/w6hTYnDDlxsz2aQPdDkK6jHH1ffmXTMbpg29qbH8Rxp/
	 1V6nUTB4w+p2EqmyJm3kpoLcJqOOUY6aWLiXPlzhf8QVQceNsITosT2aAHHzN2hiNp
	 84vlRsQhDEf/qLkiw9iNFpGSefn/o9YRrdzSgjdNjpYWieMKyyFfOR7o7BRd8oEzpT
	 A6nLt7ie2wpCEjLnu7z9Vyy2vNNdguHkbhonSIIrDn1FMdaxTK4iq/a2m7Cw8ZfS6s
	 CIW/g0x2DKp4Ki2q2J4Tm8xJy9CDbLSoQfEHFG9CpetcQuhuzwVaJqvjJ0yByNovRw
	 MYgmMihxDWzFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9398DE7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173576015359.9505.4127002492193961886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22412b519516228a08f54851417a2ed9572545d7bc34c4a07bec8df7acf32a40
Date: Wed, 01 Jan 2025 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735760153
