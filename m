Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5771A8003D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785027034; cv=none; b=HtHX+76HQBQYThqsCy5ghKu1RIjcJvvJZuuVlqbr/jwd8Q5rYiK4RitVHbToZEU1Is+0WjzAlrmghJZdWimpnu+HY0OUgqfqj9coDcwVBXc/kLg3SE9xwpkayUixUkSwYVCuUSRtpzNBcFPactH8Vl9Gk5SNHMbDAitLXljm1Cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785027034; c=relaxed/simple;
	bh=ZAb2Ni2K8n4OE23zwctv9tdcBg5KRcoBzt7YucGDTBk=;
	h=To:Subject:From:Message-Id:Date; b=mPTO5JGXBDDpNi9cR303KOxPlwNBnQaOb578MfrH8DmCFKjUIKJhzv1/ktIiviovLb/5AQnTaBbjpnR+PkYyKGWjbGr45rcupJLKqehOht7AcKOV9Y6W8G5csKfNuiNkeJQNgoOgtR75X0AoTLO9BRWrHT/JUbQWwZXjWhoeK+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgbTzm98; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgbTzm98"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6458C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785027033;
	bh=ZAb2Ni2K8n4OE23zwctv9tdcBg5KRcoBzt7YucGDTBk=;
	h=To:Subject:From:Date:From;
	b=mgbTzm98ep/Br9//cQEbm4L6D9Dxvqj1g6pOWuU/e/79jPscMK2ng6qSr4t6pBRUN
	 s2QwoPeOUx17OLlcp4eZoY5ArKgNzLcRKt3BwO3344V0xhyZ0XLQ4Cl+AiSgjSmhBn
	 5Oni/2Z9JSrbEslng2pr2P5WK+RYNFUutSXegN1JGiGwllgEHxV7F4GHel0XFPaCvV
	 6Y1YF/T/vxhxNQ/V/WhAlFTQq9AXbysiWd/Vf1W8Wh0SRqTCkcCkxFSggWvTNLZZ4e
	 fKPCIshNl5HKucHdJzWSdSM1fG7zt4v4HIDez4+NP26PnWOq9/WhRJSsyUG+uxFqB1
	 NTUFJrfQ8e96A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAD2C531D0
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178502703368.23626.11361056956418171105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca8a0cefad40e56ad36d00d6e3dd12216714cf763f54b4b29fbdb762634a1d0
Date: Sun, 26 Jul 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785027033
