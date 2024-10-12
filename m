Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3632934CDE
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728729954; cv=none; b=E+/dkw0wDh42h/UhKbCtuJoF39HeV6lboefRKyQZOq0VfUvOW8Z7o/SeStoSueOz84Q2wk8m0IkK1x170X6r6+hD8cKTKKF/tot/mPwo22k+CjxgV2F7umE3OE7WKdn2X1WRKHWYV8yNngNMen2MJ+nSEMec/+QoaKpw1IB0K7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728729954; c=relaxed/simple;
	bh=RTJbs7yE8gXDqdBHJUBnbFzpOdFxuRVbEXhtWAhOffE=;
	h=To:Subject:From:Message-Id:Date; b=KpFE7zee6UFNGOUs9vT7yiqCQvV2P1Ic2M0hbSsDzrAk0Lbsg+sBX+NB+YQHMJRvWEh5kcImM1G08RHwiiATZcq8aCr/Krd73f4KKOKCcNg3VtmoXdttPqV856Y2iIDjNFamKgVmodSclyoBHfOZA5M0IzeLKxtngNmDQprjosk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQVT0CQS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQVT0CQS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D35C4CEC7
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728729953;
	bh=RTJbs7yE8gXDqdBHJUBnbFzpOdFxuRVbEXhtWAhOffE=;
	h=To:Subject:From:Date:From;
	b=GQVT0CQSgQ1b2raVc+F5Me/9pJrFQBmTmawwhG6E0eud4Nyblt7Z5+m4hozHEYclZ
	 RgReCABXI+u0fAWkcBN4TEWz8As+cwGvnXpxSYjhCmaETrZV/+at8ttX/nWwXODUnl
	 iAJdSGPW0DgQXv3gfyzwGRwRHq5jqtcGDzdDZe/BEJQ5M/J5yWc70PQkJwm+sCRNAF
	 k3L60HMGD3WDGmJY3geB+CrK4eyzMY5eINiuzGqOAXFnyPJEXUG1Ymtfspxmd0/dNo
	 Lfu7RR6WscOvnLRfd+wtIvfx7BGjQBe2SmkNlHHaLvtUlXaeHS8alGDIOTwvbkUcI5
	 EbDtfBgmTweqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94616CF2560
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172872995359.23004.3343703088027931439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c57de4678763bb1805b7c7164e93c3dfc9da105994642ca084000b66dc791a3
Date: Sat, 12 Oct 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728729953
