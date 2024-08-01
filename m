Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEF114A4F9
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722549354; cv=none; b=Dlb23dFkNqD8JHUU9Oc4OPMCBw6DC9VAjfUEkviXSfbEq4e6wYushUePO9LsgPM6Nytbu0JeGf+BXRvKVyRy+AiQkatESjfOhFWw/x4kz2F+Bkky+XQtpYUQsa3DciQCyLU42G8jKL237jlRxGlG8W8OThNCTwBWL/jZFzwr0wk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722549354; c=relaxed/simple;
	bh=e77ktbhOKWP1CFM/Hc361MV9G9r1jxVUgQDH3BW5IMo=;
	h=To:Subject:From:Message-Id:Date; b=JDH7TeAF3KyFE3/Jc3mBX7HCYVyNpjeU0j5Z1klxGJB0bdd0jK4vMdmZvkSa+mD95/qo76fOmV0+wPdSq7l/uq42xSsF20nhEJ1B2/cTXdVV5aGPFts3TMm7eZhmamslmnm8BKRUsq/Qd6pFcbzzyDpZvElJkrBzz1Fm8Q1/GlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tKzXp79m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tKzXp79m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC251C32786
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722549353;
	bh=e77ktbhOKWP1CFM/Hc361MV9G9r1jxVUgQDH3BW5IMo=;
	h=To:Subject:From:Date:From;
	b=tKzXp79mTDP9k0df1gM34A7ki+PBnKnXVJQ5asRZRENcW88p+sRRjZRQWWrRViwQ6
	 rCx7kVtyIEdidZ2l2FMUP5WK4t7tAk1NMTgT2DUF7jnw0qVvFB+qqDKVrKNW7/ZuCy
	 LgTe2Fg8jhz/sv5G1C6l6aOc11Ex8gn6GrgvuRiyfrH9PxUg5l4rmsouf29NJVX5gm
	 ctnZVsw8OaRZPumGSP23iBvgNLfH5OLprdObZUtiJSyGqNbqG4WnOGlpgbxn3VIFjJ
	 B2kCA42BEZniQs6FV85OSdr7IIrYtHWN/7aSGV6nPG1jpy5D0FiDM86unXheRqlWev
	 Rid3JnuUkX59Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7703C3DA4A
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172254935366.5931.1015709389143042257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38e5b08f05df6a15256a1917f6fbbca855c4e1f627555f70b0b372610311ba13
Date: Thu, 01 Aug 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722549353
