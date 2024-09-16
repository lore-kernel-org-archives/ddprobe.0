Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 469804D8CC
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726523754; cv=none; b=X3cbGLKNsxnnnqYlf5ujcekvqnp+Gs8tJkL9imKl2hIWQqBcELHE87QdaxFWmgfcL8o4+7bhLPT6iPm2thLTd85MmRjWtrqi7dUMOmnFJ8v/xiNwp2r9OwmbAUcer1AdvJ3D8qeAw8pPToasCChh/buldEa0Vl/N0ToF60WFnTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726523754; c=relaxed/simple;
	bh=AZ3DT/kq1GFocBy7dSYBwBufzOTVrqCP7v8b5nBxeeA=;
	h=To:Subject:From:Message-Id:Date; b=CLVmtEzl/az+vU7XqqlDMRNvJNiDPJ71YI+MpPLAzLDUb0ybBViRDraPCJxOQAuagzgNLl1qBxUz4R7e8Lc7YKD+EFPscsf6FEqvyZErgIgn4q9Fqpni2/5EVqJw9mfN022x73Hd+9cLHAWlQDHueOTyeCA6b0VXlJ5LfGI3FNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VYlZkggV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VYlZkggV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5301C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726523753;
	bh=AZ3DT/kq1GFocBy7dSYBwBufzOTVrqCP7v8b5nBxeeA=;
	h=To:Subject:From:Date:From;
	b=VYlZkggVInm8E4bOW+h4QYVYRyn7wtcvQqgCXmQ5wh5E3H+QrkuNqeYRHuwII8QAu
	 KSEdJ5ShHn7iNiU8d1gXDCfHSatT+RpdT0fzOiajdUNtnYgFNgQyhRa1V1fBTZXj+H
	 TM1/7+15zSJ1GXEJUQ2vfZkY56LEeBalute3JzNxFVVIWN+7U1KYCoaOJJfRrZf7oA
	 kWyp5NzwJ6zoXvKyO1C5b66+TD6DhZdEiFMrr8kL3vsRBpkmxc9MZxkjg18jTqLu5v
	 CJdVIfBTBQ7pwWbt0IzWAI+aBniewZXWLB2PQ5lMypBH3tjWot0RaYpNiLdEPGrspi
	 0d/W0Er2Sjc5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D13C3ABB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Sep 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172652375363.28540.9171487106541663010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b40ecbed6c9cbb011b1d919a25bbf8a982a606ec1ce9a8cf96094f4fc859bb81
Date: Mon, 16 Sep 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726523753
