Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6399C14D6ED
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 09:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715073143; cv=none; b=FjrfkHfn45QsyFDzkS5NtLXyf3C/whjv6ZTC6qB+G1beOGsVhls4w7MnfLbhOYqOL5TCHqUaL4u7nZPhjA0Tn6kIFj/3YYmYbAfNsxBMWBkOMFG6FIqMYv/bpFoQQNqVLAIdOcS+puXilcw60Jj9DtSzG+UySBQrdKVAuisfwSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715073143; c=relaxed/simple;
	bh=/+Pi8niCEcI+grGN/OkB0agYzvXAIatMxatsqJfXmh0=;
	h=To:Subject:From:Message-Id:Date; b=fpzbwgSbCgYMyEOlBx2nW0LEzQoDja22ygADuGAuendbr4GdUy1kGYXZkwBBPLMXh3MJP25dwb+NscNg1Om/MTnC3EVBapODSTD4fn+Li1tCnIkB0K6XrS+Rx0Uj/gKnYawxmlIizo2Vs+33eF2sPip0+hP5TMGPpaM5QV9PzH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGFRgdaJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGFRgdaJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA008C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 09:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715073142;
	bh=/+Pi8niCEcI+grGN/OkB0agYzvXAIatMxatsqJfXmh0=;
	h=To:Subject:From:Date:From;
	b=qGFRgdaJP0XzcLvHL5lOnZxLF/xlCCdHPVcD5zoTzdim+VZdtDuS95AzVjKzMydWc
	 aA9P08RtqLBU+mPX7XbQxkUkBuB7GB27QfC47M6YVdXkX1tMfs3H5TrJ/PvOlLFr2+
	 450/XaTwRcwJja1k0CZSRgoLtePBMecR1WVKD3HLWpCUoWMfUbc937bKOTpR3hoC2J
	 eeDgi6VmjNlaH05uS8o0L8e9QoGiBN6DSiiaS3+LbIYN2gr1W1dAhQhnmvKxP59oAF
	 RNELCOQahSScjkfnt9WEDUDWPTNR4PpFxlTbdFm0AIyHIeRK4jSMCMrYyPJUzotVoG
	 i5jiJXSGCPERQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C239FC10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 09:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171507314278.10572.5207783424136159492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b49c7608133880e21e0908987a1e92eda2a85311567d84491417b374a52cf58
Date: Tue, 07 May 2024 09:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715073142
