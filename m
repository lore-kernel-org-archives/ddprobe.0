Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43E041509AB
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 07:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771746294; cv=none; b=T0BfPiVtNdapUf64eYOIjp+Y9KGvsRDOnmC7nRpPZKkGni/GwiIHlN6gB1ZbxYWvG6H4orD/fDbSNSVMmObh/FosC14bS8QXVci0v0UDmjM4Lo82Nqhca/BO9riqgyS/fVpJBf581m7EKF839L9ruZ7I7BOejAstyD+FiXBX73U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771746294; c=relaxed/simple;
	bh=ZoN3LEhKPYAsqRFivQMz2Gu6twQqLj0VP2PCdeuzbhM=;
	h=To:Subject:From:Message-Id:Date; b=MSb70pRPI+3Uv58oXWPZ3ST/nrrvBqQmgAcvpGf9O6GNnWa2o1jH3Jw+tk9jpYQx41JtVDNhON4QTWv2sG/pl7D4VrGzur6shvU9QdoZ/WnRatZ7qjnZ2aann9beAnm2BKq4pml44WYDdXCaVUpj3W5NyyL3Fma7wOihpSFdzDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iZCDTKOJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iZCDTKOJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7A66C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771746293;
	bh=ZoN3LEhKPYAsqRFivQMz2Gu6twQqLj0VP2PCdeuzbhM=;
	h=To:Subject:From:Date:From;
	b=iZCDTKOJWI01OtXr0DaGmpwad5HlGiNxcAc/+Y6NDfXQvItg1FZHkVE/ts1DUB6Ru
	 mb/cu1dr+YeTvybamtu4SVq3VqzBV3V3+VGbHMaxmwRTpiOyzWYhf4ZO8RoHVZCLlU
	 eS6ry4sZ7kFtyULGjlg58WynlMzP+K+GPxMdyL5znzYj99jurauJY5irzEGrzgJkHX
	 4KskU4HTKJBi2RAzfqnhUwHSSh6rIf++6Dx/+Zj18tfsH3+9InqtPCWFXLD7BSTJjZ
	 2BhSZR/LLsfgR/I3mmR1N0wsg8Qa32sVpXcEj3w61huXTtedSN5kvmPlHEOo1TFMlM
	 ryG5gkW+O00SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F85CC624D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177174629358.32264.5625662152979486458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9e2567af2aa1b21a08537d000d54b29b6bcf88a93a4c3813a8ab7b3cb1dd15d
Date: Sun, 22 Feb 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771746293
