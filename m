Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF26635
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738524354; cv=none; b=ImowW+majzkxK48Y7xgq83bx19UrXaCEH5tDJUiOrYYx+wd4qAo5cPU/N3Sks1wIhWpR10X2gc2d1w9ixu3PDdaSaZ+g6eAZ0635VFtGzRCKa7O/BPNf2mFur86j7d46bExbJs4ejOVY59J0DWcGef8LwPBlzRDBKtOOvfAUir4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738524354; c=relaxed/simple;
	bh=VbaoelENWCMoY54BtNVD4HmclP3Wr2a1OBS5aXHXrJ8=;
	h=To:Subject:From:Message-Id:Date; b=SJwPnBBNcYutd42GLl2wkbi9UI8jSOJASHNOUSXTXAGNdQUgEphWS+My6RgHAjwvcflkzMETiqIznP8B43YL4CBTUBcLxpyQPyBorLtcyTy/T1ErfL6Sp2SILCQvpZjq/p8uY7/WqRW/OCvtOPehDVosDitjQ7Pzl05S6KmjbNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPj/kIoG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPj/kIoG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD481C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738524353;
	bh=VbaoelENWCMoY54BtNVD4HmclP3Wr2a1OBS5aXHXrJ8=;
	h=To:Subject:From:Date:From;
	b=aPj/kIoGGCFyXA+2ifnMqpy96T0B1hqQaEhMTRmOqeoRzcyQHq2U8iZhECSY4iRyU
	 HOfRQDxAGVBbclKwnogH1VI4IQDurrt5CXO0nc4apZYdtMbZ7bSXutW14j8WOaDYku
	 CMQ2MNsBydz6QD7hLWgpMEdfcpIeWhppfWer6TaWoBojrv00x0L1aFTYhxffNe8sfe
	 JukFxo9HPJqVDr1Ew7oJ6dTLtb7CBz9W87ZuWXiRAzvUtOf2dctkxZ7ogLdh9RfzmU
	 uKRsYdqWwlufzJo+eHtBeDLascU1JzLbsTAk7Tpn31nBr4jNxY5BYLC6TOtYDClDIQ
	 yDHmJOpC7LOrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C884C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173852435361.13953.9694864135250593177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfed34a0d3fb25e22b035779d16e66b95312e8262e367e68eac2085c995b5533
Date: Sun, 02 Feb 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738524353
