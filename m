Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E28017B50A
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789264834; cv=none; b=tKPL9oL2qcivlficTHI591PtSS/IcNQgM1brlYk8EnzYkuv60vZJhvtmKLAwJ75esJpxnFAQyiSAxlUluv00oVIhGUhrAKNX3Xakjc5wjZYv/frSRuSHBg0trE1nAj4yJaWDkepRNdq48OvEND7e29fFKi5pvZHB2rTSAd5RpoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789264834; c=relaxed/simple;
	bh=8r0yBDWGK9SBmqCBPv9ke1ZC4He/avGVwOilPU4C8ms=;
	h=To:Subject:From:Message-Id:Date; b=pvzMs5Indgqbf4zRIOoU36IdDxrHW4ecI05iN3cEAmiWnHtrZHw8AUTSKNqFsS9/CzPDcZHge3IzD3LK7EsmBkGzYy098scgX38622tiOTCByKJGmeqxFlkwn1tvGZVbgh8UjJsSnMAqvwI4bu/ACdOv8e6F/Iq4upuAijFzrL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ii8gbG1q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ii8gbG1q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB17C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789264833;
	bh=8r0yBDWGK9SBmqCBPv9ke1ZC4He/avGVwOilPU4C8ms=;
	h=To:Subject:From:Date:From;
	b=Ii8gbG1qgKco96m35K7D+kT0fFjE68jSf5eFhyziZb/pr/jdWArL5W+LyVfGS/863
	 9YOAsFPbIizEWLuwyOgtt0lrWFgu12IMdBQUP89VXZ0rXCSMPSZNW1VVpYLzx+ID2V
	 bQwe6IoXsWVMhVi74tMaPqXAWAYrUlhZrIjKbjMkiXiQYvGQJt7mqY8HqTs8qUlbtm
	 gvJw+rywci69+cTxxfndSpq7dpmb9c4zkYH7d+1TTdhMiTTZFAj8xLtaV0ektpxyCV
	 oV204b6Z6pDdaDcCgv3O9PhythwfkI+g8G+0kAKwkFPKVqIyrsL5zjZMK36W25qTZi
	 ymvNgirtg/7aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D65C88E53
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178926483369.30234.3901362342948483104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0693ea7caa1400b522a963e4930ac0d977535d94ea7e852208690ef902086b1c
Date: Sun, 13 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789264833
