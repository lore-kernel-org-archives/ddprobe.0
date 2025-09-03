Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B35A320A27
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756921794; cv=none; b=PkJKLEDOXH7zrtOqy8dnmHBjVDP9J0ol9GGp/oyU9Nx2DaOhP3y5FyrfZn2DZIWP7+Dw8gKcjGRc+yp3ah5kz7PXtkmVknNGaSoNGQOk7xCqQB+vjBB9jgxe1Gwlti3OpeIZdiu7Tvyp4gwoctW4jPhlVla1dO1Fe/1ICEToTcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756921794; c=relaxed/simple;
	bh=lOjDYlmMHlRiWTRn4Co92BSGWNbSRPDhujtO5cFaTq8=;
	h=To:Subject:From:Message-Id:Date; b=Q6mh54BoVrDQu06ILvzSbwvDPknFQ/a+9S/DtBVGPbuQSuTgX8HraX++8u6Iqo90xgq9/tJyT/pkoIwEhVhNjF9XHUujFQ62b7VaOJCpsC/N3lTOLWiZIr2DBbYIBrI0hWqcWBpIIF5uwA60tZS0cn/EQTRii7UUyJ7YDKU/LCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O9nZBZQm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O9nZBZQm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F3C0C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756921793;
	bh=lOjDYlmMHlRiWTRn4Co92BSGWNbSRPDhujtO5cFaTq8=;
	h=To:Subject:From:Date:From;
	b=O9nZBZQmmUFwn3mXABZec4Vpdd223v2Gp9N2TvfvS2mGEq5l3dV8OCzSKMwGL7EqM
	 HTI6VYYLq90Jy0GohsJO3EYGzKu9FXoOJW85tpAeiFFDaKCSWWS9ym5y869RsDVZbv
	 ECki0vgzshdMMb980RtskdxH6/Xb1ue9IQeXJoDa8v5ORpoCyqZY2qGnwjEBe/5dWm
	 2T7emYLL3UGRpJL6q1SQRtypd6SUXVZQCSAYf2jAbNNSCIUlrDHsV67LXXZY7IRDJU
	 mw9fPSv8RztSmcjYJuH0gpOndrXDFIIz9LIv4o/e+hguUa8zsJxcLtO+0hw2yXsyV8
	 T12cOZLZgSHMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3B0CA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175692179357.9580.2837330605878087471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2eecfedf7454b98187a8f2ac162fe127484e1f177e78e08e1af81abaf2ca7e0
Date: Wed, 03 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756921793
