Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253C43AC22
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755284994; cv=none; b=s1LN6FK3gAY0pHmMP+xiN516lMCC360KM6siwvfaUFxbkkbgWTrlTPRP1cftADlS5iXuhsyo1CrAxicKG35j+Ap/5PmeCAqCtUOaz8fc64UP2v6QpCa97tYoT6tfM0arwtS/rhSmf2zD7MZfD1m9ml0geb/OmnUtG7azmGrgu9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755284994; c=relaxed/simple;
	bh=JyI/Q4T+/3L5jGalSmO08QNJC7M5tS5s07k/9cts9KE=;
	h=To:Subject:From:Message-Id:Date; b=EEOOkpr6Jqfpl4eBrrGnEa9a2ZE8cEsg0ecEJXB7fEUCjxRYDcYqEzNiGam4RA/z0jHC3Owzwzh81rxWiMtHdmYNGufqO3Vi0bOgAOJxtnACoSmajse9UOaShv8wbzZ7AqU2gIYcQq3p4aT5SfPm1JJ5zlhkYmG0YpR4vVHw2kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=neuJsQwY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neuJsQwY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CC0C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755284993;
	bh=JyI/Q4T+/3L5jGalSmO08QNJC7M5tS5s07k/9cts9KE=;
	h=To:Subject:From:Date:From;
	b=neuJsQwY6hWR6s8FdbnbshvaOOkvaQ2xo9teveVXqQz1AL8k1P1d1fzDun7WBnp0q
	 OOrO5I24SlGKTZhwW+BLMEJFYifu/qA4WXBLvGUnkRqfxpzkJA0zXwPs5o767xycJt
	 O8AdTwK3ULTG9gp9PQBqR6TQI57lr8n7xEnehUWgyHFnTsymaXCV0gK+fFIE3ZxJBN
	 RCWLXSNK/R1Jj55EJW+Ql8ac2/0qLqaTsF4cSwiOacyO8TRn5gP3BSKHu8ELX81+p1
	 0b9RqWwCa98Jx7tP2BfLN9sAj5zsvyEp6QJv11citZ0MHFWLStQN8+0ADRRTERo1CK
	 ZkiX1tkdXwxvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95816CA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175528499358.26983.11897750368974541132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f94fdd681ddf43bead6fd4728dd536611c17abb4aad833365eb7ec13ffb477c
Date: Fri, 15 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755284993
