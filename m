Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CB33DDDD0
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777364854; cv=none; b=LX+xGSxPx5zq0wdm2/qirYezPbagX7r34+Yabl5zXzhXFYNzVJ5AxgDZ7c3UzDGdsbW4vMezc9EKMA2gBKZnO6c0G+6ZB0Hq3byRneoXpqssZ98geV/G7nf/UXP5lHwv08imdC2p+t1eax8DXhxhwd9JBz+Mx1a2QL3nqDe/Q9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777364854; c=relaxed/simple;
	bh=dYxGekodf8ftL1/sdSx5zTSo/S8LCh5NLQ+sWu/1UEw=;
	h=To:Subject:From:Message-Id:Date; b=emPswWJFn4xV+Lt1NraLugZIeaGMQsTB+3N2jvIcrJNVwADbzoJumW9IdKW6TMCfJnjiQthYLFJ/YXmYVSzbj+QaclGJJXdIfteCFz7lnkpm3vBuPcJ8sCmfJwPKFMUAJBBUFSoLTLgchPGcx8xgeu3KCe6/WAApOSJ/QyAm4h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fwK/6ajH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fwK/6ajH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6537C2BCB5
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777364853;
	bh=dYxGekodf8ftL1/sdSx5zTSo/S8LCh5NLQ+sWu/1UEw=;
	h=To:Subject:From:Date:From;
	b=fwK/6ajHBNYUwpInzdbzut1i8fn1T4Dwxm9GdlDO7smuDDrz08N0UmHG+4OCDIHR3
	 GIriZ58MwywlOQuKDuMwVGAv5d2xfvd1kzBUtUmsq9jQ6dOn80UJ2Wb9QW+5aDM3Xz
	 9xMwr86pDKm8jv7AREV/eh+ovc4QyIYvW8gEtNUbDfMeHcphZ6wuYswOqDuVOCxvw2
	 kDxVWuqy/vCTXeGhGFieJgblkBeSr1iZf82W07pDSuTTEa1RmB7deGLUNNfgFtEwyL
	 XgU7JxGrTuTeVP6QzrxkZRNYRvPZqUnkl0Z+h0BODR7GLvI/ER0Hf+C0GjEtju1fY+
	 aSE9r0DzSEbDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E86FF8876
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177736485371.27804.1424872859523225463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbfffe4a982175739b786b1cd1906c8c0a20b7b1a988fcbf4ac4b4d85ff10814
Date: Tue, 28 Apr 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777364853
