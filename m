Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C4E625
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772934894; cv=none; b=BmOXE2le9z3YQcQUUlmFct1iVVhz1BmY5livUreX263FNJSMWpki627LEjrJRouB8K/5Nm/0uDiGZtAkjb8D/wiFs2nyrreqgWiXVJb65PIxdaD33OOV77nUxuLxt/oFYfnGSJFotPey/FgMuk8KtmbpPbiiU29bOrMTyYT09ho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772934894; c=relaxed/simple;
	bh=vAiOxJxbs2xUXHuKcur74WshHTwv4UD0v+gl63VPDG4=;
	h=To:Subject:From:Message-Id:Date; b=EOstjQZ9PDW2LwAjbJA9yiTJsYUUvO4i00Ep60WdpSbxOxg15IdGq2wCTF9/9935OldIGqZms8COdpDPSreyclGf4ZNOp/eozxYaOM2Z9TvxRB5o10uyN5NHlYO5TdI2f6KLZ1LWVia9RbXRxDCALFgYJLGCF473btJZRFUFPM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mBFjmieY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mBFjmieY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67FEC19422
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772934893;
	bh=vAiOxJxbs2xUXHuKcur74WshHTwv4UD0v+gl63VPDG4=;
	h=To:Subject:From:Date:From;
	b=mBFjmieY0C8G2x2uLjAFy6tgxnpyxmHtjq1mUhWjgj5ViKIIg5w/BEQLExY7oWvnx
	 Sun9gKWLDezcRHyaTpkGpdv0eOeRToALM3eI4ynD07vBunKmW6FjqdGWKXIEKdN49h
	 mCOdxU2f7K6YFLAKejF17087mhxxiDwzAOVk3XmADdKlcoOxoftzBZQaKV/nWdTO54
	 wcjES02Wmhzm/atY1xWsa5g0VnbX95cp2n2xMIpZJ13ncUUCgME0SAYvT5+EVrw7c9
	 bgV3gtwnnprYTV+G/0p5r4+gLidXJ5IEZzSQlZyGjpoT/eSYXGZggn8rqOUAt+/aGp
	 qYxg+oOMk+mGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CFFF55123
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177293489358.21821.14134601901202115783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ccec04c0beda6afc4b1a9cc9d65e9c2d0590e28401c83faa831b7ca4d8d20c5
Date: Sun, 08 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772934893
