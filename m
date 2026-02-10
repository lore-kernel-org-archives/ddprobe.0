Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30F1627E1DC
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770712434; cv=none; b=DjTCwzUoI207J8zhJ4J22elqXCqFDiLa52GgctSrUVd0EqekQMgqOsidj/C1jDUKkhWuQA6xUTNNTrjxWWOOtEnDtuOf0A3V44SG+1dTNX7JsxXJmafK7+p5LlDO6e4pIV9UKhYohzx+mtvszCrLfj+SJLx3K9TMWUF47KBKmtM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770712434; c=relaxed/simple;
	bh=cMR7ElMGdgn2O9mY+Jz+Ecf+pmfhIKYDTTH0OCb0g3s=;
	h=To:Subject:From:Message-Id:Date; b=NSsU/xIlcEs4q4ZuJrNFw7U0SMz7Kk26zcxMez8L4aoxocZwxO+0caeoFCRdxZzKlahTvzQLAuQIozBkVsh/uLnYJnrkD+LNN8QtmulZ80Ltm34bDiL2CdBJx5PK0/Xa2TJubGQ7QUhlNQJWKvL6FDzG375QZ8DMS75MOZW03nw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fYMn3pZ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fYMn3pZ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9340C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770712433;
	bh=cMR7ElMGdgn2O9mY+Jz+Ecf+pmfhIKYDTTH0OCb0g3s=;
	h=To:Subject:From:Date:From;
	b=fYMn3pZ7XM5V+WMvRqqA61oOOvr+8KxxKww/mUMjVUeDHfJ+wyuutphukFfRnaN5y
	 d0CY+zd+Fq6wZ+rXt01Tax/SeHuz3M+qMl0Oioo8nTJsTPlvEwMexysF2DyaU9t1kV
	 HQrN1cKc02qnzfxYrWETnednmaRIBhHyVC0AdPhbHHdeNqyuOhMLTWHZQ+pL2YhCl2
	 FwY5lwngwiN6GQNlwjDTSiKg2G2631ZOqZWLAPD6QR8aRs+aP3aG2FB6GS9DW0wh+2
	 eTOOCnkBEhbGP/V57YLJLUtmWpKNtM10I0Ht+FZznjpDrJjKdXwrX1OIxmiLXdqdbZ
	 yyeWW0pKwbKxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9631FEA3F25
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177071243359.18706.17030511663657733278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46c5eaccae3b223346f7db318d05f500ac00ccad529f0ef0d129ceaa13c56183
Date: Tue, 10 Feb 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770712433
