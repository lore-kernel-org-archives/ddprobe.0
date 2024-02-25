Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07D5863B
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708835297; cv=none; b=tlQ5RM2C+t+rvuChU28+DXNy0ZenzWrKaKiNtJ7lKhqmE4xiR9Sn9nWZUi/BSNG7KMZx8XQ/NkC4iGpiDzv0aRCe8XAwKwpfX58uZwRm6smASLHeJty4tbHx0a2k5+EYjTTu9gv9BcbpFJbgbbyMauLXplX3qZxld4gc68fHnzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708835297; c=relaxed/simple;
	bh=dTm4dZzNcAIf5nAvFLXwbMDCAxkbN4e3Oj/ve1EbABE=;
	h=To:Subject:From:Message-Id:Date; b=hw9N4s5t3yrHjbyNw7XsJ2cTT84yz/ACry4hdRLBRf6GNEq0b6DxasJgb+IiDrfT1a9rlPJ+GlfLa8IJA+qh8ue5gkJgh8ciS4xwGkvDSKgiN/EgK+iqP+3GV3liVM5kO2n41LvXZAQIAzgJc11Ko2vvnqKQXf4DSIGHqMwok9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OGKLgb7f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OGKLgb7f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87DEDC433C7
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708835296;
	bh=dTm4dZzNcAIf5nAvFLXwbMDCAxkbN4e3Oj/ve1EbABE=;
	h=To:Subject:From:Date:From;
	b=OGKLgb7f6WJQup1HLIYK+6Lj40EurrUs6dpl6Jbc6y5513HPi+VZxveTPn8WWkaEh
	 OkPkw56ZCil2ImUFoAOGQ3qF8/Z8pyBvx2tB2/GjisGL/uJZJLn1lhBrY2Zu3jcTnd
	 /gmFkRdojFDY2gb0MU+oofViM+XxieZEut8TBDGLJoThfz3k6mgIzVPewxqnbuIavF
	 EyexwM/nG13gNdRloCP6jLRStzWNembWI82D4EyM+I/qdzoLzkkBnoKGe//gtH26ar
	 eYp/4/KirdfjucThSOEsGYg1s2EPhAbVqDnJTGP8Oq1pGFYOKmBR6DlRDMuxvODoAy
	 Z11Y9qnMrHItw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E164C47DD9
	for <ddprobe@lists.linux.dev>; Sun, 25 Feb 2024 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170883529640.1069.3779332907318141207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 319113f49c5b0587b5280f2a329abc588503fa47621708ee35238f58d6b0abcc
Date: Sun, 25 Feb 2024 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708835296
