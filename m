Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1F63090D4
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 07:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779001834; cv=none; b=bJYOajwJafl2dUf4we9Cbjk+JsrNABtVw0OK3KDn9d++J5BLGzs87PKjdeEitI+ghmfI/GFO/Wblskgrmd4YoTmHEPPoAlqOdkGSaSsq2m55ATXWvE0L2t3igeaf72m1BQoXurMt2rtwFT42X4PcpqOQkCJAutOvZFs4oBwDKe8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779001834; c=relaxed/simple;
	bh=U2+LIyJVwcocDZYgBrjVi6gzPcemli+YMyS4teUvOqs=;
	h=To:Subject:From:Message-Id:Date; b=PGmBRnc6XoaFi8Ri5QM0eka8VWUxoJYdQw4HFRjriZmW1ZFJMOe79BPM98YbaM6QZ5nutMqKbda8bwbslmpu+SgPjyiky9TMsbLAr4qtqy0NPwoQfFhrF4xJoxB02lN0vzbykP1w/E/vKpLpT12vCYHeqXbJYokBoUu8dTvpeZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hipoK94p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hipoK94p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C76C3C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779001833;
	bh=U2+LIyJVwcocDZYgBrjVi6gzPcemli+YMyS4teUvOqs=;
	h=To:Subject:From:Date:From;
	b=hipoK94pa8g6i8ybWP0xhW/0cln7R3XA8y83JRwy/Xm/N5Z0i9WFnOmdhuEvm+GB+
	 O1E+klxd079dsfgSlC5JlMD/LusehV4rJqs2wLrDFj1z0pPuCk0e3gH3fm1SIklzDP
	 L11/x4rfpINoAnveBUqnis8Om8+duXyRYs9ympm1yYkTh41KMa7d9tn4/Ei7a2nwKR
	 oTliVRgtODKFaJUsUdvY7NR8irMC3/RfQtVZnK/rdijec6lULxcMuojamGNa4TteC5
	 uZGlEXo0yDjNUQxkqpEFb5DqkytgjYiaMxbv5hqXcUQ6K/G7wpJhBqxWDpIhsmaBXS
	 sTBUDi4naHM3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5D44CD4F25
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177900183369.15785.12624635184928874578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bb3e3a687c4e3971f63da3ed9675beba04591a4b40a6257e8cc0798c39482c3
Date: Sun, 17 May 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779001833
