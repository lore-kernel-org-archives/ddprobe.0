Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F1724B26
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754663994; cv=none; b=EUUxiUnEupmcqVet8G+gh2koND2Vtd6aXN7RPIekGxaGfIT7Q70pYUOUVeNTjYhYHizz1Yhy3cP/HbvUR7EIZbsx+8E1LDc6DCKVahtURZC7PdT+Sbjl6IFZNeVVVGzlyGCByf1RmW6nOS2J1P0Ag/Wr9jrAV6Hw4scrumhF34M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754663994; c=relaxed/simple;
	bh=Wi2Az/xdsx7ZGElCLCISF6rQtPjjtKyp3khOotG8ah8=;
	h=To:Subject:From:Message-Id:Date; b=J4+WmfGyIjYimZIASGYC03qk5ute0uGpzY9pfBWFoRFZx8sZdzl6bepJ2iLCMWuM0x8p1P5K720EikOZk3Bus1ZpZwGPSWIoZ5Tm1++lAO759tMgVEZvebVA68+Jb72SaTCtwTJrai/BLBCcHe+Ml61C6sR2BpTvV+wO/cdgXiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Balz5kfD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Balz5kfD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E08FC4CEF6
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754663993;
	bh=Wi2Az/xdsx7ZGElCLCISF6rQtPjjtKyp3khOotG8ah8=;
	h=To:Subject:From:Date:From;
	b=Balz5kfDMbAmSllQllw65iFf+YxeAmtJCu10DI4ErgoyHsKUYg9ejdusrnI7y5wuN
	 Mcl497fqpeOcZhfMiPJx7rB5BtraPw045ftHU7IMXo7k+d4VQ8Q7TOy/iV8kZgLLmp
	 t7d576jKa/yv08PaGYLfyc+IBVkZVlkbpGOJYjaZN865mm3cyxNYkSZ7/kdwRo1NuW
	 nN5eWOQ0RK01Q1fTIxTnZ8wL+XEKEtGWmq7eC3GYpPSO0KyO896Ylrost1Cyl7mHi5
	 WJ+e5yciAa6Fk72SHzR3kf/PsOpkuM1lntVsKXLrNNPpMlLQfiE/fKzveRszxKbQxf
	 nMaafCGxnCihA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB9CC87FD2
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175466399357.29431.15120410427657737851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bca22f5cfca61b21fbb85170fbfb5b36c7b76ce52315f16f84e0b0b15f576cae
Date: Fri, 08 Aug 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754663993
