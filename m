Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0AD2C17A0
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771172694; cv=none; b=QSshv7ak+iA95uv/aW8ibfS+HS3GaweK7wH7kRKYNwH6ErKyNzofcLII6mJeHPj4KbbG3CXfuU9cazIlxM9+KtPbXXEIcBWpRp6qdPaSRxgH4cHcbzZOWj2cFrYbQ2Bfsbjf4Agv0Huntz2//zBL+m/p8Rr+UHzXp3SkoXHxorI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771172694; c=relaxed/simple;
	bh=5silJaqtKJLtjZoGoX/JhR8fgttLAzNkZRzbunMYlK8=;
	h=To:Subject:From:Message-Id:Date; b=VmXho3OPZBaVbDnhJRfi+5HL38kIbktdps1ziNx+h+l5hWer8W2nX/YfDtZE/OIDGT7yomAU/t8bp+/Q2DtlmUkfp4GJszEZT9C3m3xwoZhqhfQ7pw1t+x2ODtG2moXvPhTCpogqAlIw1hEJOLd1P2yXdH7wSo+wyh9zp26pFA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqxu4oyZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqxu4oyZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B415EC19425
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771172693;
	bh=5silJaqtKJLtjZoGoX/JhR8fgttLAzNkZRzbunMYlK8=;
	h=To:Subject:From:Date:From;
	b=mqxu4oyZ/wedI5LlDjQOPUD2+zqH9R1X6eMo/2XpDS3Z83uUxZf4Xs6f7aoak/fw3
	 /NinaFNZjyRT5p74YzOqkjHB9F2aCdu/noiv0R5YeeUYBAkUDYE1L9/JYZJ6NWa2O6
	 Q6S0mLRs7CyIOMevu02gDQVQg2XIZXXaL4uP2mMQxO2DQHacAafGBFDgwFZIMJnhBu
	 rAYw3HZK/eCHA/M9FjRlxtIM/cc/U9SzG2lS76/oYsMfb0neLGtu+nuTvDTpKloacn
	 K+0Dm0JPDsBCAzIHKY2lfHox36tAr14uoFtrCZuFuDYLhTUpsPwUakWYn1J9rCMVul
	 K9dmy6pbb+QsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E038EF587C
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177117269361.27374.3589534355178172917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5522c9e7e21234434c01b1e2042b173fa9fe43780736470721bcad4c8db487d
Date: Sun, 15 Feb 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771172693
