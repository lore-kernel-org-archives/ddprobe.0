Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EEA41BF325
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 09:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718701763; cv=none; b=QS7znhNCRgZ3zycqjWUoywM6FP08unPvQwr38H6O7L08Ohr8Hos91/PRha6YtoGPoMCDYaHMTHHO3FeJzqO0g8oAtDoD1z9LN5iHEiCOCr/Nre6+wfcPbt0fojaMgF4Jt81WtioQoljtbcIcAGOWHpwFbS44i08h+rj4+P6Iv04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718701763; c=relaxed/simple;
	bh=eMkQfzP16RNyBUmJAVjgb7RXG84TQnvhlTz3L7HxiiI=;
	h=To:Subject:From:Message-Id:Date; b=G6ScIYQwTAFUJpz6olXozmqiWlmOK8YJyd2K2atUWIG1UOkaKnQRIEj1oLu2AtiLWQp2hkVjvEJUVsOFwfD4YE4PHwLhPgCDIIE2rXwajPTV7e/NyL4a8l5Gn7AGHB8FI48oSNiaY34YV9Lj4U2xeUCjpWGM0C3AHfbV39gK5BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZg4PigB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZg4PigB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D75B2C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 09:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718701762;
	bh=eMkQfzP16RNyBUmJAVjgb7RXG84TQnvhlTz3L7HxiiI=;
	h=To:Subject:From:Date:From;
	b=GZg4PigBJ5QgIDCmA2VhU986FZ8RA7mr4w1y9ayOouwqUePuAHamqc8M1l+3dqqrQ
	 HkS9IotUwxGeWUNIepoPc3EKkPE3KPH8tctDlyW1HLDEzZHmh+fO+LWN5k4Yfq4l8r
	 AGnzF/8b6VJpEK4QZlCzq9YE5z6LExdwVaIYqglm3DtzIlqwIOsxALw4ac8B1eXGYu
	 UCvJDSaogrXHiCWU5TViXAHKmWjRV3EjcCx82dQE5x6J1si6cpy718V35eWpjCTE8S
	 jSQ2ErTjM3XLPaahNfFFdJDuSuz9G08C6NdbIDiMWL65c3HTC+LvHwtEqUycN5426j
	 b10qm9niOshzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E2CC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 09:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171870176277.4651.11312050932927436549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c258404fe1049d3cff94d3fa19b2666b781166a1b2309f6a7f893e3a21db96dc
Date: Tue, 18 Jun 2024 09:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718701762
