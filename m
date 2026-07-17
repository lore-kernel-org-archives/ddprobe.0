Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B29D22ACEB
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 14:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784299714; cv=none; b=PZF7xjJSS0wYN7q06rLDkv4eQzvnQdwQkzb0COIpRDUVWGAqqmzItZtadwERik7/CEtHioQogitkhG7j/AW9Vbu+8xfE2bbuwH2t6uVKi4RdZPaVn4EhPfOeXAkrc5s4UuZIh/PGwxALq0rdHoU6gD5MUr6jkLdsh+VVFsVMT/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784299714; c=relaxed/simple;
	bh=jvcpVn4XlR5G4ygn/E0c4Fuz+zdwOYTckd0ITw+6+Oc=;
	h=To:Subject:From:Message-Id:Date; b=O2eJvgJum5Rf2fcBbyi4m7TDSviTzBWScQTAMwSfTaxGK9A0XzJw5cvmSfdriJx6UPcfH648Kij2v0bDSZv4NqMb8aklY4ytP3CcfLKHij1Rs1AAqdR+tBjGQIlHYR+2unI4223+f0taKqg38bp7X7EE4ohdzIpkAx+N5n9P7zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LScoXezX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LScoXezX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF257C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 14:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784299713;
	bh=jvcpVn4XlR5G4ygn/E0c4Fuz+zdwOYTckd0ITw+6+Oc=;
	h=To:Subject:From:Date:From;
	b=LScoXezXrJjaChEvjqXQM6EVvMwsPtovCq6FsckLQm7z95KsQOnRdaCxYobIX0Cky
	 rh9bI/zSVE1X4zy3OMn50seUkBdEGZ3p+9y98mf6BwRtBTzMIrBgW1G/e8oLkAho2/
	 ad8rrOcwetAfxX+TNKCLxxQdRpZe6dX0U/g+k9r0VEGClSOOlvkoBr6c0rd3IySxDz
	 KwNsojoceh5VNFGHY4op2hSO0E/bAWayeYYQGgF+QHJbzjA1JT2PpAhztFZjd1Xmdn
	 V67wvSD5pmIxunrq+ot7M4g4Q+e4gZDNB01vhNzjrkK5EJSI2m4FIsSMj/G7BvfOWz
	 /Rc1XmRNdZ0AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD26C4451C
	for <ddprobe@lists.linux.dev>; Fri, 17 Jul 2026 14:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178429971369.17960.14876643462634355990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8586db2445e73577dfb14332a82aec82dc6453e5ace7e2b82fcf7e85ae47c282
Date: Fri, 17 Jul 2026 14:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784299713
