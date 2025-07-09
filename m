Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47EA413D2B2
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752035394; cv=none; b=VvlY6WWkyh93/f4Es7sTogFL0uxvp6umZIbiLQoftJ9YCH1UFlxKiaXHjZKAowQpHM8rJLc80TqP6Kjan4NdPeSBTr4WCs/w6l2WK9SJu7gus/QUFNRuwOB/m3UqoBRdyUGCV0vPEZudrJVTQ8qjKJrCKKNQhsA6KRaDTxgVUVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752035394; c=relaxed/simple;
	bh=pU/Gr8Y2Om3H+HpvaZ09ZU8V0leBRBOOi1BgE3nkTFI=;
	h=To:Subject:From:Message-Id:Date; b=eIxvLhYmpJmhdcpxF1CaEAOKue9ZpU9ebsrjS/wlggW4odPDIAPvBzMhAekoPaH+dt60HgHYC4No7ay1m7zleTDKYLnlSNREszWJ9onOXcs4YHg/9W5OvYoLWOSDCepvM8ySWMB/3fLn6/O3OVLvqfRHFIN8/kREIZOu0SL+CnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ei7TKcs0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ei7TKcs0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6146C4CEF6
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752035393;
	bh=pU/Gr8Y2Om3H+HpvaZ09ZU8V0leBRBOOi1BgE3nkTFI=;
	h=To:Subject:From:Date:From;
	b=Ei7TKcs024F4fXyrxGnT7hcc2P8MIbEm0Lers6vdsLHE92lrwos1ONNW0PzQXDbPq
	 H44+P40wr+oErvaMHPOTt2Nv0KfMJehH37CYgf49s+jjJ8sC+J+X5qOEM4PbTP4Nne
	 afuut8l4+Bgjy53GAca5fuJ2Fg/V2NFsxu02GyCYzaqK2jFxZt1A7sskla7+xevrH7
	 9Cj3hi+quBJ2MTRhpP1STtt618O9hZQwdFYiNiCIjA3lkd7SBLhQExMTFUA3S/s8lZ
	 WcA1uXw8JLgFGAcIJMAnSkexSeWG59N9dYvvgUXSCPgCNpJ5DbnH5AOYYSUkRMw674
	 4OasPlMIDIKHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F8D8C83F09
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175203539363.16221.4681525629585966678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b851fdb9b3044d3da7624374830a303efa4e25e57c42c9adfc5798b77dde6f64
Date: Wed, 09 Jul 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752035393
