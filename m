Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1980D21B199
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758314394; cv=none; b=AHvDSfNG11LUo4CxkY3lJnFYZ+YtYj9MVQ0ZjucjslSqaddiLSdGPUbtrk9OJJkfy1zwEXspY40hudjvlHnVHhL27LFZ/U3rjgHQJahDz/QvtZRXsYDanhKhHsq+dlhP66nWyGlHc6HxPVVVrO6g3/XdrLAcR3W/GQTEfR+9Vbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758314394; c=relaxed/simple;
	bh=ktpzPiM3qX3JZuYim/+gA3FvQgmQxX0Sx0JCdAlUM+E=;
	h=To:Subject:From:Message-Id:Date; b=c0psV5wOxB1am6T69wb93qJg1GbuihjDlOyEaU32tGVMkZ8/Oquwhd8AufyClB4apJZ8dVHTFtp/o6LDxSFRiFWULoW3E2OAtmqPkBeoGanoI7oo3Pp1/2aKdFxueGfB8PlX76ikJzSeCQ4Df2YFu4KfPkPpxG3eCRQZUJe6Z34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H9xFigOL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H9xFigOL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5D1C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758314393;
	bh=ktpzPiM3qX3JZuYim/+gA3FvQgmQxX0Sx0JCdAlUM+E=;
	h=To:Subject:From:Date:From;
	b=H9xFigOLchtTUTpMzPPtGyo5cZf4ZOtXJCAgUumoT2NDe45VIJ9HTrIRcU2KAbh5R
	 /CNee5a1Tvq0HiZzEPH6MBguuR8gEzNv9iHsbNNrtQdz7imYEnYA/R7GvnRlrpLlXV
	 DM5WT5gr2Nt1biujid4RfwZD5Q5PmEbN7BoEDFL2TT8RZ2IVK4PnZwDlDSar3dRlC+
	 eZL+/swm8X7eFbLq9nfhQ8xlP9tVVYwBaii/Oj7dZ7H1bEtJxIjIwbRznAWAHexCzO
	 BjO/5TflViTZ74lmpl9yC/jDCHRQ6T3yhL/On8DeSpP4WaoepSCthY7Leje12eH7BH
	 Q827lIB4xMfOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F136CAC59A
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175831439357.22362.4428425431873017354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04e43a2b048ff953354dc5bdd18f7d8c832bedc7ff5c0aa231ab3af4dcf48c95
Date: Fri, 19 Sep 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758314393
