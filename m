Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389ED1A0BD0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756242594; cv=none; b=VLPT2e2DMFycS0uOMAwAJQY9LX2jachC4aEUqhTqf/oNFKFKWEvusIbgFOVWnKFmcGl77o7J/C09pyxV8HyROStXZ/Th6pFlctK6H8fEhKhFZw7syxF1fI1bb/5nNM9J45ybHpZ25lFjrngxvfwFP6il0UTeZrViiFVVs0NUEPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756242594; c=relaxed/simple;
	bh=UXRdWy+qN14SHEl/schpYCCvnzRfCnlf+6WnHuaSV+8=;
	h=To:Subject:From:Message-Id:Date; b=pjObKcPR4JpOzNGbqNjA/zDJJjhRigIFOGt3FDXHhWdWL8B/7DdK5Sphk4ZJNVPEtqj4h8LLnbvhy0M3r/0BNwus9Aa1mjMHtQvbV2II3Amcjs52tihI7SDpkdhaA3iTIeCqeVIqBAjoU1/UXARhoprzn+wnYVCdXphCNgY9k80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXXhm73o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXXhm73o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E501C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756242593;
	bh=UXRdWy+qN14SHEl/schpYCCvnzRfCnlf+6WnHuaSV+8=;
	h=To:Subject:From:Date:From;
	b=rXXhm73ona884UrQEbB/0wIRUhFc4gaJk1qJP+AXneg/7QNvmReHe1KVZhKcjNfBP
	 k18ot3NkWpFiU2EApbnf4rp8nKRKfce6ZFh3IoPUXjLyvw9sHGv0/yULESjC93o8ar
	 PTfW1036VAgwuiqO9mbBHGmCDgLrqmrgwv+VSfGyYBv+EK15LTWLASVfPBM+Lc86QU
	 3upc23H3nqeqr7jHT6mzWWm5ZEmPvwzho670hwrIM4BVNiB7UtATsZcZbF8JP9/syv
	 qdSCwUAHH13+XEIskkIE7knOnUHTE4AESJtWuRBa3CsGh1tpgeixf/aPh2SKVepiTl
	 isWSPuJ6+/3RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB0ACA0FF0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175624259357.9083.1266627057064233613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4ebd049f511e1b2bcc8a0bb5b1f35ca4ddf0605067c576a007dc60d4c7d856
Date: Tue, 26 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756242593
