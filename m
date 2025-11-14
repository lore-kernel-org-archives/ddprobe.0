Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1151D308F1A
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763113194; cv=none; b=UX6g5M6BZwqjj8oV/4Ue9TEHJDekbplNTisXLcBfbNeGNUtn/CUiVpUgwPPceQfWpUorXvVtiqY8IE6IZWlH+FZEwlGf2cKj8fR63eFHYWjLlM8mAzzdGonkrx0oO29fDWjpgDAjvkmg1fgL7XsdFDtYBlDnpJ1dX+O5HVXpE+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763113194; c=relaxed/simple;
	bh=seInsCSuycKTz8bSepn+uE7U5Ab43dEtjghL6U1Q4KU=;
	h=To:Subject:From:Message-Id:Date; b=ECxGFWZ2pKYLCTue45s0xwH9fkG5IVmGEL38Q9yhdAamgKacTYguXHih4OMgK9fCIgJUhadwzHeSu5lmopAzvmnGGkQ60/nuQikCkirylztxMvK24btoVROBu34CC+8HxXttzgWcekcTzt/1dOO0Ar6YuLbYguW6UERAHsXakOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnfFNxnc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnfFNxnc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E3C3C16AAE
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763113193;
	bh=seInsCSuycKTz8bSepn+uE7U5Ab43dEtjghL6U1Q4KU=;
	h=To:Subject:From:Date:From;
	b=LnfFNxncnS8LEj+82qTxn6bjEwBr1Ko9UsbYn7iNOYoe7d/xH5FW1lxVBPME8O7Uq
	 w5thVUmoainw/dWlFQG1qAtn9EmOrTofsfY8XaBJch/CUrmCPkxliNmaTEOSZ4YX1D
	 RD5dmMfKqfReMKaoN7FKAuF4+CeTk4ixjBEXKw2+6V/zVCXOlWD+2EwZRSYC5tb6DY
	 JDMpxjZbYgZqyz/FeJinBbchm74lje70gw3G097b5XqHr6WBgv1U0LmLPD3U7glxCv
	 gVDtXWoPHe9c6KIpzCO86a0j1h2CYpY2ZSeAuuXp43kvbNdTDOj/Sb0U9+DRU88qHO
	 IhII//W2Va15g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A33CE7A9D
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176311319358.18598.13594337579548576290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 551ab2a1b3216aaad4f339638c58a09d9862d985259b85389367ee6cb9aeb0b0
Date: Fri, 14 Nov 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763113193
