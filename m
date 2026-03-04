Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03DF236BCF4
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 07:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772609694; cv=none; b=nfUsMtoVXh06Tz0pFltUAvy0HLUiDQ6KGFO07gO8coTdjuWDZqhc+d6tD+FzpknVVY0hIBA/gUuWCS+B0iFm759RPQ5rkzHrKKowuBt/Ss52JtW6YIwa9sZO+aCVlX0omvMgsOVu9JgBJS0cd2h7aQ75rCvZ82EmxonNMJpPr60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772609694; c=relaxed/simple;
	bh=+mrfpS5Wcb+d6Lu0zqbqjEsccgtGlMl4Cx8p/kNjOeY=;
	h=To:Subject:From:Message-Id:Date; b=KUIzungguP+del+qyAIo/4mMhh6D/olCrtuVhakXcK0GLcLrysFhswj52tRjAzaoS+xuMFK9WmIRkPeOcw9Y7D85ktrWzknA7B4RM+kUToVSWhpRqZL/KYlRf+8Sp4y1Qt3XtSnyDCtFJjVx2BHrUwn68JtE/zY1TRWFL7HvDNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHw7xCBn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHw7xCBn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C1AC2BCB4
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 07:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772609693;
	bh=+mrfpS5Wcb+d6Lu0zqbqjEsccgtGlMl4Cx8p/kNjOeY=;
	h=To:Subject:From:Date:From;
	b=aHw7xCBnWZQM1j9WWiNux+/zg9pvtB9VYmtaz8ZZ2f95W6vRDiXnXaRz5ezO15mmv
	 OTEocMjL8AG8e9c7KnoWYTTiYlpSXD5CaERGi/uHmoujFzxhzLfS6X2tSSSlzN6HP3
	 WuD3HYaBPzTrvboPXmmKRMjZI2FwvmrWUdVXw0oGL9UdQmXoxgkMK+mUXbu8/iiSVR
	 rCbXWscsL9Y1Q25umEGK0OBOpz+LevIIoOEspVjcs9zh0WwIiDFXC2HTAI4+cgu9l0
	 PgZjmdXtF5EZnWLJ7pTIls1Z+EJbXIQunqGfkphZ4W6641yO/pCgRnZGXEAwJpzURg
	 zSC3mdJOecLQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94546EDEC1E
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 07:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177260969359.12479.12640964019888208851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96aee78612e424549d21df7cca862683d32677b80533e3e4086db9221636c314
Date: Wed, 04 Mar 2026 07:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772609693
