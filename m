Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D0030594D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762339194; cv=none; b=hDoAla3yGLNHON9/bIQ7BbBYShk5QxJnFMSFRkhhOMeMJMz1QqL5cAovSwDQUZ9tA43RxZC1zo6I6Q6Ajdo1L4KMZWtWVtSA/XzQMMAyZPVekWWZBEZKmkQK6U+AWxFDe7lSSvp2lCtAY34cAsR7gntdvmkAJhmihQhJnLRYQOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762339194; c=relaxed/simple;
	bh=cdUe53qYqtDPqlW0lObhI09pB43yUpa2L4lOM3lAhG4=;
	h=To:Subject:From:Message-Id:Date; b=UDeAzHGIDAv4s/0vz7QGPvcnMPrx/FdrTV0VxQxES0XJRc94CfapXReeunuDLURRRkRiizdRVeWy8iVLdF0FmXOdL5C/0OgtVeRvMM0YRkU0JovML0WIwS2MHEQiJ7ucKRmOXcqTaZhXncSBGnXt2jG/+ia5aH65tDxTXicYJBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nTasLfrF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nTasLfrF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A141FC19422
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762339193;
	bh=cdUe53qYqtDPqlW0lObhI09pB43yUpa2L4lOM3lAhG4=;
	h=To:Subject:From:Date:From;
	b=nTasLfrFi2/937O6whtkrwyMfCwV/v7njpjMpkZEAD2dYNbPUjwhXzMgVm9n9NViB
	 eE1NhxJMmrA+1MD5iosqE318yU8QXNbRb4bZuTl0G5qeKiO0nPqzt8/UZnG6Jc0tl5
	 2agghaUgcr+VyOhyl5uQe+rIjV4b49lUbKgKb6Nqtvzv9586/NfK7m0EWTSEn9Maz5
	 rDfDCI9ZEhLHHt32zyv0T5+d6xpqAYYD5/N8SgSlFaso6P29fx+5A6XrK3WzL+lp30
	 mNiV9/l1kNTFdPzL2RiscMRNmcA2pexZHRShNiBmnDPzpe4ico5G3DmizSjzj1If1v
	 V84Ci0zRhyQaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91477CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176233919358.10727.12102656524957288181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9807400f9995e28ebf2f7096d3e01dbd598779f0211994d203b4d4c02861ba08
Date: Wed, 05 Nov 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762339193
