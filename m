Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 281031C9DE7
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724331954; cv=none; b=esm7RFDY2s/RgC6dqzeDYk6QVi9OUa4lCNOd3P2kkmfaeszzQV7cRE9jLIwlHH6dnsy1ymNBFTwdRnl6aRfhfaS8u0gXUHQYsmsyK6eSQAFU8SIIeY4M2ujlMm55Ry9pQSEq9k+RTRVv/RJDuPgWKO7VSTuxVLzLFF6jIap3F8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724331954; c=relaxed/simple;
	bh=ujMjNO0z2lbFgR43m+UBDvhOWc6GUPZ4wrwMEefHgUs=;
	h=To:Subject:From:Message-Id:Date; b=CaLQtXYaU0bfHCrxNksUp+vB/gQSzq1IUXWiNutUzt15YNo5JErgh6r4y+YFAfulci1ShelpkNQb+X6JSUP5GK8ngj14epPEgUeCaqivJR1XA2XABH7glMdnNFhGKyd5LmrViPB2lKPjcyE7cEOsZTGlX7iEhXWjoHZ5iWtqP10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0UzkCPO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0UzkCPO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1894C4AF0B
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724331953;
	bh=ujMjNO0z2lbFgR43m+UBDvhOWc6GUPZ4wrwMEefHgUs=;
	h=To:Subject:From:Date:From;
	b=E0UzkCPOYUS8CQPKOqBCjpOEeRu9vSltsBynsDvJWvxf4kA7AQ2cASbSU6/JDpoJh
	 xM6VP3K7qnGKCbt+MSrCrNG2HeRHoitlJhR/xDzXrBhnyE5IDrjah3Se+/XBsu2LCj
	 IBkpsXv+dIM+0M6uncG5gqt6C8jmiSE0zzXPMaj0ZFsuDiIRTJXkF6EaQhCL1Cvimh
	 gMtoH+ld75jv2AyBL3whb22qB0HeR5/jqDlKTi0QZLF2a4IpLsCkUH/4ZVkpunit6j
	 fqWSRagrsylLx5VYlRtgs7sfW9U5CCMkiLCT4sk7OtDAummrtUq5hlDQbwRns+viLc
	 +9Ts857Ud2hJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E243C3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172433195363.5747.10568101799084874119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e05560abaffe2f069692350870eaabd9f547548843ad2f1f6c8694c86f04b2
Date: Thu, 22 Aug 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724331953
