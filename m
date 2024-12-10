Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4B622616F
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733820354; cv=none; b=Wo3qh7juIuTC3+4vHUVyGx/XcL9pOnv82dDND2qdboRN1bNbIWtOuSGe7n2k251hatvdIVgjdY9rTAhrOQLBsWBHlpdC9Qy2rlwUAB+j/FVGzgt7tqVnzMfQY/8GFalvNFyLSlITzZ4bFqMf26Hfl/yY5of3cYADuxoftD88PKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733820354; c=relaxed/simple;
	bh=w8JvMyKoekWrHco7srD72zj+Vh2ZllfXn/COBV+WBTY=;
	h=To:Subject:From:Message-Id:Date; b=n/1vPdVchL9iplJEPy8PdislSkDlS2yBSqkT+UKB2InLLpx9NvXfhUIHh8rRNteJ+fIH6znsnhL5hKRraMesEpeK1I+aa+pKKQSP7GzJnGyfM8fHvsiNej8QkAlltdtDImjDzfcdM9mPG0K5nZdpGf/umbCMJSfnGVaSGEjYR74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rtdoa//K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rtdoa//K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3ED2C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733820353;
	bh=w8JvMyKoekWrHco7srD72zj+Vh2ZllfXn/COBV+WBTY=;
	h=To:Subject:From:Date:From;
	b=rtdoa//KrVk3wZc6oYTFBIOUhZ+oY05/nFmzE60vV3ylzPv6lUs18qSHXlz2/186o
	 bzEW9YHLTx3jEv4uqJgtIdNmrNkOejDh1vP5PvkbENLztUT0DRuBg2+YfrjGpCPe25
	 4SUJg5hlnAflnuI/rAqt7dXfhbkmtCoPOqGSKL3DDvQCD1utpNOn3qtfaTSpB6SoX5
	 ksC895cR8pQm4FcNsucKdhJwihmryrDC3739vSSq8DL79RIiLvDqKOaJO2KwMxnO60
	 5tYvsYo9Oghi2ewaKf/Ki2drI7D9SaieokY/JJMLGTFx00zev99BF0Fnn46PjS9ls8
	 Y9g6NL/YgzaAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978F1E77180
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173382035361.20013.3635008683752430201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b2e53a8cff3ef8967cdf3964e23707096f5034793580d1a4d13a1fa5e0ff2d2
Date: Tue, 10 Dec 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733820353
