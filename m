Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4364D1DFE0B
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759879194; cv=none; b=EjeKJGI9V86d7/eT4C93BieYVr+QxMhXrQs2Zvf/Xd1SCCdDizsCpkask2+LdP3GuH82cAKsbJeBlY8lcOKoJYMLAYKlEvldIdGZNlpm7f2hDoIuHqSzrjwZDGrTgW/HzzIdMEpsqM5+jLWnAAMK1N7Yht2HDmHQpAR5KQgCA50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759879194; c=relaxed/simple;
	bh=SHlPzYWygrhr5aaPU04GhKR5c+U1V8/eY7ot8UeZ79E=;
	h=To:Subject:From:Message-Id:Date; b=MAl6UrVUrUwuufXXI7qG5xGe9Qhu+gusIGRL3iIOryYnZ7VHOrmPCXuHyn18fKoTg9Qw1KhG0iWZGFCTTftyy8vVOmYpVpCBV/QPhWKUFX2C/YfkcAuoKHrrhhJdmgxQAGZK2nJrQ8L3hSiPS5qHg+oETFrYEkok51Ao6gMosss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jE7UV/Df; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jE7UV/Df"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26AEC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759879193;
	bh=SHlPzYWygrhr5aaPU04GhKR5c+U1V8/eY7ot8UeZ79E=;
	h=To:Subject:From:Date:From;
	b=jE7UV/DfMoNEsg6rhWUTwu623d6LZ2cdz1JT15SRf6lLNa+pDc6CHy2A2BcsFv1A0
	 mvhXQs+fhWPl2mYadcHJTn2yXHsYzdZKzZ8cX9Pf/rR+5ZYaDncmtmRQEPa/k6mO/9
	 ufvp3ftlFJov2TxsposiasmOHZYe6cU4v6L+lKmi0ZqGOUDYxmS+IsvT2BhrOGQsW2
	 W4/kh18vr0UvY1e7BLJcA58tCJ4AesPyb0rhksARhmSNsjsfNKev+ZZgoZrtgIxhH1
	 pFF6kLMO8pBnu/eEutHegAzINxH2y4QWk+3Pear6/nN5vr9opGjRKFa91cb6eMoogf
	 B6//wpc72L3GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC90CCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175987919361.9326.737763658225958894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f86da09df36f9cc08cb5e02efa6b148fe5fe38b1a992d8da577a3f7ae3ec321
Date: Tue, 07 Oct 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759879193
