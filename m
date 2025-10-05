Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29ED94204E
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759705194; cv=none; b=WA2CXl5j4QQ8zwYp3TchMDqGFWqiPI+I5mTqHkp0cjTCN1cEE0LvGCGN9ekOA5Uag9uoDW4UpKt+5fT0JI0mzSh0VLNZqKQSSYufwSI2+uuioOn0lyWO8TxAffJIyqrrA2bQYFu8tzuatrLLqdPIdsqFA5S/RDL4HwNv2NMIiYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759705194; c=relaxed/simple;
	bh=BC6ScMunASbJwaUvKSTxjCGnWnoj0+gf/gdobmILP+g=;
	h=To:Subject:From:Message-Id:Date; b=MOZdRncspFtZ5b15OohpWixUnBC0w9MQJOqx2yCozOOJvvupqXwGSkziwdus/M1C3C79VmoTfbE9xkacCRWvHQLCB17f1rbCffOhqxqinm9DLj8+jsD0VCvpzEM9XP0/+kldbF49LEUih2NzwtjP2ZtOy9MIG4T1Mjjo/B6QnVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E2ciCIrM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E2ciCIrM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66FDC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759705193;
	bh=BC6ScMunASbJwaUvKSTxjCGnWnoj0+gf/gdobmILP+g=;
	h=To:Subject:From:Date:From;
	b=E2ciCIrMfVWrR2i+pIssUG9hY3v4Fu+tbZ1lMHh36lbE2so9kxVIdu6W0Qi4FXFO1
	 xJDAkAsqcpYybHArRYQrg+wcPtmDTLBEfhQA2+bcRLhNCdTCIlRtMqdDbEG/T0M2KD
	 BRzTkAmVm4sZT2CpKOC+OE6BCzSg2HGQlzLzdfamfElMb6fuyOZ6qmXTV9mydH1+WP
	 4FDbYxWSIQ38Rfuyw2u6CXGkKJqgiycVrco9eRmuY990I8OfU34sVr9d1hJer1o4Da
	 qOBld9qlxR1hkKhPXtgMWBEvPIYxMGsxIGVSTiXyyRGK2b0IgcmROYsGOkvZGOp6RS
	 BdAgNm+9tV+ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948D7CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175970519357.14670.10080411234573322511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 670adcca2f59c96565a8b0e22f9cf7345fbd4bdd2981e3e20261592cacd62d70
Date: Sun, 05 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759705193
