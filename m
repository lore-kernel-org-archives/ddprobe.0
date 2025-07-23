Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D385F1C863B
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753298993; cv=none; b=CFPpKLUi4NIcOaDUBRI9CXMWyCV2JMs0rQxEpUCk0t7h1Q4U8DhY3LQswIq/fAgsLgCpnvBfJ+SJ04+U2/8NltRyyFqiGM5MrGVPSrc7xiuEkx20EtS3ylgAB3bcrZsbki6byJJnsBEqYJSMMr5ybwvP+7s2+96mWgZ+SwhGAmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753298993; c=relaxed/simple;
	bh=il+WnitxCNC3sokzhk7uHfswL7xH47UeB2/ENcYp6Vg=;
	h=To:Subject:From:Message-Id:Date; b=uzUuYnfptoacNZ+5d4up0E6zLvifEKoxo0SscWQVyi5F21WT0+SMZcGs4g53WM8vcPZMftzaun1A0a57LUv9SN1tbdPCeu/X63B46ATkLyJizpAClnFgn+NY121dUlyQAV/GelLK26GuVzg2607JDc+Vj1WA4UhyUaNN3DcSoas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdqIhZLb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdqIhZLb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EE9C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753298993;
	bh=il+WnitxCNC3sokzhk7uHfswL7xH47UeB2/ENcYp6Vg=;
	h=To:Subject:From:Date:From;
	b=PdqIhZLbk9er8lKtBbqKxzkFRN0vxwKLI3feV8x7bhPAhRvM76ipGNWwtbJy8fBmZ
	 E70vxOmBkhYG8OvswtVuIE7K5wWRjlX4VV0T9fc+zjU+8uDRfbScfJPBl2Dzf2rCIx
	 HeBFXOqVWJeSxwmZd4OCoLztlN87Tt1u4Ul61z1lm+hwB1Es4Gi2Z4wkk0lxK61vfu
	 T4utATeKwdrylV7pbHnIXC7pCe2lTmXfqtzuNKtNEhh02cErtFbeotPsGjzMV3Imsw
	 O/53aeA7K4jHOguE0y3YJijhMNLjJhU/bsUdwOsdCZopN56ZrBVBZVIbmaQBHk4ZZF
	 rziYzpY3IyWfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4A0C83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175329899357.11251.7092399654643519151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1907e7aeca2fcfbb8ef15aa5ec89d5d43dfa78482f68844978643442980e0c6
Date: Wed, 23 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753298993
