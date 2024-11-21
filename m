Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FC41D7E4C
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732215354; cv=none; b=MWsMrxhdc/J3RBtDJkeFz2/1OZDBM0R6AAeGmo/6MvaRJvncMC5LODjG6GvAV22sxz8grki/TuGcyL1vKNS2wSQaIZB1dA3VC/pOtVhDDlq1OPXgfZHvu626D1QlNztWYnyKQvvTX8EQ5oKEPVP8zSuxdF74RX/c/XjWJ9S6MbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732215354; c=relaxed/simple;
	bh=cKAC2lPmg2f1K0USyIbkQ7vvvMN7GUZAtgYA2eT6CYk=;
	h=To:Subject:From:Message-Id:Date; b=uNVGJMugd+eGQfeafcGSHkOQm3AZNSi32bwVU2JPX/R1v2eI1x2nXN5hnK4gTb2Y/bLVcm3c9USXtFT+mKSrHBmGOf/HCr6Khq257gsyr/wPpbZZWRdDZhVUEi6FxhhtQ5sZxDNIlqacu2aVIGKBY0ay7cPffc9uEBxCJczrZ7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hW47+IbT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hW47+IbT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBE92C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732215353;
	bh=cKAC2lPmg2f1K0USyIbkQ7vvvMN7GUZAtgYA2eT6CYk=;
	h=To:Subject:From:Date:From;
	b=hW47+IbTgcCnDcGbkU2en02zU+TCg4K2PX88SDxcR675SFZRD9C+nVq+yUpSLRe/v
	 zIayvv/S8TTiMvpPL9IXSlg2ervInRRxIGBw6kN1ZPLLyv6yuk1TSl1Mj1JK7bHwzC
	 1kkXozJs3O6kwN8k3NABWsNPs8GbWUqxUKihgfFhGz2hlqD9kM2fFEky2rS6nfjYYa
	 7baTggAyOE40c6fMwJ7YuUS/4u3UD2b5SfvwpDR3K70/ST+fEns670xpnobj49+o2q
	 m6rPyiH2zYVz2q9GtMQOcZq3a6pXurPHmAaX5mfpdpbnfC8TFvjqmyH5jLbRwYhnRJ
	 mouIBy4eU+oqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4BCE64004
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173221535367.20087.15561918954506863793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2d43b44f1ca6791cf5e80b72ad5f7b5eec7ec841702b0a44598120d911ec8fe
Date: Thu, 21 Nov 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732215353
