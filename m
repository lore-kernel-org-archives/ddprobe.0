Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ADB072633
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758882595; cv=none; b=NnO1PrcDcdvgH+2eyFPKwGh6s9vKMmXj+TDQG0QRw86+gkIyBSmA3ILnZGkfarh0bovSqTcXA39CJNXYgywoGbGaOdUUiIEm4DttlCoKA+gaqS5YxyixI5CfqUAE4Y909okMrsDbOwguOP+HyEX6Tlt5tnbQ+rKarCFX5JE5CuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758882595; c=relaxed/simple;
	bh=oqNc91YcU34oSFTX9NagrljICmw3FtGp2syXXpe5EuI=;
	h=To:Subject:From:Message-Id:Date; b=CHvgLs2GjPaUsetlJLSwPTXNO22v8g2/+95XsUAPuX+GOzp1uG57pFvI0pr2QUAAos+Y0P19NQ2veZTbgoXhPBxZclH7/v8ZQqhS9DVq7YKLZRAG+FyEaNXAbKzU/0sKpjHz/Q/Z4IIkA7Vj9q0XwKLR5qcAyqrNQjOepHJkcJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MgKPyCJf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MgKPyCJf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74EFC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758882593;
	bh=oqNc91YcU34oSFTX9NagrljICmw3FtGp2syXXpe5EuI=;
	h=To:Subject:From:Date:From;
	b=MgKPyCJfJgcOijMKfq4Gr6YU2QZ3YcCf53wJodxAmwhfTYkCiowqN0YTuDTpyvwkM
	 vjD55Hmyi6MgQILrYMXdyvZEz0lNvl9qp6QHduycDauXXyjNXNLv5gyxieTQI7Nze1
	 wxXHNESgznLQ9oCTd6Q4tIi82pxjlsawnuZj/a9jeoA49n8jkgBmnube7rb6E3lanO
	 wRdJRqRP8DLQ9vrqU35r7IVREmSpxTdhPsA+xJ9yWw2+USG240UDs6vRfpqapXcx1X
	 topapAX5aV3zi2J723m+IwinrrDmXbOzE4YIhvzYa6nbwsIwW3SbdNcU5z+h1y1lJr
	 lNSt7OV1DR0Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932ECCAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175888259358.10798.10310744998712303705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5ab45e695beea9a95e38e16ecc596baeb5354002c7765a5d336b84ce226279a
Date: Fri, 26 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758882593
