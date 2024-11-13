Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3536B1F9A8E
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731492354; cv=none; b=Vg1YtmG+VqBevWfnhf9XJMbkHYvm4HS+mp8DmKj2S1Dp3OZ9u9i+eumFg0f+JU+a7gY0X4nRzXHDFVb5b04YdmE5GO9mSWTX60Ri4QEM9Ln4Sui/p9PAe1lH/HZKEZJR5Z0OSfgQ4kk+8BaTBCadS891NumC/3L9DoaTbqjGYQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731492354; c=relaxed/simple;
	bh=PXXCaFuljIZEhbqKHOiji67EqhiwiSMDtsueBvFcy2U=;
	h=To:Subject:From:Message-Id:Date; b=VSCaXn4Yl0gqFI/PI36WpuNMZ2djvSrXYtKUO/P+AddX1VGGEIl3GiqHg1wJwhCJ0BfzLVEezw9uxNnbVpiDkeWo1NKPQC8Aod7SilPs8An6CBGuBn/u1OE6YflcMjpR3HmsbN7L80PrfuRc+iFVTI4hcL+uLF2UQFG98PREvro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AEuOtGal; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AEuOtGal"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A251DC4CED0
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731492353;
	bh=PXXCaFuljIZEhbqKHOiji67EqhiwiSMDtsueBvFcy2U=;
	h=To:Subject:From:Date:From;
	b=AEuOtGalPIOIZFMx9yvWOzoGOFwOkWb+ooK3KtVLltr3l/+3z6ia0escwo/tMQD9a
	 JDckrPCgAgQYmiclo/hzBKorS+zlTnNCRvZMrvNewa2Ly26oqitCNcz4uJil40UBd4
	 ett3yWsLBqMX4yOEeZ6TxZtAFi+Ikj/PXNf2Sel1GCxI2DLbsD8MCKL+Wmz7+Xj/Mu
	 Aw9JniUwX7k8/PyOCLCydvmxgd4Dzc9emVQpo2g7bHDTcOquhI5RdBb8/jWsaUrduA
	 eAWwvyOkCstPaHgvGYjmRb3dZmswr8/Rlky1Di2hKoUC2zbxyTI9+p9hasHuNSEE+I
	 07w+G1KAD0UYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C4BD41C2C
	for <ddprobe@lists.linux.dev>; Wed, 13 Nov 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173149235359.20669.10115349760895290218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2682f8d53468d9f2370ecd299da59a89774cab2e63b489698150f93a2b5ab09b
Date: Wed, 13 Nov 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731492353
