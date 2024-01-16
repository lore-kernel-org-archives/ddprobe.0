Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1E51CAB9
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 19:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705432697; cv=none; b=ibpUZqlxDKi18L3fD+ivVLSh+Qj+xlPKf2+l3PFMArRjXKmPw3l6KM+NftRxkpnlDlgLLvulCIZpXGZ0Mze0NIwpywoH+fkXO8WRgA5blXMIxOL+TBh6XvtvkQtPH+dgIIg0ng14obnIXoprbeR5WuME4e42AU+Yewope9b3gbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705432697; c=relaxed/simple;
	bh=AIkHsJ7vI8eXyt3AxJbnlxwRH3Txa4Dh6kgbkRpA5n4=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=Iu61ipOaE0Sgm9aHWsFVDAsS23N4C8gfso4y6jiLwdvDAabPrMVygXPZGJZ1/7JJuSWdA+4I1cfrD1MSkZ2DvEUTdMepv3VQ6iYLy4HUluq8c7Qilk3Mfn7RvVXFglbmCTjUFufzcy7PVAUug9NC4VbHOvDfNpm0qqPJIHT4TII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MbUBR3h6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MbUBR3h6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8078CC433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 19:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705432696;
	bh=AIkHsJ7vI8eXyt3AxJbnlxwRH3Txa4Dh6kgbkRpA5n4=;
	h=To:Subject:From:Date:From;
	b=MbUBR3h6b7jZJIwUWVhZJulEM2ZI1rL1VgU0qBCICUVnvciur+ibL/85xlZThBjYD
	 05hXHbapVre3Q639TeFHjdvo26CJqO694Jgu6KsmQ3t6sFT5ey+8vYfru5ZwzUll+B
	 aTJj8/h1IzMjdJ4UEJmEx57pP5PZtgQyt2PdhHfck09tvieLkzqa+GELTkKoD1m/JU
	 SzEIh5pQZjS1wJu4w5ARa4h/dr3oUVf8g5XtxmmMJBQOK+9asknnMZ71YqVfWrJbe7
	 euG4rCK4iCRjCNlW5n1F9WTf6ydO2WaYdiBbGP7/WgZbPYIYJdIDaFHPu/Thzi32ij
	 BtjgVXG0KIFsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64EA8C47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 19:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170543269639.730.6702782962959082838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74fc4fcf186772daf440b00c8d588ddf6c4c1d3f402670f71edab3156d26a364
Date: Tue, 16 Jan 2024 19:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705432696
