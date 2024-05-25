Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59FEE182DA
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 06:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716617063; cv=none; b=WnIFzueXSjdnCxJJQIcvDcVe/il2N+F8GJuOdRpys5BLy9caOhPBdVHVNEEGbrbfPZ4/wT8CrKW9Tq/N0EOvjY9UzdSlL9KDFzDZ3oS4BFOkOHBHSgNMCcRBThUmKF9os/OipGll26YhvIXJOaKObmGADiXYUIMwN9O0qCH0deM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716617063; c=relaxed/simple;
	bh=t3Lku5/WS9A9ZvYTo/P8piD+Agy2djIrdwgdyoqpjAE=;
	h=To:Subject:From:Message-Id:Date; b=mY6JdKu5pf8iTydpUS+SQL8OT0RmiZKqI4VjEjfo+JE+pWKXoLNwDnihemgAlrQIVzgd9I3rY0a48Zig39QKSBPg5H2Dx0CvYflJ60M/em9g6NCvmdUkESaDWzlze/9mqRiZdtOG8qXfTAhorOZDFbPsyHagXKB/PwtbA9XgTzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozvPF/4l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozvPF/4l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4848C3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 06:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716617062;
	bh=t3Lku5/WS9A9ZvYTo/P8piD+Agy2djIrdwgdyoqpjAE=;
	h=To:Subject:From:Date:From;
	b=ozvPF/4lCCisJIiIxTl9JGNXbR9yW5ABGZg8WANx5mSwpQ3jTaum2TfzGbQ8euDw3
	 oIu+fsWfdKPffp5bjSnD4sVHLGWRbOB9BC+Sos7s79n9AftzrMv29SAWZyK0Iw11p6
	 PjWFRRnjMvh46dPY6PqjI5PnCM4tapfKnGjlDrumj5/7uW6AvnSl49mliMiSL1q1Ok
	 ETnbAsExDd8sniti2JWPlYpBgLcMuSIDX7QE+RyzkJCTSfXXSV+T81U0+tMFW4F93q
	 0kvAWqdbuAQtxsFWJTbidjhAqxqRvitOtiFRVYpZREt6PLpv0iSAZ93IUkbBJSvzhq
	 gZhGos2r7AFRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E1FC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 06:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171661706275.31486.6628838799834829471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a9738eb94fb20732018468042e213de0c8914278b8f347c9644eb96ccaa331
Date: Sat, 25 May 2024 06:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716617062
