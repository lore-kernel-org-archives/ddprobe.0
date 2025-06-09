Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC2F17BA9
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749433194; cv=none; b=BvShlwy6D6/Hk5qF2rUuj1OSaTPKb9X2mnckDMkcHDTuPrWDZeBqOhhGlLnz4qWEwlGvoW+/yAoGCPQ7TFrjBYR74JCxGiSrMqJwJ9rHyKpnRxN36RIlVL+u6EfXr0qrRJo48owyxlc9Zlqlb8Nn091Eritg8/JcfA1B0DhdRyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749433194; c=relaxed/simple;
	bh=U3Su3INFW2ndhyl1DTgBiRCo/j7tEG12FOsxsGzfT3Q=;
	h=To:Subject:From:Message-Id:Date; b=aj/oQEc7vPvdYJh1dyWkLQWNZDLWUBGQYJ+TGFcdzywxaRACNwrhQbxfdoZjWjK+JZAsrwcrjgR0jpDP0kIoQW1ANPHFXuoYAqtms13xMoccnwTR/1k/sjPpLuwc8YW2Ifib65ZDzrjMmknl7o39HJq/idwvvZaV0uPh2+bqa5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQcRo80J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQcRo80J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FF3C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749433193;
	bh=U3Su3INFW2ndhyl1DTgBiRCo/j7tEG12FOsxsGzfT3Q=;
	h=To:Subject:From:Date:From;
	b=YQcRo80J4eAOkrhHDuahyK4T/4twNtw4yzKXNhTB/92kkF6pYS/FDFrzvhRY+Wdjr
	 Z/GaE+D/3fPgcNok3KiZ/1vr245R9S9An2FzCWqorKucYJdVZMA6+AXifP1TQHV2cR
	 HoS1Lw2l/LErvAA8tzPr2fARkckUtMHNG04a3Oa2f3KqZSvCnSL0nDWHuZBeiyfEcu
	 XOb20viVOl4L+4b5DSh6jjcfILlEOdu+DumBBEGsy0yDQq9Hare3HPxKioSBEeLotb
	 78rUFkDlBgzkTEhop7yeYkn7+0foPXJVw7+M1UyrJr9NrXDJxul6JmrCll/NkeFYo8
	 aTMj7N3Z/ZJjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92499C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174943319358.515.14927817639560911584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 767eae74d0dd284afdeed0da822fb067dcd6d7c27d35d1012f67ac0acd0398cf
Date: Mon, 09 Jun 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749433193
