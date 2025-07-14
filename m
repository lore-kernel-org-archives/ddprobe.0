Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1704B255F5C
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752503394; cv=none; b=kelcYsfKtKL9sciPGRMbmWO/0DKdLRKu2jC1IY0ImowhJy+Ejrli6YJd6EEhibtp/ibU19rmJuR2cXgRqpAE74/QKPHA4TVlJKKwOgK/3ld4y52uA83kka2p0PgeckYKJnT66u84mGZk0gsKciR/agHUUqRjth4V8dNjcn7t/gE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752503394; c=relaxed/simple;
	bh=sHjzjIOVHn28kLa6Vfi4DH3vnhC2XNIMHKvroRnbTDE=;
	h=To:Subject:From:Message-Id:Date; b=a3HEOG044PGUONvnsprdOPncnpPkHT/ufCiI5mBAwIHldoL9q6DP2AXLNpxjNKG8CpIR8oooJBznYPfu9l3NI39zF6NMZlC6bKQh4TZXkjre7UsVrgbCNAco9iTtE0PGPC+gPlL6z2PZl4nlnmLugScxKZxtdHdDYLB28dkhCXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyFVC4Fx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyFVC4Fx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEFAC4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752503393;
	bh=sHjzjIOVHn28kLa6Vfi4DH3vnhC2XNIMHKvroRnbTDE=;
	h=To:Subject:From:Date:From;
	b=eyFVC4FxMETYz2v21FK3VeR1mBLeeXjk4bCKOVxHAIp+tVeAV6/Koo8qBHAbRD8kQ
	 1O4leZ+tu+cMrJ50/oTocjQ3t3vEfccRSnwY57zuHu2Ttc0Lac/aldUVGeMl6wOfw9
	 8qFCJiJKc8WU1BDUOZWWGkYGuLQ6Ug5PE4fxvXGE1DqZCT9X5E0xGBaw5INmntU4TG
	 UZX6uj3Gcldak4JfyfcTXFxVZrjBA6i2fiE1O9g95lC8vNVmc2JVMfH/uzflSk981p
	 HD/Z+wV302OfrDAOgF+4YDPqRbkFonb4lLoV0v399Ji2BJ7/BIte9sHNnGaP9ZvE1E
	 VGkCBhJBi0U3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3A9C83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175250339357.1057.5359203522957214504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 607b6a93212d5a191bc6ce432435939e05c790fefab333faef8570691a065790
Date: Mon, 14 Jul 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752503393
