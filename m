Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0FB380FD7
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785584435; cv=none; b=DvTIXOJv6kHBCm3SFZLWPnFi62sy0ElYqzbNLws9vjU4Lio1CcylCEGK1yT5Yuzh0SM9hdheb4J4FM6AgfVsL9fjBpnGPdMg/JyywHx1tLciIHcnd5s4ZKhUlhk/EkpuzbLQ2lf3svnxYxqE8Bx4wXhCAH0NgA5ZRI0vmK5NOVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785584435; c=relaxed/simple;
	bh=+glABGFbO/Wu+VlID6OJKgU8u0V8GZDJi+cIJaU72uo=;
	h=To:Subject:From:Message-Id:Date; b=libn0etzCbiNn7RaONSrDQx87TahzYRD/bDjZWcW+m9rTmDpjQoTogEL9kBouN0wym+kV2g6pBQZyE+rvFYAZ/vKmSz8M2OaFVeDwJ51dMAJy8Clw1/gJqaOeTwEodYRAp10RtpWD8jMjv0Kb983ygDvdiUt3ess6xrboBfsEC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CcgohoCY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CcgohoCY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD03DC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785584433;
	bh=+glABGFbO/Wu+VlID6OJKgU8u0V8GZDJi+cIJaU72uo=;
	h=To:Subject:From:Date:From;
	b=CcgohoCYgG0DaMOraLwdY8tr0J3J0MnjyXAWgdhuBprTpiG+yTWPW4fELE6f/I3Pt
	 kuKfcbKkT3B4Zr/iz7LN0stAor8aEjCqf4QhX0ZdiVAV4EkJac7DEbWD/9fOaDOzzN
	 I0WoDI9ifFJgpitxVq9NtfLSnW5O7Y5pPUOeNpCDmlKvnge1+fbaQwB+GpwIbiKOy9
	 SZKMOXZ3lbXikSPIzXOqAzi+XSfPKWNM6U1SayKnCMxo7yo3OesYpyfJwoZOptq3TL
	 6jIx59sqpgiITJ8l4tAgGfujmzi0wkFozB0kkpMYF+XLNg981+xa3fV9GiTSXuAadE
	 LFCKX5/+g7ohg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA184C55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178558443368.14015.7198624648207946429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9339bff124ba73cabf0af02e5e1afb215a9de2bdc63dc5424fe72824eba023ea
Date: Sat, 01 Aug 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785584433
