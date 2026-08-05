Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD9742AFB5
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785937234; cv=none; b=YiumhNoVdUDNpwzIj1GteWK7+75QmR1csfROsfOnYz2jS7kch2rytj8sBUEGRqmSyopFUF7zUJxw8XwFqJ2VS2dbH2Tx8OR1+egnwJvJj2f0Dn8UbrAoi38tjBF777by2nuPOKP54oilPgH+G1dSrFIm65q5j5inLSyImIStDA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785937234; c=relaxed/simple;
	bh=2c2xbEb5xOryYdlLfgi0sbMe90v+QirQ6KE26zditwo=;
	h=To:Subject:From:Message-Id:Date; b=upa39eC9tfUuGnnKAflEBKSJQl54qqQN/c4TIumaQfKMWq0qetzmj7lBGGg4Jm1x76d6Pk/i73VW488eMQx2QvT5ZMe3KXu6pmH7rXUyL8iRXtM5TNfAMOByne7WMWKPFA52O/aqQwf6q5kZoFhFvrMATfKEZD4nXkNdV+j+Nt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dthM8jT9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dthM8jT9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD255C19425
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785937233;
	bh=2c2xbEb5xOryYdlLfgi0sbMe90v+QirQ6KE26zditwo=;
	h=To:Subject:From:Date:From;
	b=dthM8jT9FVi3aSYQ3cFtYJYD2Dm50oeZYyQzJSCXy73mqfJTvdKpnQEgnp2xpAsSp
	 xnft1ubtHuqxhFrVdVMujrNw4oHG4RFYACGm5eUgB1HGK4lpXPUWxNTLfDIm967p9x
	 XSBrpkJuW1P8k0UB0tphZ51nX1hsdD4FJfPj9pqFXn/KCJ/LkUmcteqgqnORLNL7/i
	 ZLvI75hxiaFE3icFzm6lEIkVdvUbxybtmj+vVaYtj9KlzP3KVrX9dS9H8eGlCRdH+J
	 XMhJb0753vHhf8Ju6OgykCTrpuQK6skTD+wEFpl3X5rDucneLNqQcSFpNRBEGCgBml
	 fJRUiFulbxRyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7F3DC55174
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178593723373.20005.15004833621081157037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 114ea7e691f2502241c590d431c6dc761fef9acd9fe81d2b0f61833c4969a46b
Date: Wed, 05 Aug 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785937233
