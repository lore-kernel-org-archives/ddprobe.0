Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251E62EA162
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750948794; cv=none; b=erfzyOeFuS1urbHBHFT1xj1ikuZps1gR+iEHCA/WUGnzFgs6GwW3vEnpt8KR9uoo/YsDcHRjO/WZLHg1C0Nox2HSQ2XwH5UhubH3iye2Z9ZI1RIqCjp+vxuKIHqP2SWH4U9mOJfuKyYkNPWiOqhpEIdFX54BlNcz49vIbB5w+68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750948794; c=relaxed/simple;
	bh=Hkc87XBIg1pjQot8oypzOgXi9WpdhXRHs3dfta3dw8Q=;
	h=To:Subject:From:Message-Id:Date; b=EUcK2nA9sfVSetq3SKvF5TlLHbJpu0pp1OVhfihvshBSzLLb+jkPb6OGnAM0PaMAUDFSfkqcyQzyXr1p2/F5yG3Q5fyHm55S5vTZjTscjzC5RXI+vJ9TfFgayie9k3SZzOh9th7COwaKYiZ7KmfITD3oaj/BA69xyxDB5WFIwbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lsC0X3e0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lsC0X3e0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A077BC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750948793;
	bh=Hkc87XBIg1pjQot8oypzOgXi9WpdhXRHs3dfta3dw8Q=;
	h=To:Subject:From:Date:From;
	b=lsC0X3e0xa2Rhr5u3DoRZrmZz5zx3tGGrYVqwlj4PzDaOwXNIlS7aiMwGzH4RcRoO
	 oY9ki8tmvVxrRg+CEIS6QatiRY8u51dF/e+eAjuzehZFl51jwcJ3MqklxwAudNmv/2
	 YJejTFFapy0j+h7DWBGazoq7ajM5zyh9hTB/Feu1K0gg3i0DERSHMZoBrtyAqlwh6c
	 Xn0cNkvKRq99O/bMq7EvApOqRxk+Gqsux5ol0zDzEI9BpP1SRrBtpTZQclm8sh2jfU
	 vdQLUAh8qtnZkjgYQsDUPmXi9Ul4Df9rcK0UQ+LoMR+Srcj93gKTkJIo6tki+v6mng
	 6BqQZxuQS6ufw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9157DC7EE31
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175094879358.16471.13436152120214234376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3fa9fae6b148563eea475865328bc36a1e8dd7e632cbd4fbb3f039cfe833d36
Date: Thu, 26 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750948793
