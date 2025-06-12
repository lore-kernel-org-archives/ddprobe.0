Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C41A23CEE5
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749734994; cv=none; b=Tfd3gcd/EDriRocamsCQXd5XgiEsICzryAcZbtvrLMBSBFa39PeGLFtri/v6+iS/sFtGFEvn1jgEyXzGaRGGz+WQ9NKFkWQA1ni5f36z7O52j875WTajVdxJk18SoCIih58C87/nxWTgOwgY0XKcbiKklbAo9BIQ2Vng3RCT1Xo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749734994; c=relaxed/simple;
	bh=jbV5KOop2O7JUFbjJXKSVy9QrTwROgIxvhDcMrkV61E=;
	h=To:Subject:From:Message-Id:Date; b=MW9O/xEPqOo+CZBBHLUtyAVttmMfrzjFz2KObPzRBuZZVw9u9heLLJ6R1G6w/PEBX+xOoKP6qBv7AvgBivtzEt6GvoiMcu10eiLfUWb2XiqH2I9Oc/+7Lijmcn261SQDyxCRnav23b+qmqHMbaj8oHQnQBvWSdYocmVICXazq1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNEHjCFw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNEHjCFw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25A1C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749734993;
	bh=jbV5KOop2O7JUFbjJXKSVy9QrTwROgIxvhDcMrkV61E=;
	h=To:Subject:From:Date:From;
	b=qNEHjCFwR6qQF7Ip9zl4kg2CJlGzeZdHXY+10ifzYz3ZJp/qpP67shGdc3u64Jvrc
	 /duakHU62vT/lse4NH2BCQxUimp/BEUzfAWlKSdsmpYv8j07RQIH+npLOHnQFrECCo
	 jRUihXjYS4Rr9qd1RF20u7CnW/kuXg8riXzPJvdKSJrlJ8fdX2BnRpRpjq6x1I+4wi
	 B1ACO3hU5S3DJEcFTdJr0FiUe+kXTVhkXrt3nxibcqZyyMeuaMYg959C83tnit3Z9t
	 2ALxQD8LIbCPu4qEz7Ip/or1x0DAAKQaaYZWjmJvc2roW1kNbm6Gt7idFIH1KFe3xn
	 QEJ4PHelWJgyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96339C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174973499360.3346.11773631063140569292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e107b9d8b7e6f7bf54132dbe794e59761b911f8024e85fa5728546624f642331
Date: Thu, 12 Jun 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749734993
