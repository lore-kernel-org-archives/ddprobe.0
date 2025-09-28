Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403DF54918
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759044594; cv=none; b=W6zr146mCjVfUmW3zFVhrCYvueB6FYgARA8X9pvZzqfxVTn0CrbvqrBWXgi9XHFkWfBLoE9BPP6CHlH6++8GKEWBFxmDschL432C+4yYjqzNXPjccJAEwSHWd9g4rvtXlH1WifqRHZ9Vd7sm0r61Tmh31jNXzR4aTvPFv1g2fk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759044594; c=relaxed/simple;
	bh=NC3C+hUm1jauZkYRx2YAne7pBv3iWIzCWdQbn76OLsQ=;
	h=To:Subject:From:Message-Id:Date; b=uxlpZJAVaUozejth8EX/hVAf2ykN6i9j2Tyg0S1K1X3xSH8ewWFABzigL6hZA4R6wLJGYz8SmmTZLwo83fou+bMM6SToQoOlziDWHsx3KLi/gub/Sno4uimwbkBowSNUV9krOz2oQw6dkif/zAYetNbXEaPifwn//CXTCmjtWws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LXjCPv1W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LXjCPv1W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6E8C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759044593;
	bh=NC3C+hUm1jauZkYRx2YAne7pBv3iWIzCWdQbn76OLsQ=;
	h=To:Subject:From:Date:From;
	b=LXjCPv1WI6TyQPUmM2RYJ4DnoI+y3jSIzHVwTr3FAjor2KOkYD0ARhZTzczQbciEq
	 YswtDl7fyjV+doFQCqJ7DBWdns0nvZ6V3eF1ptpjmOLVZUBpRdTR1niVb9pk5TsqVA
	 riPDvW7ftFfoV7SbmPhaBv39kSZXDpWNV1yIggBwIoTsmoP5PmpO14FX4hP6Fw+r83
	 Ha81CSUvp7evRfTwx8I3oinCwhhv2gyVriXG2gciMEoMikVO75x47SCI8yO5DC65OX
	 fVX59DXZ0WYz9Y8BYqObrnLrScw8vsDA6BGkionhZJfNEqA6KzaASWCXWe/YOKHFfe
	 ig4YfcHlmF6nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99790CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175904459360.3951.6339761692900507372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 142e19d191c86737c7521be5ed54f45e50b79eb4cf6aea9604aae7b61d4f0095
Date: Sun, 28 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759044593
