Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A0A372B53
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 23:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774307694; cv=none; b=PYFY5FDhP//jwtW5H6olubU9VF0ItSlqAqtH83zdJ75uXog8l2KyYvUefet4OoKk0CRW8DfkBqbvIt2rp0/rxJByR4kQj5t8LFWO07KWqwzdWox/n2QcTLYVKdpVgbxsg5esPE1V8+t5gROSJsDPwOZEc7hACJmdd0tY8PqBFls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774307694; c=relaxed/simple;
	bh=i48kClwo2z4PRuxAQFVRD7eit8tinXKEeZpXyVFRpLo=;
	h=To:Subject:From:Message-Id:Date; b=Jy1Z66qRdCbN5v1Yz1e3QH4vlnZpIvpL0uPYZSvGCbBGbvCczwZ+ZytNU30AW90CLplEJw8waCxBjRpxNQmRyLRgeqO6+Q4Ty6nvflOG+jJ2d6Vz8DApWSfmeiw6MupshQ9yVdrKob92/eur0Sc7YnLY5f+nkSgeYGnWx1pkkvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=it3zIa9M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="it3zIa9M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0404C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 23:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774307693;
	bh=i48kClwo2z4PRuxAQFVRD7eit8tinXKEeZpXyVFRpLo=;
	h=To:Subject:From:Date:From;
	b=it3zIa9MUCLrMOtp81rgA5eX8VacXkBWuxaxcR9TqxFatXkWxqCesyNW6ZmDWhEEA
	 4e+v6R+sCFLWGe0+lNUYX3DbychlJ3DT3Ogza8UTdmagyxNsiVRPe2wuHDHFa+JH5q
	 PPqgeXgPy+dha0l1DgpO7vPz6KBXIZA3GCzOnq2Dke/024BT8VCYMonRbxaAkTmzCq
	 0l1auM3BFbliN8WAOkOeeHPd2fD9QWag9G82oIWBPprRE8YuJY6kCsQk4vE3ljGld2
	 +UlnkNz8GA2eK2NJitR8vSiKj4pUUU/AHpRWZKJIp909K7btbIPeBUhzR/q3LHdenq
	 9gbmWGjWnn08g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FADD58CBF
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 23:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177430769358.31172.1944814058946717904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35505038bbde8d139c3cc913fd18ad1c6f7908bb98bc7493da73c5471dd211f1
Date: Mon, 23 Mar 2026 23:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774307693
