Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3329918D640
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723019754; cv=none; b=RwqvvnZP/D8nbVaej1oFd+Il1A6HQqlhQZfPHgk8koNrkn6ZxoiqlbJ79N68MAJFfL6Q9xprLl22yLosV/xWS9FJQwUtvywbCdmofHuPjMhF2bMnm8fmoCS7Rl6rNpxHBxdW7br5AWa6uvJkJbCuhuZxD0cTRMzg6y4Cn/bk6AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723019754; c=relaxed/simple;
	bh=bzmSUZrQx7LwQ3++qOmUkwmH/7QpEdhqRByrspKj8sE=;
	h=To:Subject:From:Message-Id:Date; b=NFgBXuJcxjPciAt2eoUU66uYkEW1t3sMTcMMDezm3NONIjN5W0Ir11xgnqGD6ya1t33Qf2eT0zmgwLe1eMREiqsabMitl+dwzVMqhJWYH8aXUnuHqKe8QosoQZpjfeszbTIYLviQHQYjq+4Zm4Vm53MnxYCK3k8rB4c++nZU03k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbDRvhPE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbDRvhPE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D67C32782
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723019753;
	bh=bzmSUZrQx7LwQ3++qOmUkwmH/7QpEdhqRByrspKj8sE=;
	h=To:Subject:From:Date:From;
	b=CbDRvhPEqTQaFwqanKgODyKdAZEWlkfrXz2us8f8hm/vpjDdAPb/JSbaOK3irDDXq
	 8h73ZacFuexmz9sP9b+R/S0tIVuIytRP/Y/ueaM4rO50dnGDMYYaPZJiSUL9uCMXC8
	 /fJ8kJzwwyv05DYX0ayc911z7AvJ1GavD0XuUI3Yr1oQQduA5yc+8x+acbDeaiXt0M
	 eZco1MMDpBABmKUuoxPMtouS2/dyPzjqoVheyjRcKxD0818LTx5Yt78RDKMHs1Mkiz
	 BCvSeWlF4iMZbmW3WxSI6R/AnRXmq+gomeQ6xLe5TUTKaiXd+s5hJof0amG2IcijbU
	 PoNIq7gJcy7kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6AEC52D6F
	for <ddprobe@lists.linux.dev>; Wed,  7 Aug 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172301975362.13554.2628782904580175064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e1b03e7c785a8a1d818b5a5d81717b730cb9f71053d3b0006de53128639d96
Date: Wed, 07 Aug 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723019753
