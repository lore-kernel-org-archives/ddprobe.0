Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301201CAB3
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722570354; cv=none; b=IZZ6mrdNlPE2uDsSWDtsTwqUefZs5MAFw4KshnlWBX++3vkgirNPAC6Ocds/cxpM05mlcLSq30YfAnRFVeAlMH8zuyvo1r6MIR7SoGRni3UZiOA9Cj55E/s9Gc4FT5GR5X5Im2PRtGVcf3rfkbh+cnV6GeTBobr05+Vjd6nbe5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722570354; c=relaxed/simple;
	bh=paM5h932T8RiQrkdPg+YT1VLFUBjsdgSEOb+qgpd64Y=;
	h=To:Subject:From:Message-Id:Date; b=NbkXkJfdUYMh92vf5QhvZxakG2ac3SUZGOb90v+4WYIK7r1lPTM2UQt9UiKuOyHbnVqqbArLA3NM1HL0qJCj0kbJM2iAwQMHXy14orCL/ms2PFAx6qtNFUMP0YzJcnja4iKYReKhONK/WSJIfCH2VkSIHyVmyuvorQMxZFlzx0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtGxNYVf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtGxNYVf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B94A5C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722570353;
	bh=paM5h932T8RiQrkdPg+YT1VLFUBjsdgSEOb+qgpd64Y=;
	h=To:Subject:From:Date:From;
	b=HtGxNYVfaO+MkNIJxtdK6kFntQuUWw0nQPBOSJG+eNTcn0uz5MsPgSTnANWzLhYdB
	 jx74hmQWPOu9Tjctjy0aHQS54QEi1DZWLpCAhtxn1YFV4OtUG83w2lyyq2O2/c0AAb
	 5pzSA3qLsS/N+qpbhm/60tvYr2TcqKYW+cBMPn9MM9y/JCxZdrr5sGDvzt013ztld8
	 /qvebMS0O9eBTHRPawZVr2pBzkXCFy/o3zWH8J3XJ6TV9P5FmsbW8y/VlOVrISsnh8
	 CzbgUYgz/Gr7vUdRKchALK76HcWcPQJtlX/ZD66JcLhs3PeyV34ip6mmQlWynmClUY
	 ajkee+ErMINXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C2EC3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172257035362.20238.12698838883757420681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4af089761c976c33bc03283afa646d1bd2a7df9c0a5664372bc5d6b3e0e8f270
Date: Fri, 02 Aug 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722570353
