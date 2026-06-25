Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73BE23812C8
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 08:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782376654; cv=none; b=clymwzgZqjU1nQuhngJv0mBUtjtthOs4aL5zmg3JAsix8+TmKs2+h7wwCd3m9sSC1heDdqRtokfZ1it7ENvN2Dh3oAvn6TTl0O3FenYWAbLVmSIIRWncVvWwJEVeUUuPHwn0f0n1dSFDyvT9Q5/eGGxpAh6s21zwv/VhydhFmro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782376654; c=relaxed/simple;
	bh=lRmeyo9Su0/t/XXp1j+ZURZbGgw2m6HHpt9caxirxzI=;
	h=To:Subject:From:Message-Id:Date; b=DlmN6tCdy/o0hF8TbVVertN2zX5ysprHQLw/DFof+MfkSj17rExfwM3FbEYkyN3NEypGl1JIRWptZQYJMlRdiophRFW6HUPKPa7zsc8TJkLdX8xIB0OzGhWAY1E/49exHBgqDDo0dG4Fto8UpL/3MKDr8Qyq4yYHVt8VFSSVgdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WM/QBpvj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WM/QBpvj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1191EC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 08:37:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782376654;
	bh=lRmeyo9Su0/t/XXp1j+ZURZbGgw2m6HHpt9caxirxzI=;
	h=To:Subject:From:Date:From;
	b=WM/QBpvjexVFfdh7FBE+mEQ46IhLrxGUcODPpdhyqQU6hBD/PPRjaNOcebT6O8qZP
	 PKPYhDcFhDkSg0P/uol0rq47fi450VGNGRWYsttXtyfeiGnL1ZhhCJJBAMQ5rIeHWc
	 m6IzqIwUhaN5Oc2r7U4h+9VzvHvDBZi4bMLsQW1QE6JDUCoE7bjoGGEnRL6a9mmGDg
	 akLP+emtHaiqNeopzHFeGmi1vcxGmbUsydklKLDDTQFNKd8+Z6yewUhXSWGfe/UBRQ
	 SgUGvi5E2PPwYO1SjBwqNuWnt8iRiLUWSZrK5dB1Fepo3821IPSjeqakGAshshbRFd
	 VO7kGTNHDd+jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D647CCDE006
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178237665385.28341.10093724273249876990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cc10ab1e1f5f68f6594bed2f96bf11285e61f883005f1014610f52b5784e845
Date: Thu, 25 Jun 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782376653
