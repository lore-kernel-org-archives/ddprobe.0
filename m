Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F315381D4
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709924297; cv=none; b=eMqq7JpI5WPSPLSop0hDk5V8MMYmbknT0ZftcNIhbEIMNPjSY6rEkpJbPZCjLlLHoVpKgfz0VlgogL415CKbc1X6E8qeEPxB4oeOiXOHXT4fvCTfoDTm0W87URVZJrdPKPf5eJ3IJ6ArZm8goLFygCaC86rOczRIAdCA3gZHC9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709924297; c=relaxed/simple;
	bh=0lxrjfcZwmOBQGOp9tBbhS8hiigYZ4QO/E8ETCFBoaE=;
	h=To:Subject:From:Message-Id:Date; b=fbySE7I1mQ5G+mzDDgAj/2X0H3QJHTN6mt9a8Gn2rcw32bH/R2H+J6E3np/8oa7t2iBp1vvP/dEZtAik2/E6aLYE7BFPWclA1hz4+OUpfWhcxzUyLz4T4EC+xM1NKq0qjYsJcssiKIDK21YXTVzVMGhQdIVS1rELrE2xLi2gE2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNl48zJr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNl48zJr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E6BDC433C7
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709924296;
	bh=0lxrjfcZwmOBQGOp9tBbhS8hiigYZ4QO/E8ETCFBoaE=;
	h=To:Subject:From:Date:From;
	b=NNl48zJr6MffWMJeYw1f50YcDxCMGBihjgb8aUNAR2JJ2XHopQryIxeYYsp6ndQBp
	 8vuh1ncny4OgTrnP7iLVr6f8eMAAtSF8prFcqr3vt1yTxNo+y6T5R+euOxlR8gAT11
	 7Goudesl00n1SixY1ldPtIzla/c+n1sQLGEn1Q013IVj7t4KAz/Vsg5EnJKLUuuEJI
	 oincMdlR0mTuAo60w+FHSnuSt0x+knkOn2Y4Z582MAfnA3Ruv8InkoSgG19colxGIc
	 inpgWF4i6d/PC45dlK6zS++HY/2Ez0JfNTSUwiZXNkzjSaklsYjtctV+xw/iIg0SbF
	 WMT+/GsElp07w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69606C5475B
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170992429637.30556.14660455493511455952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c9c3a2cae9637ee6979a95f9fabe8c6001d30250e16ff212dc09001e1f066b
Date: Fri, 08 Mar 2024 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709924296
