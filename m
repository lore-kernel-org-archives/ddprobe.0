Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6657338C2C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792270834; cv=none; b=pzf13OGnhjkDDRJqfD0q+A7kn+Kn/bqBZ3I2v/9hP7usNoBa6hlJnwcLhkgB82yDZALHxR8F0j4TAW3Rrd6iwSHW+0Lr7pFOO/FkyFyNDHac2ZRT+qGuBIJ6K8rZIyOhkyIE4R8bZMC8zWsN4ljVzXyS1W48b6hPJIs5oX5BCFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792270834; c=relaxed/simple;
	bh=d1r/vSHjHltQbiAxPEjsCYIvsBZGLXFie1R/8oacQC4=;
	h=To:Subject:From:Message-Id:Date; b=auDnXadJ+k4ms9jC1UJrd9XWPEOdDzmbmpfpOBfln4LTGiw2xre33vBE6DnKYqHRFsk+2rPyAHt+o/9YMgrY6FBrGm5Z4ppAso4PCzcx/religwr0guvQu97SOZUOte6pzjHShkJSo1pqsrdxXEXIFNrUX67pJaYKiT27JqaAMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dYULfriJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dYULfriJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0DCEC2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792270833;
	bh=d1r/vSHjHltQbiAxPEjsCYIvsBZGLXFie1R/8oacQC4=;
	h=To:Subject:From:Date:From;
	b=dYULfriJebP8m+aB453TT25Nv7dPiXuUxYw8ARHH+kSDyiKz5ZmA+YlKxQLJoucWo
	 7A4PVqQVi0MKKknxUKwSXU5eWRepLMh9vE5jbeNhvsvItZx8tgfphsMQWZikLzQL7Z
	 spJxHOUJKsLN0F9wAxpxZGcBPwdTOoJLIPm8tB/UnnfloBd1XFqh2wShHOHOmgDTgM
	 tUxRP90P03jo/d+MBlAIteIwKqbZq8JRt2eOeEwG3CscUM8fwOK0r7jPAen0F8rsyw
	 lUoczDEWUbDgkAS6eC+nX7AafOF/Uy4svCvZFT+IVM3kS4wkDObC/e8QHBO5bHdfCQ
	 V7eOC8sDtQyPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA593CCF2C9
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179227083373.25761.18299302775465509870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ace7307560098c9c14d1cec23fc346c6c289a11867d6d1d5f25c552edde4e5a
Date: Sat, 17 Oct 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792270833
