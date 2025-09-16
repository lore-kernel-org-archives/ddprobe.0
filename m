Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B48283CA7
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758009594; cv=none; b=mJi4qWyTElDNt1ToZIRrdDQF5fRsekh5eiHDZTBv8kuwnMkqzWdsuZWHnLyBMjooSr2o5dLwSaR/BqIFZjZEHzXQtW3A3M1Y6yYWX8jbozqbQHVmcXbaaSIu8llFN1LCogkqN6ZWyMlryki1+LifaVfDLSYoA20s0WShjYqJekk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758009594; c=relaxed/simple;
	bh=B5Czi9L9RUSqGVxj7mSGJjA3ReuHOjmtNdcRMmArCfI=;
	h=To:Subject:From:Message-Id:Date; b=NFT2+JUZoX5Z7XiNJM0pyNyG/ZZWiQqTXXD9A+ckH/PNP2ebUlmT3kHSMAl0ql+OMtn3FeQhlGzOxlZ0aJ9JSS/P89k81p7kL227obnalWqsrng4/DMO3hvV05Bd35EXIRKp+9Z3Vr/u11HB6I8Vc348srMs8TFr5zdqpeSmj/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxwtFJKC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxwtFJKC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C23EC4CEF9
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758009593;
	bh=B5Czi9L9RUSqGVxj7mSGJjA3ReuHOjmtNdcRMmArCfI=;
	h=To:Subject:From:Date:From;
	b=pxwtFJKCxe9B+T2cf4zvS4Pz5LZmg9f0kni6RNJmyhxmdb+fEoe2Yb29o5AtT+7fe
	 /Pb/8R4spSOObeGYEvj86NMlqeY+UVTdaNL9NpA87nhMz5G4btCX1S5f+edIKzbiYq
	 hDVNAARFfTk94mDhc8xj8vtNhhLj5znGupZVQ4UIrtHlMPfI+P7WowxLosigqGCzhx
	 bf9yCFRZpNo3EI/xssCwyr7s9Dv8DGUgeAzN/TvDBkul/+thpeEU24DaM6RC9NVJYM
	 PiJ3G66f7bQx30B+HnVYd3GuNRSVQZrgMddn3YkhAYAlUi12OrLl9U6JcZ8vXEnKvj
	 SZeJWDL5oth5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED41CAC599
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175800959357.17054.6794859335356082382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce3a93cccdffc8fedc9896874f9d8a7c80466af8ab11fc051b755479d9c3a83d
Date: Tue, 16 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758009593
