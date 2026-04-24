Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D4524CEEA
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776994654; cv=none; b=EDaA+KLr9llHz4hMcWIZaGKh0Jj/sKh8qJB/fTRFOQVKfDP/LcJwWozclqC+B8B9NOnRYDYJ6d0+XRKi+DpCgBwYuYVbv3O5obTGBLIeTUaAMQsfMycSbBUT3764FkbeZ9tNfhLS7DjzAnF2DuN8D77zlpeNs3jqySreNqIvw2M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776994654; c=relaxed/simple;
	bh=WLgLJcCuVnu07VxtbEuinyxPYBL5OsrkhEHgfRxGDXI=;
	h=To:Subject:From:Message-Id:Date; b=LizRifnqiB1uWNH+NbPT6MKlqxHxXg0Fy01ThX2tlMeGvOHJ2IuUpSHWC+5/kM4mHEFubCJgdu5nc7J1l2hdg0F7efuXrdK9nTKPML2gLWqthZgAEfWr1ZflgsyRfxs1G6wE+b/Unh5QGcQS/OpZyMa4JCMaTnLLlQPbuIkJIQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M2WN2wY9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M2WN2wY9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B87A9C2BCAF
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776994653;
	bh=WLgLJcCuVnu07VxtbEuinyxPYBL5OsrkhEHgfRxGDXI=;
	h=To:Subject:From:Date:From;
	b=M2WN2wY9LkQNaEqkUah50kj6oOk4OFouW//q6kdrlQFUcCBBxbk3N4VJdD5r23dkH
	 6ArJYx0TzT6LkJqk/5AgJ9w7HTNLlMNl/o04K50U4cSlH416/rLMQDZJLd0hTbGZCf
	 7xUFl+viIh/bypGOEdYMSmTnyLVKNOmO5fbOoZOu3r4c6PrvS6uJ5Gc+gddt++bpZj
	 SCugGDL8jziUK4nEnl3zn8+tEqrReX5iqJBEBYl382l/5FBWXn/S7tPeEECyqo76bm
	 jmpcWME0n5W7FtyiYkF8FcbDptafXsCEPvuz9QJqe0lXfnDpYkmWAXg3b7MkEObgKW
	 Nct6r7kfGvUQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA14FFDEE58
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177699465368.27718.3081371528173562981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c075bcebd55b8bc99c786233b8ec88c8768cbc67f6e48899cd9ba2bc68f50d6
Date: Fri, 24 Apr 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776994653
