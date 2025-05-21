Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347A628FA84
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747858794; cv=none; b=A7Xhe6QrmrZyM9mMJiS1KDyR1aq2UFCbdXZlpFJVj34tzFOW/2aulhMLqWDNFDg6LqlZtUpFCkBoM3/PguioZooU+QDSgjegp4rCPZcl4RFDkWCNJrmVVwtskbA67OiiPL5sORVzoabH5eK7CfXQBKne64yeSnXIUnloHxaWaB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747858794; c=relaxed/simple;
	bh=d60jOZhjxrpN49LdLDVfY0D3tP/8adG0RV4SO5mr2do=;
	h=To:Subject:From:Message-Id:Date; b=ME8DaG+YdeyI7brjPzXQZJRww+hmzcG5JbFIx8+br2ezpBPAQisSIQuDNdd3mdv6Na9/Vtu9+U+K1L6MLIE/nzmDcUA3Bq9bNxxdjvLF0czKfehLn3UQPNe6NGfs9DfjYGmcdKEd626f4ZvxG87lU9ExH0xEBSvi3fsxwyPgtjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WygNLnlU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WygNLnlU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69BEC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747858793;
	bh=d60jOZhjxrpN49LdLDVfY0D3tP/8adG0RV4SO5mr2do=;
	h=To:Subject:From:Date:From;
	b=WygNLnlU0mhB8uROSszwEUuPVqOk4vh1B1y8Z77xeJtSuFhOv8A5/kesmxnGhwdK6
	 48FC0Xd65bgK4xqtWkkyEazZs/niWKC+PrSmzvlQ+u5FU0cV18Zf05f5Rcyg9Mk6uZ
	 jWejafRaBWjCEf1Bat4911nhyEj/Pg6Q/k1LmwT9ldYluxR+TDsAnaWqrdsa9qceG9
	 fSV7B4r7ZwuDIXvTX02vloxyUsjvqrfgwFNrd9V9luGv1VYxFaqxr49QHVFIhG7NsQ
	 8UYthO6CtrhAuO2bZ6scWlbr+UhQW/C2NGulJjmYSSrcZdtgVb5UEaDhNCZbUwiyPG
	 f1ScKMlnV/sYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C0DC54E65
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174785879358.24960.2111626953178821937.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0b5c40c8eb55b6f735ff1541944fbf0ea6e15890c39dd031b9d8585768c77fa
Date: Wed, 21 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747858793
