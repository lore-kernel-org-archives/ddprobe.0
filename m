Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CDD2D739A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758321594; cv=none; b=cZCCRykLTEpU61vYjiA6ylK68Ybees7QRU3CjdBLlbD0vxITL/igt3e72nKY0YJagGGJwTqGf8ksfnApvuyB5WdEjulg12QZXrzaO++FvSX2xqsKGdsZBuFYubeeGEydmp9fyR7pjAXID3b0xlSpm8Y/Pe0GsEtZpWgabiKr4Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758321594; c=relaxed/simple;
	bh=bPtwIhmodZy7Hsyr9o/ImcNUQRGLbb6WeVdLwCcwoBA=;
	h=To:Subject:From:Message-Id:Date; b=gtGBPvD900TH+Ems/YdKlYnltiNx9Wy6xjWsJRf+zegI8HpsTc+y/VTToN5hnvYsZSgmmR4v6k+83xnrwCIPqymkqDzJbG9j5yf2aS4GxfTkvaZP14spv6KjOm21LN2TE3nLpsb8j6KU/kKKB+CFNDh7jkqIxb5FMq5loSBWaM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NczWhqPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NczWhqPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A403AC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758321593;
	bh=bPtwIhmodZy7Hsyr9o/ImcNUQRGLbb6WeVdLwCcwoBA=;
	h=To:Subject:From:Date:From;
	b=NczWhqPWerwPwUBoIxRPlBOpTraWzdkIzsXtX6Fzm/ap3wkbZlowKQ6IJC0aWnP8Z
	 arQBmRqunyZPrC5gu4cg+459zfcpluNgPvc5eLSoMaw2r+cJlwJeuPBJ4sxVJaNzQ8
	 uDG0vMnBGBzPzdg7AcBfMKMZKH5+9BPrnBI+VBHiKiUpJoetUD0rKJD7sAM71MEPKc
	 uSdCRunm3p9NQdUoOG2q8cTrgm/3NbhJV8aHK2YjxelF3nlq/M16QqMFV4ZnV3fV+P
	 F+PNzMkmyUOdDMDIWIilHYeJL9+g3uFNSnB0WMBbe3ajVJS+/SdLdxhS9bbZ7qs0pZ
	 lJ0WjwVdv9Mpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948AACAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175832159357.26958.3213574963974984368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2840915e70766f5e0aa2917488abe8d9114e7555c48d70ee0c697748312659cd
Date: Fri, 19 Sep 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758321593
