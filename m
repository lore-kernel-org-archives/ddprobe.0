Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2D4849E5C3
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788784234; cv=none; b=d05P31zkV4L4vV0vwyTYL0Kr5byfQpLg8PipxtI+9ElbCZ9lvJDxT7DDo4yM1RJw1TLRxo1YChAfMyCbP7QJe1WnH6dRbOGxYkwgUuJyu7HnqHuFgRm8pOE+6yRwkMaiihdEWLrx90X8qj5sng1SGyeJMkB+DJJ3oYK0/tw6QjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788784234; c=relaxed/simple;
	bh=jWov3O8dF8eQzoZQn326Taq4hTVkD6QKYzttFlfC//E=;
	h=To:Subject:From:Message-Id:Date; b=TRQzV8u2FpmIS5C1YUDIDywDYao6oaCnNKyUtPjh0fintzygmUYzUuw91yIzG23od+uWuaVM+Sdf1VV8ERLPcO9TDe6W/0zblhkqm0UIFVFIH/sob3+pe0gDrgXHJ3shkTvblbvJuFEX7SxRwnaog2D70o98GdTR2q/rFNsYh/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvgNbCOA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvgNbCOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C512FC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788784233;
	bh=jWov3O8dF8eQzoZQn326Taq4hTVkD6QKYzttFlfC//E=;
	h=To:Subject:From:Date:From;
	b=gvgNbCOA6orqV6C/QofXJRW0OsRv7WV417u8MRXWdclAIaPiLnqbkyxfqO0YTvGNP
	 2mWZulJH5aZKxwsd401AmoDuz/3NXTa78j0gbpyGLfSJcrnJA2lAdsPvDNqSxakxKB
	 bK1Pdvml9KuWSYslm3xLGV7ZGKmdo4An8jJPs2ta6h5mbKNglZaQGL6bJkNJbX302b
	 bUKl0DRmrSgBy3OtMTJByrDj0+a8r8pKtXcIW1k2FG4G3n69YtWunPiqGE+I/kKyBY
	 o+Y1WCYy7ObRfH+i/rdXbZy+xSS4+rfQ8li3JIcVC6iLv3HwZAFrzFPKlX2Twi069C
	 LuPJV1vw/1ZRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA9FC79F89
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178878423370.19470.3880631788769494383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9188190358b3f47fb5fa6319d24f819768783ae6d9d7212193083d8f4f652624
Date: Mon, 07 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788784233
