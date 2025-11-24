Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B45876026
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 01:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763949114; cv=none; b=kwb2Bs6rh6WtG0UURcsKEaCI29P9hqyXNSyGCZHadG2ZfFwPPMIVVIlJ71XTqs8XuvhRgjI8cd3uqOXIij4BfBt5akil31wpCv/RW5E6dJxYO3bRNtp7qaOhD5RCKJfUJQC9QKgmUNAu0vJb3V71f5KlUrx8ql3lFeyHjonSA34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763949114; c=relaxed/simple;
	bh=G2s6hR47Sz3OnxCqXAJFyPKCKu8PuVVa38BkKaZEBGk=;
	h=To:Subject:From:Message-Id:Date; b=dhSF0mJS6NzBSP1jHY1vTdSqjbNCFZlqJCp5121hV1c7GyhWBJiBGEkDe5GUuEGwyEkfzcrd/tM5VKAavqtXJm8vE4E9TERCRJ4TQLvDynqkvIOtBVNvautc7NzW2djZ6kXYnxYopzNwwictEDaCRrau17/0V5Y97w6dBBLaGTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYFOway1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYFOway1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8BBC19422
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 01:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763949113;
	bh=G2s6hR47Sz3OnxCqXAJFyPKCKu8PuVVa38BkKaZEBGk=;
	h=To:Subject:From:Date:From;
	b=FYFOway1RF/YHgPKJYhg6BcUYCN9BextCmR52elyY1l1S8IOQn/QSQ8ZOKqkkVLfe
	 HFwidDypxao8OOEg7qDtHKtSi3WUnlqVOCRCvHfUFBHxoURjvQsjwur0mm248P6Ase
	 gfS08+/hE76nNONh5SOBLLp49IciRKpO9qKQudSGKxlnSBKI+0VlTEbl486y7Aupu5
	 b66Vv2JVPqM5ZEBl5Ay72PlXxFaQ0tHiiWrE2BYHVTNrU4SknJHrYNIbLO6KmfjWiH
	 cAQXEfAB+vVO0/9uNhsGffXg+xWhK82AkuF71vmgUbxnt+qu3la4rXDU3q/dxHswQv
	 8BkqgTjmIYZwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973B9CFD2F6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 01:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176394911358.31403.2490413007146649168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37955f6d7fd4a06639e3908f2304b22b7d4a3bb7259c9a8fb344425676422a0b
Date: Mon, 24 Nov 2025 01:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763949113
