Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D8081BF58
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745722195; cv=none; b=lOm41qvgL7ZrJ/nDMWgb3snnfABjbNuYwd5h/9qTlqwDs8D29OlgYEX5ixvJknQAh5kWjVvDxLj8xdbLz+e//vdbnj15ytf3CCcQerldBqccZGlTZPvgO6sOwbufLPtr6qtFJCXmtzh8snq9VUeVyLa9VX1pAAHvqSiaFd/ITbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745722195; c=relaxed/simple;
	bh=ujtQA4Og5KKdCJUhQp+kIyfOmqWizF2GScgV++lkk7g=;
	h=To:Subject:From:Message-Id:Date; b=TkcXi7x1F7Cadv19EumJ8ImeXL1ui9v08mJCy1Cq8ZlO3I93M7kXJdIckSJLvEsNTzAYb527XygFvDbuJYBYzT9i286n71RjX7ulvCCvHT6JHJM7uL6/FEJ8ewMydfCHkC18dYdkMxbaLTcAQfM5V7w0wsqMdNWwQ2ixudMxwFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uETNRB13; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uETNRB13"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8111C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745722193;
	bh=ujtQA4Og5KKdCJUhQp+kIyfOmqWizF2GScgV++lkk7g=;
	h=To:Subject:From:Date:From;
	b=uETNRB13nuO5lUimnE86FH009YykVgua4f28qSh4WOEHFcolsGGfJLVFE3DpJ/ycg
	 ufBfwzM7kRL3TKzH2C+Mx6DeqBDu0sq4JufRY2g1UsvKKutPRUblu/rT4D1csstowM
	 qTgcLXpI4sfcpvK+EjQTGD/VpTuNRR6KBNeBY/14IEWy45YUGVMewonXJqQZ513Lph
	 b2hnYzFSW5GtswQa7PV1N1ZvRDVV08Jv9zbJJ3hwDCpWLd23Rx7R1/YEKUlNe2qyM4
	 A33ob0uqwMjB8B89d13TZnckypEjJaY3TGo3eskp1CsHwxVCqWaW9bbDA6Zr7/YNne
	 R7HDWYhA4mnkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBF1C369CB
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174572219357.24277.4062485040017601694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff120eabad3f87c4b240dcbcfd6f683209dffd9a0d65a1369d986a122ce858a
Date: Sun, 27 Apr 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745722193
