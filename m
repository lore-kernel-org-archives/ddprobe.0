Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E1337DEA7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773342294; cv=none; b=X35HUr05RntCaEv8VC0taTuQz9TS5U6oZ25915UgZKyAc7QRIPFnAAIccG4x2MFtKV7YuSpdjCoofAoJwMJcAx+/XbPVtcKFI8o7itDiyAyx3EXooKKS5zicIS29kpRlCs3wvjV5MtOj6HfZ5SoTK1s5HAD+a/574AYiGSPpuFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773342294; c=relaxed/simple;
	bh=B+ur3GJeIckM1E4YlfOMxthCcVdADZ46X54dRUqHHAw=;
	h=To:Subject:From:Message-Id:Date; b=t/jDPBx6021gYSmedPYkFbuGd1Z4vJmuP3/01wuGIzHK/nV2qS2Ywakuf+EbzFzho1o9qotO75xw7I0vCCe4J1RzxZTyMbJwghK2fgE015yRwBdhsOc7iVINbuBS58X0YtCo8lxO9jxHKIOJNpU6i0GWpXgOeS3i/N89nHnjtv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bRF6F8/e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bRF6F8/e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F2BC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773342293;
	bh=B+ur3GJeIckM1E4YlfOMxthCcVdADZ46X54dRUqHHAw=;
	h=To:Subject:From:Date:From;
	b=bRF6F8/eUPKTNLc3p2zACFA1UezV7xcnxYJFk+CNsy4rnCzm2wgyI3TQWt4mXCFDb
	 HSQY9W17Ogoyg797Yh+uqAJoL6/1FVIS30b6omEZcqCjflE5Kl1N50L6yc1ofWcTbx
	 yvLafd4dqVO5avavrqvg6G+Q32c51okBUeYo+5gUXJdlMd4BnaUSpdO/XHxenefT4C
	 PpobHmO9cvES0bBdJljahsNEBUDJjllCwLiCAq07UNC2O6+IzdB3X+AmXh+AJC0+7j
	 3LkKBjb8lc0Nk0MZXqil8m/3iuh2MvUCeQPfcn++8SC0m+Vq9Y6JeagOAqAvyYyJbX
	 +AG0pzwcLq/Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF48106ACDA
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177334229358.7468.17085352411600382713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7673f95931d562ad690ab4cf466ca57980bd8a26ee1ee8757f32628f4c0196ce
Date: Thu, 12 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773342293
