Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6AF3FC5B0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 07:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780472674; cv=none; b=tvTvD81LxCFiVgK7atGTIVQ95kpFoN2Fzx5bfv9VjQOPfhG/+loejD5c8Bsu8fq08VxzREicv8HyZHhI0EbuPc9FMLVyXlE2RnlDbtbtfYw68uEhe1i9+bzRLVjBtmmakqRt7qDSYgAbJzNkoJdZrwtBCQb6XZY3Gv5+gFcwNjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780472674; c=relaxed/simple;
	bh=TNHcBdSZN0iTZ48iKtLfhhPeuTT90J+MYer6Atrn95Y=;
	h=To:Subject:From:Message-Id:Date; b=qiX56Zc37wUEw8Mu1K9Jv0+AQLyQyV5wAGDriZwaAIK9fpBFqi7tIpW8n8ph4tuYCzrF70n1vNk6brvMk0WV9bksNRNzY9tlsKgsk/ml9fKcyYud4Te/VsacblyBNEEBWBcdaaORtFi/kBO0NOssAPxT9VUGYMhi0LQH/Ud+vgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ceLMdEFi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ceLMdEFi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C348BC2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 07:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780472673;
	bh=TNHcBdSZN0iTZ48iKtLfhhPeuTT90J+MYer6Atrn95Y=;
	h=To:Subject:From:Date:From;
	b=ceLMdEFi/qA6FhcVaYznXXj6GcETqTeQSUWhN52cFaQcrcGNjU2af9UhsDWfNFhS5
	 QitA+zB0BXGp88hOz5UvwBVTc7KD7CfgG4Vb20xzJREO+IVhzdoGORCoxLw/DdW8bS
	 A8EEKBrDcGCGtLFs61dqixpI/3LZ8237AI3ejmDy+Kr8AQY1jLQ8F3sVc2H0RGjDMS
	 ngeWdMBsbNF8K0ljXhi4TF+2OsaU3s9AAP332Q6G+bsGXfjWQApSpc6M5GTpy8ZtsV
	 IINI7ap/wHGN5Js+AGzZlCzGhvEf/u19N1P1ms11LdkvI+xtz6Y6a+or57VOC1XN01
	 RD9EPCCEuQnSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8505CD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 07:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178047267368.20724.8802323235257983402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 898c407d75d638305d09dda296ba23d91759388325afe16359dadb510fc53299
Date: Wed, 03 Jun 2026 07:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780472673
