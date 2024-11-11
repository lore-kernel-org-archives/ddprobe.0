Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA77191
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 01:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731289554; cv=none; b=A4b9b/qMBZYt62M/PFi0lpolzgfC+Jed35mzW5bQGQ36Lz9eYOf3LLKgdgksZEYlWCHW5750cTTdjXsIE80X53UXvDN1ZLnJo/y/lqpZBOAXpH9BfXjclDN5m/yfq4lK1vyoHuWzBBOqvzJO4sYVrjbANff0BBxO3vtbJUwZufI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731289554; c=relaxed/simple;
	bh=iIA/fF+COtvu35XVmEsllXtwyyXY/mm2/O0+t1I9tDc=;
	h=To:Subject:From:Message-Id:Date; b=qCsjpvLDBzgPcR60ymSvzeBs3cF+e1uxqeTN+oWV5DYbEpGP2UcSXfW3HTewSregmvDvto/QLReVSOwL4gbfL7XXD3vKgc+voZZ3OVOUEv2DEKqNaSia/UUCIHsnhS3Fl+x7sKyIi07bF7YKgMtNcStcVNZdmBnxbU/I861xrqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JeVY6+P3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JeVY6+P3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55F8C4CECD
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 01:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731289553;
	bh=iIA/fF+COtvu35XVmEsllXtwyyXY/mm2/O0+t1I9tDc=;
	h=To:Subject:From:Date:From;
	b=JeVY6+P3otAQvq9f+DdzDcR4EQjzPV9dO1+/OnMTOIeedos5hR2ww8mt1PjRVrm8v
	 s+657hcYD5K1Gk9JRF9NWCP9KKdLlMR6Yb8O08eVHut3WwCPp78RpRf7JKmYwnuEl3
	 EyA8xorETCp81/gRf4Io1YSRT0u27kPIz0h6rpaAW6yhowioyDGifmAxvF1ePf2dE5
	 n4S+VaAXYvoTmi1aR9dtUBtlXva8zIIkW9q2/w2jI+LnrQ+2czeJuJNCCMyLNflU2U
	 iAm/B2SAL/Fl0tDaD9e4QS4pct97KQzu60awNSL8BPnsbvUP1GHgoGlp7VhhixnfI/
	 UGwVAPDYAjSUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90731D12D5E
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 01:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173128955358.21037.1022131210624777602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5ba9d7b0fcdaaa4718a7a1012525cc46783f6581733dabfcbd2367c54d5209d
Date: Mon, 11 Nov 2024 01:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731289553
