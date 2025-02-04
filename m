Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E17146013
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738637754; cv=none; b=EI844YiDKxEXwpLn9C1J14WGJvHTjaw0y84HYP2f+4G0iuRqM+sfqjXlsKeQgbNS1dr7Vp/81vml75HIPnkvYsjb4t+Yw+Mb8nUusZ8+99OAdsTNHFMFoAjidBdvERgv2+NrQibgsuMLvUmk8AQpC6xpu+aCQcBKAX2OWtochrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738637754; c=relaxed/simple;
	bh=JNWGq/Li3KKQcH6SUXUHSfIJ5uNTkQQwHU8QNeK51I4=;
	h=To:Subject:From:Message-Id:Date; b=GvGyfMQXa6nRVCLMrwd5R85ie0WJAGAH/Gq4sdoq8BukGaJ+YSmiicCOAt5ijWYBax1F9PyXtWnSlRyZ6ONgqA5J3Sb4fnAirzrCYwJCCweASjvel1D4LLyI5wrqxSmjmMi5PQglRCdhSqdTpb5XDgeZPqGN6FrNsvWElhLndos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAaWn3g6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BAaWn3g6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB0C6C4CEE0
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738637753;
	bh=JNWGq/Li3KKQcH6SUXUHSfIJ5uNTkQQwHU8QNeK51I4=;
	h=To:Subject:From:Date:From;
	b=BAaWn3g6Z1PiQol/BrSCwOD+O7gCuiOfBbdu9wwp3TIdqQ0+TuVzjkS53fxLLrhxp
	 3t4C2c9ZEikWggxr9Eq4QfbLnKt6au14Xqreg7czz2b7fmw/WJhYwGArOprzJgHYAv
	 KHz9NC2i3mRckQJZqNvvdMpXeb8x/46vKKSx7GIZvH90ww/d+RLZY8+KcNBJBpB8cs
	 9AkzB4GXAcZ6E0IjrWAjS3k6NtriqsdiZS2jg2bxOTqUXG2KzEevIHnwStGulULG3Y
	 0csHycO0qkPeDPlQj4ji7ZKb21DHdMNrN51uSkTZvjOWZEAYtG0q75hgHTKzBmQRVR
	 YBFDz09+hBhqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943E4C02194
	for <ddprobe@lists.linux.dev>; Tue,  4 Feb 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173863775359.10317.10668537706650748697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5353a5b3f67d871bcb78b0b29e9a2733d26c1f760c7a56dbdfbd6e1592a304d
Date: Tue, 04 Feb 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738637753
