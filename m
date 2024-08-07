Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C884D1C823D
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723026353; cv=none; b=CrJqgTu+VT0XLdF3i3iVcpWJB9LtF0bhlhfCtJmOuF90PSedW4c0Tz9BgYn/e4pDlHnHrrNYUsd/xI9hlwJY1fEloSTnBhcsv8dPK7fqTa8526DqWFA8gqlHs99/4GNl/Y6y8Pf31LqZQ4CnY5oOMPPPrXmzje291ArewMJI9bQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723026353; c=relaxed/simple;
	bh=DgaZoo3ntRCmpUNcz2dn0pwNGhBVjZ7c/gRqlZmPj/A=;
	h=To:Subject:From:Message-Id:Date; b=P9ZVTV9QZu6T8kDDTEbz6PkNTI4tXZ/emL7tXdkxGvNpM03ffVI3IVz/ktU2l4Tb8icTnmpgWsnk9j+0jjQ0QR+nFYiwMcydC61pad92ghvRvKPhi+2cDiDDEXKioKMx6dzY46a3oEENxN/spL+IZKZ5DW/PVOeahlfqZK0zElo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JCdSSgJ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JCdSSgJ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7BFAC32782
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723026353;
	bh=DgaZoo3ntRCmpUNcz2dn0pwNGhBVjZ7c/gRqlZmPj/A=;
	h=To:Subject:From:Date:From;
	b=JCdSSgJ0+ucwwKakncYUUVAPhoyc+1q1MNXCIBz++bAYufMKTDTcWEPFR1T2//VOj
	 AvJhm2RXQtUG6ump342aLRr6Z1XrgKSqcsR3sC9C7pE5jhuiI/m+IcgJUWhwrIGMJg
	 0EhKmtfxSFoGlBYeAuyT+8XnwRSqsyH8QFr1gifYga8CaOW93vHlcS/QQaPJWW4Cd3
	 dj+IlvX6vEys7Le08Z3c5b5EYmstf54SbKHxzULLIKyFlp08YyMMSQ8/F0bIXMq5Xx
	 DXBB5VDKiELVPAZUbX73d0BBFXxrpHcA8H4UUV5ff5oDK8uM6aNQ94aK+mMzxHp3aH
	 A7/K5DLpnF/Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A76C3DA7F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172302635360.2398.10532405038022349616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34e02e69f373e62e222a3c420958f38c86092d5a6b6ac4b8a6749a2fc4c8ffa8
Date: Wed, 07 Aug 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723026353
