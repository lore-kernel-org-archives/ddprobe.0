Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195DA28C862
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768088034; cv=none; b=sEaCJ4be25M6xmJBcEqDwYhrnouCWgzWOoDzSwf+qRIKqZfNBieu2Tvn0vHSPpfwgrWpjHNu1lG8QwHX0WDPSniCzujMtNpfaDWyCphR1wt776eBEWpK8D7YqRjqCBnERwab0P9GefZvCggZS+yPyg/Rr/syyGciZ3H94nlGpCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768088034; c=relaxed/simple;
	bh=3r8bdVVF8+6w8ONH6hfsjRX7qmYiimKAjr26fqEnmbg=;
	h=To:Subject:From:Message-Id:Date; b=XrfeDz+8mbDb/0cVHfcGkZ2r3lztLJzzd7lSydape1GcHcFqV70pZS/1U4ik4OXdbBlLnNNQn8Czn2i8XqKMdNh24eLUDorMSjmb+zwmDj9imcduZKLYqIVfzsscfArUuDEge0O1lrHX5vdpKUEj0/2j/z0rb4BzLVqx/pBjXUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=csROQQpQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="csROQQpQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBF0C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768088033;
	bh=3r8bdVVF8+6w8ONH6hfsjRX7qmYiimKAjr26fqEnmbg=;
	h=To:Subject:From:Date:From;
	b=csROQQpQNAafquG94Bs5hfwqFNiXclq5sWl/T1UxB5FlE9nmULYYFKxnUMInkdQk9
	 +gLfNudsR9db1tS+KANUPFP3VXofKvowlSx4yZ76OcrK3C9PMkcyfJkxxkMgjDB4KM
	 eWRopMRvn0dcmiaiso0jqe+kPBlE3q8KT/Am6nNfxB7hu9Ny9QwTVA3A+bTQCAaCcZ
	 kTvTM7OTS7azgeKjKEHRMqohmxZL61cMIaw3Ca/4H0KH5AGb/q2z8kP3QjeM//Ckd7
	 BrgYeSkzrxB0EUpWhI9GnTCL2+sqiM5dG3TB1Z5EsINbDDYxxYThFp/dqdJB/rPypo
	 r9stjDthMTzMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6FED2502A
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176808803357.6599.3714783027323620050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b8c2215a8fe8ca0d8a4210cba7c627484b5c8de62f44f69ac9203a5922cf475
Date: Sat, 10 Jan 2026 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768088033
