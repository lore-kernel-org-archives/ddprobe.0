Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2420014286
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760078994; cv=none; b=UhIeqvFbt/tiNZowgFJO/VpJkU8aYzEK2Du4WuzhcJboD8WwrN0D0VNWyD4TqehAi1K8V4rHFHkohlwrTFeMdzQQXeAUUhdznvE4ws7vaddz/R4lJUWE3LEXpT07i77AACfzcbKkrgfmaZBbjwZTXui2O1F9YwXxDp+6fuhAFB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760078994; c=relaxed/simple;
	bh=VpZwSUeHXHTDGufMH/WpMxAXsNQoytDyJRla2CmR18k=;
	h=To:Subject:From:Message-Id:Date; b=hCNfQETQCK0dEDULoEdbdluxz75IMES0QcZVVZIcdb6mqn3FdzL/L20holkPVSRUrREruC8u0m9NODuB32lQNAvfrEllVpXsXO8fFY2xHB9h1ln23MImKRxSK2cv+m1XblO8m1WPB/Qk5uQHGdKfj1w5a5nSwpyaAMFRJKhg9OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lz+E5v3l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lz+E5v3l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01D2C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760078993;
	bh=VpZwSUeHXHTDGufMH/WpMxAXsNQoytDyJRla2CmR18k=;
	h=To:Subject:From:Date:From;
	b=Lz+E5v3l+hbfCtbX5AgH8AsMNro8v/pDIu7/qRxkyobqb78ivMtP3c/sTDBRokgL7
	 bHXXGTZRBH9Np+nKb+qwRSriNMmG5B8R4oVQmROiCkGFhxdZofMo+riUAcMfDuyD+Y
	 8kQ7agb5GqoxtQ4oyHfA94oByyeovSB8FM/lDwkRVWxN2KiM3B1d/gGsmSwMn8yCTC
	 /KiSbK6wvIeV2EFhNAGCOO9H3PB0f7/EvcrPkxQ1ouEO9k0tOq2sARubh7a0Y3Xrgz
	 0m/J3XcebnCEW+ejU6CHeEIElmzsDai6MLhnc/2HnAtsygCCYN5gDfFs/YS9U+qH7w
	 sMQiluXzxU61g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E62CCCA476
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176007899357.22071.1352708447952870799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bdea3c89a1e88a957d0341bcf28c57623e095149d41e5261fba5b86a02dd73e
Date: Fri, 10 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760078993
