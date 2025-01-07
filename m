Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23049339A1
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736233554; cv=none; b=rEQjIOzLEMu413zLuUWIze1zPny5bi5r2AAMyQZDmO4Bx66IfkFM0SYP1A+Af5Vr5JrhYUk/QRdPWqb7zvAHds0UiJs4CwU0MBKJK+5IVFIEyCQwgqxT1hdLbhCwCcubfgzP5OklYmoyLHiTNOtB7l2CxgWQX7zn4Jy9tLIculc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736233554; c=relaxed/simple;
	bh=+U4vjzbQdXjN8DQ2wTFGueboK2cqOzNsPAtKdx1nD88=;
	h=To:Subject:From:Message-Id:Date; b=EKlmzyAOa2kDFJrrUwBXBHkbh7BxarWKE6cjMRx+LM7xVxqIu5SRtqWrYVKLfYableC0rTEfIT/Vu2dkv2oa9Wwrt0J6d094ZUIRGQ6Qsi/Eb5jcJtWzboSrSzKqD8UX0zS5pR0ISarDD8/hemVGUa3TXKcw8FKTxizh9Ttc3z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJl+Qpeu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJl+Qpeu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16EDC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736233553;
	bh=+U4vjzbQdXjN8DQ2wTFGueboK2cqOzNsPAtKdx1nD88=;
	h=To:Subject:From:Date:From;
	b=iJl+Qpeu2dsJSlLRd/QrD4wqpvDbaTD+CUR3v/Q4sM4MawJwQxjT4ggoSpL2iuUKu
	 wEaMdSu379cx3EDeDzWP/Omi25F8afnMYkmdm/Cyp2oBv97vwbpDTA/4py9mfFoiZN
	 H5ZoeZOw36+h+Ltr84FIC/RywdrUwnYIgnqvRDOzkygNudeCR5tA8vRuxALwCLRL4o
	 ekFJu7hDoFfmHPoq/5/davIeU4ZyneHHqFXFSWrB0I94z/VM8EDOSGc6KmRFt8Axlb
	 uW1FUfqHQ+ekd9oqfAos1Rl8Oi8PKdpG1NyQOWc+ZGHl6Mr/IBBV0uGwrEfqTVrvHU
	 Ews6RqWozhSaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D53AE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173623355360.25815.10770125048242922037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b811d83118505e4097ad17b72192c9f700e50b6dc05f07a63e2ce270f8ccf638
Date: Tue, 07 Jan 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736233553
