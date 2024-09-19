Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B9C19B59D
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726754754; cv=none; b=l27X6mMFjApQtBfmhZkOlIaXr7iehrLDs86b0qVvklb2xHMnxb8U1ifczXSP31OtwF+nUm+nkc3eu2SkbG1lq4mlx0RU4eCORNJFCJ1+9IdywsQAXDICyF2vZ4C8Xzo95wCCdJiR/45p9ub8NCV/jTgaVFuMQUlOOa6Ih0bO07M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726754754; c=relaxed/simple;
	bh=Rzhb5eXVQwVuO+CKg+THt0PqYXMElTqQoGdNLtUOik4=;
	h=To:Subject:From:Message-Id:Date; b=Veucmba+dNU4POmt4to3w6SvT5rOIVWHxKhR6m0dlaKKX8lgpXP/yb5fGqlcJQJH722F8JVJ8zoWkqrLpHdBRvusRLfm/s4TtCm3kbP148nTxfKA2910zGdYD8Pd2W9BISSe9ozkXpB7XLajQiZSX3SbF47MddsPzD4bpK9HjD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=itE1YVL9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="itE1YVL9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66DDC4CEC6
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726754753;
	bh=Rzhb5eXVQwVuO+CKg+THt0PqYXMElTqQoGdNLtUOik4=;
	h=To:Subject:From:Date:From;
	b=itE1YVL9CPhrG3VJETrY1xvptLCSJiVJO/+m2cp4b7Ztrk/ELq+pE8ITnNjVCv3W7
	 7Rj1ILXvbyekgPDNFRBG5mRlEKxdZUzEJOjgE2osE0DVnkLwaOPv9hSGMqazmVhYFN
	 3mMaD76PUkTpPGeqOcRuByOA+fqhQZaCPyxbiGiKrjR0OQ+NNky+yNOQ9fJJXmg7K2
	 W2BcgFJDR+tf19ikiRpnv4QS4wm/vfuozK1ZiSAZ4Bnr7p3UxOUGrvSU2T3cj/KdFi
	 bEoMazrlHcktCYCe9xrdk2wT6nRMCdOi6zOqgzEByYa6uJU1+jRbTsFrI9AfVvsSE8
	 HAeEYZfjZ0bxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A8FCF3941
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172675475359.19311.16469870581998576363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 961a5a18cff0409f65af06c2ebdec5fe589e1e1a39c526a25f1e219f60ec2ced
Date: Thu, 19 Sep 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726754753
