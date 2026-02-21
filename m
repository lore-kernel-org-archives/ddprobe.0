Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6473358DA
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 07:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771658094; cv=none; b=BGlU6gyk/JClvuQcoEZQilVPxtBdJgSySbGatvwDMxV1DhIYPhjCEBy/ffZUpAVIcHrqft3TsQUAmkhJfEU517j06eVnMOboRfA2TqVyLLPFsGn3+ZF+kqQr+d1sEHxIgDPGltiksTaB79J5IO0Mdf3Lln2Um7p4mb31BY6icNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771658094; c=relaxed/simple;
	bh=pytP0KZCbywkxv1I0VQQy3W/rxKzw4xcuWf3/LNztTw=;
	h=To:Subject:From:Message-Id:Date; b=VnT+ia19zChpnh9M3YARdf7dWKtQi0LfWOdv+PUxWMvb2J4XbCshDf6ad1p376Di5NFtAGUUGX3zGaG+Y1uTgvineWECTVAOniI5oEqOZx65aeysCkcrWxTiVNJMimM5bLa9gQOOkLn+lW2s+6mGLC4/LQ9fsYIYJe7m6GyhAbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XW4jOeU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XW4jOeU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADFF0C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 07:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771658093;
	bh=pytP0KZCbywkxv1I0VQQy3W/rxKzw4xcuWf3/LNztTw=;
	h=To:Subject:From:Date:From;
	b=XW4jOeU//j66kjHd3hbWL5wd/sGa4+m6ULIx+RffOM7Lz+BEK9bLZWDcFMPTjBsr2
	 yls+3moAAEKf0Gkoj4fagfkGMS9mSJ/jxhpdxtCu+NVwzgFHq5925NdD6f6aWvBpC2
	 xtZwu5i3kxTN2bk+OpDgDhFcchvzmGYX5wbodeaNNP49WRG2bJIXqyNbxl3SBX8030
	 SM9fmmAHj4hoy9X8lMAevyNOccfAmsFhoRL3sdRlm1+18C7BmKqSkc/UfZbYY/6Tcw
	 0biEQygGXpBEF1+/QfQD3oo5sn5Z2BCw+le4Iz2csnLVL2N4ijjJhanP+QpD6W/c9I
	 Kf3ds8QYzAslA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95430C61DBE
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 07:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177165809360.29230.16609902405495077205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 208428ab602cc5a36848acb97779b12fcd02752460f9e5dbf020cb47a0d21e80
Date: Sat, 21 Feb 2026 07:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771658093
