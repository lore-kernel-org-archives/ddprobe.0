Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074EA2582
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734620754; cv=none; b=PuCK5YhztbNenWs6O83TuL+hOh2kWFDG2N85krrvLfkJsIwzbWTXAMt4jNTc6HjbLw+wOEK//PypS8QpMqTmKFTKZE3GSldMqAUk7YgXhJnqKe2fufJEtTop7Kgw6jkbqJ6kJhkiIrUBG0Nbp0XYsc9nyU4OlnT2zmpmDIEPeWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734620754; c=relaxed/simple;
	bh=lpR01KSRtIjil51KNSaYpC101i/hyDdsIblPyfOdv1U=;
	h=To:Subject:From:Message-Id:Date; b=C2xL9HrXFyzhkThVCUXEQlg+gnqUHCsK/zO9rdmdmlQP+nWybSIKwmI19g9136t+g6DLUZDH40JziKah+1RWKeK9e6VqdVUDyXR6Qb0RPv3gX+AgmSCEx9ljcvSvtVL6nI79416KWt4lPyicOP5jJ8Y+Yn/L/3R8t8QvLRuBUfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THUFMCUo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THUFMCUo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4697C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734620753;
	bh=lpR01KSRtIjil51KNSaYpC101i/hyDdsIblPyfOdv1U=;
	h=To:Subject:From:Date:From;
	b=THUFMCUo6TRdmgWDp070UI6LfrOX8dFOHwnK1WcGLwAMNiCFal2Z3A0smujaTud4s
	 Z2OuqAU4mZFOT0XLqAyF5DQldYE/tOkgQOu4Apbb4crNcIZyagFQPZIEv17q/mxGOF
	 FESOAAAcX7T1KBAAObcPBmOYK/QD/1TtAZPWXNG8SpMf0GfsSlLtWFNp+3yF5UqF/1
	 YEtWU53qY25mhLR2QR5gvsyvIyHQvmIS0LMU3PGByKaDN0n6ZWN/+j2JJyiGTGNZ0E
	 YpvTsLW4L6jnm+D3rxTZvD5QP1C6w5qwbf38EntgUft4taOjW5N5Q2dHzOa1zsM6ol
	 UN6IjHbVpTyXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F20E77184
	for <ddprobe@lists.linux.dev>; Thu, 19 Dec 2024 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173462075359.26184.6738987330287552804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 842b2d1637cc1b53f3b2b33307eb9225d1d98ac04181424d300acafa395546df
Date: Thu, 19 Dec 2024 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734620753
