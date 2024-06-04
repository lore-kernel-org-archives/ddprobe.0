Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94B3A7FD
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 00:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717460123; cv=none; b=NkO30yack1JC8ba3/QU3FfolrJg0vV/AZQOHreKrZgyfzpnMHR+iMwdfuBiM5iz2YVuPUOKm7SWU3moH+hRWulMWL2er7hl/w+D+kYYmsnv3mGy2qZFzQ81KWEQS8lzSxHWEBu4JAjwToTRcFvHYj/UFh3mOY9/hMY1WgPjvgJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717460123; c=relaxed/simple;
	bh=+VkXtE9PIBlEgloqFpVNn4UC51DfAYp1Khwf1UkX2qc=;
	h=To:Subject:From:Message-Id:Date; b=GivZXJAPgAMqbXczO8RmvZ+WUKmaTXWHeLwvFjinOKgQV1K/efyrRySe6tFJN85DKXvb2R1CPibqH2ZVn+L1t64zZ7Qhiq+3MHZYekrjalPd3VZq8d3iPXkgSr09nZQKqibtARL2chcfuJ/awiDbG6tyBPaoTvt1KiNeJ/yKTyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lapZSGrK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lapZSGrK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1AE0FC2BD10
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 00:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717460123;
	bh=+VkXtE9PIBlEgloqFpVNn4UC51DfAYp1Khwf1UkX2qc=;
	h=To:Subject:From:Date:From;
	b=lapZSGrKWHuIhgR9LRMM0/oKxK6rBXAp/vRNr0zJ8PVz5vVDw1+ojwMEojM/avToZ
	 t+6YGQX3y4XBkO/mqHKQ0JaXTenyoYnEwcNOWfpVLQVAHCcLjkKakyULmaDVnbsVoH
	 h33Pfayne+8KpyQMc+CTJ8MnwYHkDqZ8MYALdY1ffbCEMrAmIfycnI/gNEmXeLw6m1
	 3JZ73iABsbvf02Wp2NjNGBPyI1qEr1Pp/7oLbr11X5IugI1fAoNgOQ6AluTsfSrPZc
	 YdxlCmSByGKQRzNHOPBSFlqGZonf6QlrlOjq2Uo1hTHj1awQs+lfH4qLgJKfhFFfVg
	 07kWPDTqPb36w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE570C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 00:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171746012285.10316.3974438643826626754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e65595f351ac5183f2046e9b7e3bca1a974c7ff6d120bb90c32cdebb3b2bc56
Date: Tue, 04 Jun 2024 00:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717460122
