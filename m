Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C537248888
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751610594; cv=none; b=L16ImppwCo71KecZEV9Gwj8DqBtQ174QzUp/p1MA4IO+tnSYEGMw+74YbT1SyN49rsfzDtaZ2wXpYhjBOMH3vHeW46vzNI6uV+wlbAO0v8sEh/mzPQCwfeOmvgs9rhqFDq9kWZQQcgNvgXK6tfj9QTO+gSZMMOAJslHIwuTevrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751610594; c=relaxed/simple;
	bh=9WDyJw5DCDxrAHeYqBiFOdGXz6RtOmbTC7Hhje7MGYU=;
	h=To:Subject:From:Message-Id:Date; b=CiwcLCNNP6kY4i2z5qSiC+IxVVIGpt4bYapZBjqsSKvvosygLdA91xAxK8JcHOp1PbFNAB7vNELNdofTPLr9CAhCQAiOMJZZTPiJ0HvAIuRpvosSO+5cm9rmWVtVxxYxjXPaFXHK333/3FEZ/TP2mN6juMtjr/zMqgtRlajW/nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTDPPuI+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTDPPuI+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A120BC4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751610593;
	bh=9WDyJw5DCDxrAHeYqBiFOdGXz6RtOmbTC7Hhje7MGYU=;
	h=To:Subject:From:Date:From;
	b=XTDPPuI+crSeWlRDpMR+NLzJmH1pi2pBhvsMC7lV7SYx98zUmcT8dMr37P8YHV5W5
	 Gd2IWNu4ZwqMVV9gJNKwU0/jdkq3KfkChgZDaMyKlfkNShODw9uSZ+EalamwWXeaqx
	 IAAYYgZNRe/TvcLjhWEOu0Ojwbymvn7RxQVlDmWKtJ8Y4qVqsZ7SkUWRpn6Aw0YOZ/
	 lfXxmv19hpuu0R8JL1I6tyQuNbP1sLfP6uVDzO2vv37IIoY+qlNC+4ovsLQyLBRXzg
	 1qflvdBk7uAIsp7ZcKb31zw34HvV5G0Xn6o4Tc1TVcABGp9a/YVwuowZbFlI3Z0jHQ
	 xNpK4ta0nai0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA78C83030
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175161059358.19793.3055048025160664040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13ce2cb1d182736e55212ee8425ed93a772103cc4d470b7fc293965f6d6c789c
Date: Fri, 04 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751610593
