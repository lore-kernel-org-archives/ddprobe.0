Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E70334E743
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 06:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773902694; cv=none; b=MoSRhoY3h787tmryNmAmR0+TOkOVvHA3AQeQZ8bdH/mlCMuciAjTXFve3i0K5QZKvrbg+ZmxGsRhOC7qe2CCP2npxPhRIgrB4+UETnJUqg4GBIs8G4vXWTZa7i+VmmFABYOdWcUF9Vrli3Tn0wVeGNChU4bkO2PnJWmCPL42n5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773902694; c=relaxed/simple;
	bh=a6cCeg2w1hf74H44hFPjujkXJ53eaw8y67KeOLse8bU=;
	h=To:Subject:From:Message-Id:Date; b=Ksp2yKlQoQO0rVB3lPGNxtBqqBSSow4akQw7ReXsJVsKjXbaMrC6MriufMneghVA2h+G44SLllQxv3nqzQ4g5MPUE8TEPPx3o5uReFhPZzdiGLF1gg6rDJpUtnhr2k4YFgFOK3Q94pJfe4QOKr3nyix9bXrGAxkItWRNZ85htzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=meE7bLBx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="meE7bLBx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1644C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 06:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773902693;
	bh=a6cCeg2w1hf74H44hFPjujkXJ53eaw8y67KeOLse8bU=;
	h=To:Subject:From:Date:From;
	b=meE7bLBxzJY5vX6xBu3p+S+HZc5z3evBtbd5JghqW1B2LzByDHeoYgrU9QMcE90KM
	 D7RzY7LgNTgY6sTet72OpILC4+BKMCwtApfkdlhcgNPhGYq/XeolXWfr22mKkuopmA
	 14UI2NvRBW7aHjz2mIlslJ7ZuLL+HJTKdZ4hDth8OXG3xaUnH/LUjOfZzMS/3/eXt3
	 y6YqNhbeP0tjq+jiQy0HmapL8svPRxwTTJpDmI+uhohNKY/F3A26XXJruAcDLMQVy4
	 Y6ug/zCKLqiGccplwbbCqydothR/yJH/mzzGUY1ZmwEKFUk6OD0cUVsW1g9vsdfJ/8
	 6i1ReURKsAmsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDD61075262
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 06:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177390269358.3034.5136631084506950215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6296ed6b25b5acf0a703587a36a77b497262c5e723d76ed9b4dc48dbb84d6d82
Date: Thu, 19 Mar 2026 06:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773902693
