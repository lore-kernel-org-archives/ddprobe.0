Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7EC33EC
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735754754; cv=none; b=GSuXlzFmml+V3FwJ0Sq5W3+5Rgyo/9EEvYoNPoVk3lZC/TAhaJT3C0wHOh/Qk74sz9d+hRTRnuSm6PYgVxcShzXOeqBSBRMNMiJ3/rzSnRA4HCS/7QSjzYxn5yeSAdbfYSnDJmE6+ZVEceQTp+b3SpuqgLXsxFavoFNK8MPI/wQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735754754; c=relaxed/simple;
	bh=sQOLvs2gGONb26svGbYvR5tH42CXK6dU+7w//fElmEU=;
	h=To:Subject:From:Message-Id:Date; b=hl7MkaIEWXDk8dr5o9ZtmzZSBM+Vv0cn6CESnxdjt7oQlEj305Tm8I3EslTYxRM0oldDy+3B+zCFbuXCjs3B7gybW5+t0bs+XrnE6MJ0PJtWF4xfyLSnXhPjg2WsyohHxg9XfqDH58hYog5ZhhqV9uxVuJsMLKJ76B7qWrv3lzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gia+RWzP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gia+RWzP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FA2C4CECE
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735754753;
	bh=sQOLvs2gGONb26svGbYvR5tH42CXK6dU+7w//fElmEU=;
	h=To:Subject:From:Date:From;
	b=Gia+RWzPwImoy1PeF7m1/lIMgK2Z65bb954BmQ1TmBf28vKVduri9xchfQrvc+fE9
	 jXQ5UMOQA+7QzDXTxxB3SNd6uq3s0PKhvbNbSv91QxcW+rsYqCLey7VMCv7roxdTIj
	 YUYxDjjPW4tnV3THVG434GktPfTW9E/xEzYXed/VeNsN90pAExtf3Q7vWzFdD0dvKD
	 /bCkes0MXkaBWX272zdu5kXRIIXfGv+9Mt3fbBzZvOoxS7stAyiws/A8r1CYYGtQYh
	 hjPKsGmegF+l0+Vni3tAAdHZCHpNPOlNBuSs7eTUeLHucuNANG2GT7HDj+ppuORtR0
	 QHRoT555xAt/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94041E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173575475358.5993.14906727756421629517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 890bffafd0b5ec573daeb04e17cb241b9bfee48ce87a9fd8d84f84700c11430c
Date: Wed, 01 Jan 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735754753
