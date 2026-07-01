Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A57E2264A8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 23:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782950314; cv=none; b=DCkTwrzsZs8Oq+KmXp+chylD/8Rt5iQ0JF446htUQ/NLS9A8uupkOEwuR+GCGB7fJZKZz16UWLi9i9hP/5W6lQ5uvbUFx7wcC2W8vKq38la+BtwIg4nObMaSpPZ0zgH60Wxn8OS2DDlwG+4kmIF0CT9ETi76dxIbBbnlSrdUh5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782950314; c=relaxed/simple;
	bh=mxTyMg1+OYuDZPhtJ66xb6gWJN6MqNAzrl8UPl5qgrE=;
	h=To:Subject:From:Message-Id:Date; b=A+OhrI/dOOR31VxfEWOHprU83DTP9Kmlf7tzJ9125sfvhmkjuxqvfaUhJ9mFLU4f2fn89XQOo0YMG/sDjjamFYD87u3mpHvtqIsov8EzG+8BO6CDLuYm6MJBVep6RNH8rHMl4F/8eKaF3E5vNnabGUZIjZanK3jFqDnXOAHkNhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eBlu5pPD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eBlu5pPD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3DFDC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 23:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782950313;
	bh=mxTyMg1+OYuDZPhtJ66xb6gWJN6MqNAzrl8UPl5qgrE=;
	h=To:Subject:From:Date:From;
	b=eBlu5pPDqSp9RHukkeMMJqMtJ9KhBOXgJGQRhUymNtyQqCsO6L2k7ELFx7v5ZpbDi
	 F34iSXVY6Xi5Lr12N8MEn2If/+tExwL6aFVtPrQf/ysJRiy89l9pG/FLO2NLaJeJOC
	 3Xf9t6E2G2HWZtldPmvup1PjbNGffdwJhxY2JgAwiDMt24+FHljogjx4Rcm4uOI4OR
	 xxrjUhAokDoheE3up1movXd7/rGAHrkaGYPsBspX9gF7uESKHBHKmxxkKbKV5W2abw
	 ZQbDmGCrvff0BR4XRAZbxh84U/ySntjrBX42KwjevE+gfjWXlvXIzqTUkwtTxhOg6J
	 Q77FsNEbjNvXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C58C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 23:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178295031368.32182.15183025290921253087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e43781854fabb9033128b8c38feb98b022fc88f1331355f4b8bb76cac16c84c8
Date: Wed, 01 Jul 2026 23:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782950313
