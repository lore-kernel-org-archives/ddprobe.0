Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5889313D532
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 15:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719761063; cv=none; b=uYBXWJIuxVXExPTs0eunXIsuJpUGKuqInOIAdHcpGfohXKYXYu04P4E3hdwI/FuSQPI6i+Z2Wo3G7SwRLaAF1Hir6is2/2oPQ/pnk73Z/bvxeLZpWW/sw0ivlM3vzvx+dgRZKuUbAEcSO9+uALZHq4AHVNXc2X97CGnPV5jVQDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719761063; c=relaxed/simple;
	bh=1mFN+GC2DQ8C57lxQvEpKq6AlnATDO80VMCCw5MOo3E=;
	h=To:Subject:From:Message-Id:Date; b=LPc9EA5C+HfkwOSxBkBWw+9Neqbx1K8sKZpNrsBJjYZJlImZ2FHDw04y03k8ksABVP3T6MvxZK4VdbiiJf+mfmfaakkEO+YmlLXkKMPx/z4M7K/DcZZtxBKkipPX/cR+lmqRY9evrOW9rygM7PW5FEVBHPsqfE9opw/0bk1HN3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJdOsegG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJdOsegG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D965CC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 15:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719761062;
	bh=1mFN+GC2DQ8C57lxQvEpKq6AlnATDO80VMCCw5MOo3E=;
	h=To:Subject:From:Date:From;
	b=mJdOsegGOP9RmADeumynmXqokG43fB1tMrR9mjqukHkYDurLRSiOWL3LAsP43CFy8
	 U8NaoZXaVS8lDGngnEJQdz60G7z0IIfYz1U8UGYTLMs7UnnCCgNW5FlvqWkd9zhjPR
	 0QoCwaBiF2SH/vcvfh0B9egezaq/OvgUnFyK6uWC235ogSfgvX6pyPotf80IfCzsSC
	 7P0t7ODMZEnKK945FaRt71M7ypcdql4dWsXm9leE8TqzBhRJ1v2+xJOvUmrcu0E1mx
	 1+66Z5blqA704ZDNdAkHN+THk+uDmpWCU8RXN789dojdLap6NAe4PeHKfbj98AfT8k
	 FZ2vYNG8pvtYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C28E7C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 15:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171976106276.3846.3147748257352125345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 058b5bfd2c150a35ed21b523f1352e95622c15a347d1e2df3d91087a0ccac4ee
Date: Sun, 30 Jun 2024 15:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719761062
