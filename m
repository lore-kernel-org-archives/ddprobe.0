Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C4D1D6188
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 13:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765547574; cv=none; b=bca5+932IQ7+K2QydMd5M3c2zQ7GWDGeU+rYJfDkAgOQEJytVou7s3bmvdU74y4VaSLqNxdDem6Bc7TO0onZ0Pf7jFmwJfBzwDvs/HolWwoB0+Pbtf+Y2FX51ajnbEJl6kF/qRLkoXTSub6R/SbQylz32zekm5VrTL1kmq6cZcw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765547574; c=relaxed/simple;
	bh=w8bPNmfsba9GnmWaEKzyEL+MVYf8nwbPmTNriDrCDUU=;
	h=To:Subject:From:Message-Id:Date; b=HF/vjOID6PJYc8T9ZHLUPQFtz+cc+5SJoTocUyPMiQ0NwkKTPW7YuW2d3ntn6P0dXxbfGQ8e/W04CHcnGUR4eLqzuIlJYutHFXzqk+LuIDBisOLRLrm5V3beO93JX2JF6JcsADeZWJLa07zTSfekD5+TOj40vSXPbWJJVOMC0GU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H55n9LCQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H55n9LCQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4072C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 13:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765547573;
	bh=w8bPNmfsba9GnmWaEKzyEL+MVYf8nwbPmTNriDrCDUU=;
	h=To:Subject:From:Date:From;
	b=H55n9LCQHhMtWz6gTJOOIhWtbyXY2V6eFHMb2v8SHnxCgdsj8BMETftmg+ihZYmLY
	 71ajVGs6jpemrOwQ2yaCPfq55lHuhMnkC99aN/QJQfJT3GgRpH+io7DvjvBDVc5IKr
	 ccGCjE/bHWQqJi0sDYy/BMefVeheU9MfmjNfS+k9xwCHbR+ZVO3AI65dIek68HK7ri
	 eb799ljXcuSINJpLSucLB1UX8VQjY/FNukzIshCjUsbRwiLaIggIdOo+1ku6ZOqCnS
	 aZTrJI8KLCBXc7KBR+pcRNOhynh+WPGIKXJeRY937kkySdLF7frIYfVO9mZKg8RnIS
	 wW/6zWCjtjuYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FADD4922D
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 13:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176554757359.404.8532064629662648133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e16f1ac4a5b530b3c3354a0f2e95b97ea028a1c9c4ae1c692bc84c8278567c3e
Date: Fri, 12 Dec 2025 13:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765547573
