Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C6480BEC
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748730594; cv=none; b=IPF8Dyml5oCX9W7sS+9E2k2zY4n9qdi2Mky3pMn6goGspl9J4wND/vrxnaC23/6Tvb53K/Qru4si+5rmcXtDVnekTC9Atu63QmVITudLz04SghNYmRoyKV+Fyuwk0BuO1B0MFW7LygcXYRxljFqWRt37EiGWgJ42D6QAqpSWWqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748730594; c=relaxed/simple;
	bh=WOWLbIbrTfT9/IrP3ywIVKGKq+4Wpjfw6VOq/hRy6Qk=;
	h=To:Subject:From:Message-Id:Date; b=eKdY1o69uf+5Gu/yltbg2TXbeKkzxjjck139WiqKYBrtZAPeYvLELD7gyveTKQJEPFDAU4442oRBTb5rJuk+9A/b5rdqZivu/Nr8PWRVvY6NWYrWVE3wBml+LSi0sxkPp10Cre98qkzEVGL8jL/cbs6gjSn/6zaiqaMrYHE2Ink=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZCP68lk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZCP68lk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9ED2C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748730593;
	bh=WOWLbIbrTfT9/IrP3ywIVKGKq+4Wpjfw6VOq/hRy6Qk=;
	h=To:Subject:From:Date:From;
	b=FZCP68lku1m6Rzc1zvNU8oyB7qnfCjBUPs4VmEuFZ8+NDv43RZuttPpsnRlox0+vz
	 yD2WT/Du0y7GG6L0cVpGCGpRtU4/G4HNdDGNgHxf3grqPNCN/kblK7f44g/aJ7leFJ
	 6Hbvwg2B4fwEP724vCHbT7oSCIewtk7o00O4lSs0bNE5zDb4ygIPhww+whTGPRD9hz
	 aHtDSZJsid1wtEhXTrN9nyEmDExYXDPgPcM1XQvNVbmkB4kclNwr0i2Xj2rwadRD3k
	 8CaNeFc8ahVyPtRoNlPE3gl7e+Iuhg8LfeloZwtDR8080VfoT1jUVCPok0D5VcH1uC
	 6AzEtCGDqavxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DA7C5B552
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174873059357.15609.7092030292727992287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f726a7e7bd5f2876c5b1ac5c13f9b46efdbc4a1df778b61c1417328580a1747
Date: Sat, 31 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748730593
