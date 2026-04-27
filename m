Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BBBE3B38B9
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 23:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777331254; cv=none; b=ZEFNsV6ENUsKOwcYAWrlEZRK8rjM1dxqaZdIA/p1uomLO+QNYSmJOMflnGiXzdolkk0gdwK7NL79+sDSAzeNne+EQAqAYuVkqOtEiabePY+7BLs8mzMalffw8eaU0iW/rLHGowexPn2mx3OmO89ElpXJDehKiwLTAA0npVEz0F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777331254; c=relaxed/simple;
	bh=yG+S3eh2KvCNIXTnUlajWuhJJCaF3hzTooOUFJ6rtDk=;
	h=To:Subject:From:Message-Id:Date; b=mlnnMtgVn9iC5GLFQN770fOAxz5Vxk7rtqDRgEjvTCvWfCXYjw6iLFj1DAmnlXdVAkdutkgHDFPqPHDdhL49M+MvDaKYmIeEs8mvacEhDUoiKvOSN6VC2oa5WY8Qu0XZ4gXquutwlcqhMQMU+X1jhDpxXorU36VrcKFRRLvsLDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WOSAPvnM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WOSAPvnM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C23DAC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 23:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777331253;
	bh=yG+S3eh2KvCNIXTnUlajWuhJJCaF3hzTooOUFJ6rtDk=;
	h=To:Subject:From:Date:From;
	b=WOSAPvnMJiW+Y4Oz6MVRnazN+y//1op/jLXAmiHNB02KV1PcV8YHfrhL9lFtda582
	 seSKGrXmpX/umjeVP1g9L/lWuhGyBSJ5ps2V/RMseKskhMoasDBegtemy60RvROSiH
	 HRFxaVgFcQlULbVByh+Xu9ugMyZKS/IT9l1pl3iA/A8nioNeKVf7HuAAJokF64FGcm
	 ZaEor+gOtwF0V2VAk5HT3rXBhedprzPMEsCEqkguI8bYAgFVMI1cyDt1bn5gWHU38m
	 41NL0H+m8DC/MYO4Ys8GIYpgsdwvHM/Xn+JNNEVIN/7Z3SKmAPXLeNyww6M1JEDK7i
	 uqHZoiZhHJJhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC660FF8864
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 23:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177733125368.25376.7522382653029054105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5d8e08bb909afe23105d7e77d7ef44a59d2da7d4201d52aa8e7ca2de3aa4787
Date: Mon, 27 Apr 2026 23:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777331253
