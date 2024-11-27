Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2851D1FA84F
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732709154; cv=none; b=TiCypScSn71IOr6AE8viOxfvUKi3DKkdGzN5VJN5J9AFvTR9zCL/+SSMeTv3VwcnQwyyxim5hYvXeeRl11G39BP5pfBmWpX+Ewf5lXSSxdPpvrDJA3sXUUvDbwf93X+vFR0f2aO9Y+ACd0J0nlUgqaG1lRlyYaj4dClk3OMoe1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732709154; c=relaxed/simple;
	bh=Ei6gBO5PTLJffKRnSKv385M6Cc7FC4Js2SlEPDX5aBY=;
	h=To:Subject:From:Message-Id:Date; b=NWQGnCrNCUen40DJlqIP0mrRCkIulb7I9I/dfRw1DfpLaudBj1ryly4QFo80Igh/oJ8ICdXhAfnhS1lqYIDFsuOf1EtO1kJcY/Hcu+QrcHFDpFv9wRvEJhxXiDsrjNSaRYbAmtZrILZYYRNsIjoOwJwwx5wwDApdy86ZjdsY1kk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qiUB2UVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qiUB2UVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEFCDC4CECC
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732709153;
	bh=Ei6gBO5PTLJffKRnSKv385M6Cc7FC4Js2SlEPDX5aBY=;
	h=To:Subject:From:Date:From;
	b=qiUB2UVGhJw4lG9qvhxoS5XGf0k1EeeJoffjWBZ4y+R6LYy90EHQcz728tmdtnM7J
	 dlGIk9+A0sa/bxq3eGBTgXuLeKLaBf/1ixps4rb3cTXDTKKe4SK+t7yejpIRqRkKHp
	 5rItU13ed5VeeQPULTp8z75cl4OPk8IvLz0HlRHzvKGGrQjphJi/4yrbtHpw6cyEUl
	 +ca/9ZujpEb2D7pDhWv/JCVJFAz0iEyYqFRhBw50Yuzm8wKufuZXty4gRYqOMXfUAK
	 2M1Rf2Ust/jVrg3fG163ZY9P4bRFvRtqTyLjWyBH+AUjziIGkpBNJAXwjtINHUIE1y
	 vBIb7nC3olajQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976F6D6ACC0
	for <ddprobe@lists.linux.dev>; Wed, 27 Nov 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173270915359.16188.14070328283397292922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0aa8c9a99f4a2a9c15201bef98225620593f4e8161f67ea6f2e73dd9642d207
Date: Wed, 27 Nov 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732709153
