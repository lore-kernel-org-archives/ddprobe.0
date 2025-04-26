Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39AEF1DF988
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745694594; cv=none; b=M9cPlMWKtp7W6ZUfO23gk6dwpidAY6Y7c3+ThXq12XMGzvr0jmJojlMRtVZhWZDgnX8i6pUHLFBeC+XbcUjN5uWiqwREpNt1s5JLD35qNpE08fLkgPJgpmm391Rql63KPpFLG8yhIRI79CdGWRx26Bg0VQw7bSG9D+27zZYKuHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745694594; c=relaxed/simple;
	bh=LUkRhgmKxtJjaKcB8baz0+9SfSQBS5y/ljqSQxTrHTw=;
	h=To:Subject:From:Message-Id:Date; b=sYcGE50nAWUf7mBU/PJBF4h1n0I4+sF8XOH3l1BkVaWYNTahxA7dSaTSb6691R3jJ6R+ScQVhLmk/H2Mtd7tQRYoHNn6aAUrmpgwdh8iiBOXjMGxFO/EB6IdZM4qvKZX11MfjBbMfdxgqHWz8SmS64WEDmJ9pUO8SrHsWb+IRXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uDoQypke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uDoQypke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3545C4CEE9
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745694593;
	bh=LUkRhgmKxtJjaKcB8baz0+9SfSQBS5y/ljqSQxTrHTw=;
	h=To:Subject:From:Date:From;
	b=uDoQypke4mtTNuVA0woE0X2ozg4WBEYTipuLiM6j7FKu6vSf/CKPKf3PfinXXX48d
	 aV8YUVSaTt7wxtnsQml4EvWlfgGKaaicqVqrTXckolpr0gxW4XnBUXhhgdg0ENX4Rm
	 L8y3XuB4c0knWl0K/huw9jwV8A8DV32D/w6ytB9rFZQPG1J+nAUi/dNLfgjUsCH+Fl
	 FR6iifjVVodxNYGLBhzTdAEoe+mj82xsc7xTLA4M3X/lEgkDPi3BjD0jGvIKTq31jb
	 392fHJja9V/GzuauV6xZLaAPP053zXc/kLspRSv+x6vda/nFRF1tG6hW/PBWj0Apfe
	 UGa48o2LshjLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 912C2C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174569459357.13016.6514273099392950100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f95f8208d69adaa3ce2ed9b0834a5778e7d5c8cfb8b03fafbc26d039d321a6a
Date: Sat, 26 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745694593
