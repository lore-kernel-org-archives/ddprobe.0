Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E3349482C
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788185434; cv=none; b=cW4aVnz/MaaYXQMuAxWDf24fsy5EW6sFqI2fuKoY1pIkrzBeh922BetJDYuB/H9HM9zjuBG8SsJ9bHIMeDO2hmbQTc7wQjfENePuD0l1sEqKBYxk7COKBJUzLzSK79CKd0Xyt3qIiHwpgjS4KOruGAE+a8MN6fc9Dusf/AB0js8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788185434; c=relaxed/simple;
	bh=AT1ZeAc2ZPTMJGwcx6XQ1Tv5WAm8m5JB8n9YQ6nJ/Qw=;
	h=To:Subject:From:Message-Id:Date; b=FHfDBvPek72PDD3E94stkfj0ssOoUW10r5w4FYei+ZjZAqXQ/UM8UVYm2mAQ+C2Xgktbv/nEcqS8k11l0xwtC7cGoJ00eCBfJeJe7Bxm/Gk4g7pQp4M4udlIzsjRVRqzb4xpv4KR21y/V+r56i0u+X0wBolrzeqBorfFUVJH5Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tDek80oI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tDek80oI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF224C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788185433;
	bh=AT1ZeAc2ZPTMJGwcx6XQ1Tv5WAm8m5JB8n9YQ6nJ/Qw=;
	h=To:Subject:From:Date:From;
	b=tDek80oISj/m0ttjLk8cDkYU5gzzpLI8APRXoNhakaCOrvIPO9F7gKQ0CheUOzLu9
	 EdclAyvYK+sb85KexIQI0/51BdRwRMpGeX387ELnOV1IpZyvzTg6bfCxF5oHrsA0ZF
	 yuBx/Suv134vsKJPS0V2GwajzvpX3sSMfySPGrV4pYp1/NNMxoIHKoq1/QtUvfZOGH
	 ZvYME6TRWW/779eQYDwFya9NR0fq9tUHK4APjkoj+Rb9DTOCPlfOnCSzaoipG+5fc1
	 zQsmDydeiEC0JYbOWloWaTjJNJ1c6gvs9o0lsaRhEKL24K6qJqu4rhZuu3DcMXHuPk
	 7x9B9FBwgVMrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2ADC624C6
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178818543368.13333.4512436253071541991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16a9e171aa1c0eee71f101f5765211484fd065f01ed127ce29b1e77a4fc41475
Date: Mon, 31 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788185433
