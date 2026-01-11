Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0F11FB1
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 06:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768112034; cv=none; b=P64jIedShnai5MIA5EvoXpwVilbqzXcaob0tLPt33HiYWGUehYfILonG+U7lWdHJY4nIcwKqC217QumnwVmsesgAytIzUOitrbeinIATc63ht56RWiMSaF/cAN5lHLd6POHzdjAuzfeft2n+l2S+EJoTnJAbYWdOpHxjKMkVgfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768112034; c=relaxed/simple;
	bh=Et5yC7R7xnXZKJx+djQLZAxlrrdMSV/dgU4E1qzDHLQ=;
	h=To:Subject:From:Message-Id:Date; b=GCWqup8Y7zTJWYmMlQ0pZW/GL4OeJdVSfp/iW3J8sMuTLMuPtCEfMelrFNjMEnNs5M/BK1fLj9KUuvhaziNYqvszK2ek5cLHt9vSusxp/scsH0vr0+3AH0LG5saIAkX2JMLzuBdg0gzpLlMiE+T7pcHMm62yQCv14mVP6+c8caI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xjhhrmf2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xjhhrmf2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7BAC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 06:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768112033;
	bh=Et5yC7R7xnXZKJx+djQLZAxlrrdMSV/dgU4E1qzDHLQ=;
	h=To:Subject:From:Date:From;
	b=Xjhhrmf27KfFzTKw0vw/VOpeCdi1BPUCORPtnUtZ8Du3KYd2W7ZUE+z6lg+yoKMqv
	 QtQYwIqoqkhOfpx0idU3Pxsvuce2zald1qSxISpuoZ9XmTnN3NTgMh/QIOJPkulakq
	 UgqmQUuwRFbpxPttglDnE5rohw+iKca6ST7pF15nHa+4f5vd9tv7LMHFktoE5R8XjY
	 stJKRVsn9SZumLBd1LGKqor5Wg5YstZ/eHvvZOVL0w7VEOr9esm5iXHEBiL1QzL0wo
	 1ZTUGgFk5/10zdT8S7F79C7oEHOSlTTMfjJFeTueSDd/0IaOI2/A0UXyr39sAytgXN
	 FM4Uk1NoIhhxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A7D25030
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 06:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176811203357.12678.6253717315159358821.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e0749912489fdba794a83063d1e9aed3b08e60d5b1a7128c01c33aaf3726b4c
Date: Sun, 11 Jan 2026 06:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768112033
