Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F101F3FDC
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747324194; cv=none; b=iIvhKXBEsPTRm+Bg8bVKUCmcx6PQpoF//NbhmMzaIRCdzN/uCf0AwyOr4oDw/mU/hcfmSczDE7r9+ANbsi1c1BSLRWTU7OrrDv96503ems21KWDMoDK2WBLCTPbz7KequzdAX+iD8pucr/lemvGLxMZqyCYvNQPZmA3OLlrFbS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747324194; c=relaxed/simple;
	bh=1PvDEwrTSL2E2JbOgJNjN+MczJ33S4/fE8PRfdM0hg4=;
	h=To:Subject:From:Message-Id:Date; b=ANmAkseAi7os2p1wPcA6lzH0gwERejWhy5YU3peHFmQlsl4zrshFMyovM6+NCn04Qb+1md4BxsxbJ2je28Ru9mjO7F2NBDezoMgAYPeEbMaTP1Ui4v08Ao3pwaLw3muxCK7c1n26apP4uZMtd3kiBIT0k84FFI47MG51YEURSaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iDibHb0V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iDibHb0V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F129C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747324193;
	bh=1PvDEwrTSL2E2JbOgJNjN+MczJ33S4/fE8PRfdM0hg4=;
	h=To:Subject:From:Date:From;
	b=iDibHb0VqMbWoJlSHE3LLJYd5zgLkbgC1MiQXd7kyf455itsW/CCDiuinO9FOoHN9
	 mJVlhMrcJkP1NWerHaHXyYlHSuX+jTsCkeS41LNxX6QbNp8dEeD9Ues39bjTpYqUVF
	 7Clq/za9nH4Gh6IW+dsq3bV2WhH7eA0JHeeMEFkc3NfwHxm/RnsDm1/wkHPL0rVnBg
	 /pwGFIjkNeMpkey0Q4zLOe6WqghqlfWInD7nr0la6MJJMyy1Zv+FJn8bb1Gj6QbFXn
	 rYK29uSWiCAKYtIfb56NzV4mnnktQ/6SahHx3nx+Szm5eq8Qf2okuJgejjkwdbVUun
	 pJj2SIi0SdnkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2ADC3DA6D
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174732419357.22387.15997403071768432312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eaabef4b1eb1007f792acbd5089bb1a079ee13a026a137cda09f0bee9682972
Date: Thu, 15 May 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747324193
