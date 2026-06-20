Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4938418DB35
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 07:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781939794; cv=none; b=fjPknNUSnXCRS45DpAPHs7zhgYaw/UOmPkqYm2Y1HvNd6ww4ecFIc+tngySNVOkx3toiFiBRD/a9DLXE0hhZKA141v4qD2ml6gBnIT3laX1QuA3yIT+3IdnPD0+YuGFMh9r2yCIhsxNomjBqKMB3T3cTB/8d4etnYCW0cbLVDk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781939794; c=relaxed/simple;
	bh=zldjTIJVnhhTf2TtsStPAtat6tofEbpBcB70RdzXah4=;
	h=To:Subject:From:Message-Id:Date; b=Fjm2Vy92lk38j21hRLIXE0WhHxKc6kBe92j9okbOyE40nCvnQHgRCx0HkOgtSVzQLRLwjist3rpF5JESe/DtV8xxti4tJ4GNWnfAsT68QGg6wJRtC+ehIGPR8ZWWDavhRHizydutVRrjmv9RKnIC9wiwtOMEujxchugTO7qUnh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vnvwbt3Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vnvwbt3Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BFBC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 07:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781939793;
	bh=zldjTIJVnhhTf2TtsStPAtat6tofEbpBcB70RdzXah4=;
	h=To:Subject:From:Date:From;
	b=Vnvwbt3Zv3+NoRKEz5196kipOlCJCLlqUCqzsvUZ4I5I/EmlujEr9Y0J9hI8fcf/9
	 pN1+CE0EAYIKjprYHT3awa7eBX/SvEcmmW+x7lApo+84ejHcTdJss09Px2Y90cUbbx
	 kBwWZRMMj6Ms7UaA52fM+hr0BCPvVIP6fFrpKi/2navedTZ/12InsXhaaId4XB8+xb
	 HAAyus0g6dZSvPu9KMu0U/iN58x4883c7ZcVa8m0OAp2Ug4jj3DmY0WoJMbegdMOSb
	 jju4gLmglkxcjxHR9JUEylRWuvun4hHno5dGQzTJDA/prYgemCJTFjkydaKamv1HZX
	 zsfvAnYut0atw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF57ECDB46B
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 07:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178193979370.3236.16891100003388377402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3399f2123851033feb17736d74db3265de558b96a9e9139109a663b54d1a58ba
Date: Sat, 20 Jun 2026 07:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781939793
