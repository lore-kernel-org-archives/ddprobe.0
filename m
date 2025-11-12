Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F68629A309
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762926594; cv=none; b=gjYb49iWzQ6FgJORGNNT6/+cTP6I8UgfcIKhF7VBCOdjXoNFU1Cpl+4z8y5vfPePzQoOzJa1kK061/oOILX/Mhq5OLDcLcEdOIX+Pp6rBTOal1z6n2EUY+0mtjexr+UJb2E23i6Zb/PuGZPfBruLnF6ficF7C2EB0KXeCNJ17Yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762926594; c=relaxed/simple;
	bh=0/P+uc0oi0lVVIz/iDeVDNMfHJzjaZp7Ji++VUua6SU=;
	h=To:Subject:From:Message-Id:Date; b=k1BvrbVY5cDoofdKj3KATfztxcRetXfcGKz14TnPI/kNIecANlH01WNk/eATC4wl15hN8BfLnWYwiPulKhJ1JaSRMGrDekPG/mCBnJXGv3c6LPb8tGBtJ9Qz/nJNZ1F5foBdYgp3Fsk/CjBZmEleF08l9EPGWQ/Q1zxyzlyNKG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdvaWxyP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdvaWxyP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DBDC116B1
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762926593;
	bh=0/P+uc0oi0lVVIz/iDeVDNMfHJzjaZp7Ji++VUua6SU=;
	h=To:Subject:From:Date:From;
	b=FdvaWxyPLUvoclh8nzYbjmIceXwUA/ARx7NQgjPXS1KZGzOeWoQ+re3PqdA7mjgYO
	 lwgNwDPA1cWuFaUBcg/Ol6hT0QDEMFnoFLY1OXA4E1GslRBCeXo5ybFyawdeXIxMzm
	 fAQKzv0onsIpXsNtW2//ES1AQ1ir/s0MX/+/x482xXmt88iP8fQddyfLc14FOEdpr3
	 4b2FiEgTGMiJdWv9staMa+qBetnhpbW2PeKJd3++Ho7t5zEGwdrLnO58rNw9tTzGSA
	 DJPUeeYZMJzEpdHx/36FSj2o+Aigw+fILezNrLoWCjIKhE7//rxa+1/3dF42kKB0x5
	 3FbyZwACVLu9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FBACCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176292659358.4306.8475279275575926736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ceef83dcbf8c27d2e83bc661e4d5e32aceb1347e75e23affaa17999f4ae788
Date: Wed, 12 Nov 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762926593
