Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AE401401E
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 05:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714455143; cv=none; b=srYP4+w+NxBzZjI0Jv/Dx6BLxGYVUclsm7G41E7+FOFsV8GV60r0+5grfo0pVaGG8otZYix03+LRPY2hfjarGS4ih4qAAH2B+7xBKXanofbk08UyGFO18J1c+g+JZO314t8YIOt2pRuO9/IjEYPCwQS/7ShoLQrAJFtrd+r307o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714455143; c=relaxed/simple;
	bh=RPuxTnBgFdiuu4JqDy64I1TvZa5iZKTvh0JW7UFun68=;
	h=To:Subject:From:Message-Id:Date; b=mpH6H6KSkmPro6UgWi/FV5klV52xvYWmspPbSQHJhlBIpMLfht9HBrlpacd1HlmPKhUU0q6CQkNJ92YafDPuGxdI5PMjUkkhmrNSCY8wnQSRe/0gOkh8e8KrUDhB3frqngxSH1R46Mkkx0RY6w7JW+paqo0f0V1+Wu/ZgjUssrg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b7mTWNPs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b7mTWNPs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F24C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 05:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714455142;
	bh=RPuxTnBgFdiuu4JqDy64I1TvZa5iZKTvh0JW7UFun68=;
	h=To:Subject:From:Date:From;
	b=b7mTWNPswYS3piLw2GPKYuQ83+Gv1Y6+h+qNJjHbgw7/dEfGltNLXMiZYptQ8hIwM
	 k+bZQHmFvhny+E9HYNbvLGe1zeDLuHu0EJNMoyaIMMYbK21teMXJrPa5W/WQmc8Dyo
	 2mHAnO6/AbH7PmrZ0nbS03MQtcaKQBbC0ZCs4wqM/T94EOAMYEk+rq9T5nlzm6Ji0y
	 FmoD5wsICJJqE72N2WmCTiSpsiY78UFXDa6jcQ2wuMJYQedcjMhAYJexiF4NEXs6+x
	 A0e5aXWCnsbFnMnY2rgqxXIpcT03hkKcALMBhcW6ntJ/oT5gLdZHRjaRGPcQwyeSu0
	 RgvXzWgcPz0fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C153EC10F16
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 05:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171445514277.31586.9839588136733142779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dd01f6e80019052aea48579c9b15178855fbb929f2bc2e5e4db991432941331
Date: Tue, 30 Apr 2024 05:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714455142
