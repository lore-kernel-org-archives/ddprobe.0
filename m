Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231B7274B42
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762177794; cv=none; b=XAM/pubnbnppZQDop4nGxnFx/WHkpLnDCjHSddUKU9ECHN/qh05yPcrEDwJazmP9Q+eT9PxQu11Z8LWVmou5hvkMlPRKA2nkGHUjbd0zoYeGLqFoXt5i+xdp9o0XMNiwPMn8nIzwdajlmwTY4PRTfJyUMPA5DiAM96jrcOozZGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762177794; c=relaxed/simple;
	bh=lSnTjigHCLq17s83nXaLdd4RL60wIC72kNHAlmAtDgE=;
	h=To:Subject:From:Message-Id:Date; b=CLCGffwyXyGYMJzcGXspZQtRGRFi99PXbutRx4mjRZryjhe66VnpfMbuNyj7DDMgkt3nhiLAn7x/Et8SD91f31FKI+G+hCvUINCNNY1XrByT11guaWkrY3RF/XNmShhSnXypHbBcMTybWZHIuEUlxX+LcyJlKxW6hnYVc0H2tiI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GG6EtLme; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GG6EtLme"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB79C4CEFD
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762177793;
	bh=lSnTjigHCLq17s83nXaLdd4RL60wIC72kNHAlmAtDgE=;
	h=To:Subject:From:Date:From;
	b=GG6EtLmeYlGFGjclSIzZUBJApH4rGx2yKDOde/P6Ip1001UEyH+qV30cvkDiVhujq
	 n4kl+DJp+xLZwiVn6qOoREYF8h7vSoPImFh/YvtgEzioz9O7UWszYxY/TBFbGVCBdc
	 0KCJN2wVU2XbHDUCTCAlmfpfOKmmQCfaDw/IvANAG6UkCOnfLozibRPXbzlGBtcEba
	 W+YvjuRjmQpNz4DxLXGhkJIjpIXv1drICGAOKK8QhWMXWMBl/gTIvxHOsuWurRvL5Y
	 BFiNyFXPFuOG+6hsuIv3tPTKQ8CoQS6fAR4ccHDqGnE24X/QdOwSV8emzjt36OCTm2
	 d+8mAgzdgnEoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB65CCF9FE
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176217779357.32655.13287022127349146466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f7b30d408ac875723194144012ea0dc2ddf6a065ce3a48e0e1e76cf235736a2
Date: Mon, 03 Nov 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762177793
