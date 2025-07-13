Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5BC33E1
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752448194; cv=none; b=cb7004D3Kz9/Bv+/m6epBU1aNHrNun01JYuiy9GgDy7spVFLD9Th50lNLTwsMWjmMM5FLxSIRs4zyMlDM7pWt75o7RzoUq3BMvgR8PKj0Su4StIDw+fFCk3c7JRU73uBZRX8MxsGH3dsHqaTCBUsh8YVYSgYmZMRHzI63t2h7k0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752448194; c=relaxed/simple;
	bh=Mxh2stI7YFZ+JDe0CvYZEeH7g+FKKXD02Q4/QfTaNWc=;
	h=To:Subject:From:Message-Id:Date; b=svcITPZqRlvMwiPT223GDcz+DDAZFS6qTlnZT5Z2ycyH0iZQgx/NSw6tDE42ScYbLOUoNTn9LujAAJN4zZLgK9KGDyTH10SqfDePLEoPcs+WLcmGd1Q49XruQT/tE3Qe31S5hWGj17E8qpZqHvtvIMNJgIvIfe4GpEz/1d9KL1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fnlZwkWG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fnlZwkWG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5594C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752448193;
	bh=Mxh2stI7YFZ+JDe0CvYZEeH7g+FKKXD02Q4/QfTaNWc=;
	h=To:Subject:From:Date:From;
	b=fnlZwkWGQpwmZN05bqJXgdCImSgY8NKWZQ0pKXyQhnU49PNT7lGlhrM4i2eoN6cPX
	 J9Vo3Ado3Jk3sUjyPsKUcHidgW6x9uy5GJZUsSGRhX3x8Ylw5P51O7f3Z2wndmqcra
	 YrT34JStZxqSYGcltg54XtVE2/b4lEraRnf0d0jyMeYDUmMaP4OJMWVa+Pzg4SfmXj
	 /c3AnzOl3tOiIKc/UqfvlSzNgqCOI81wvc/PwpyqRcW3/sloKE/wWwOuWJ6qXdhzPR
	 iYEy/4U8mHZ25GOJMTbFPoDnIPICtpXif+q6mgTc3PuDhQw94gWGnqliyM/xPwE92Y
	 VizLpqU9L/g7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C2BC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175244819357.26389.13584296129230517982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 377d8c37d9e9d6b9777eef578cb26befffc1a48aa7dd449c0e3fee781c9fbf8f
Date: Sun, 13 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752448193
