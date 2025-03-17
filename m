Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F393A140E30
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742188794; cv=none; b=VapBC8hdBj4QMJxHEvheEKNtoyZ2g4Zj18725K905mRY0SWh3Lq4RHDstVqK9JEuDw/Y8Xj2ABa9p1J2Cr9EPmul/90nWiC5maRMPO5l2RXKmEjANy/Tv1t6CwD7xdzMU15msh70UuG3a3U5tbIKh75lRlXcUp49D7chR0CFKYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742188794; c=relaxed/simple;
	bh=vaylAfi906fLED8/oY7gARUjoo5Ci2T1PdIHZDGKmh4=;
	h=To:Subject:From:Message-Id:Date; b=XixkJruIvrwEoFfWm+J8VGCWOsUC1CCtRZQoVxjLVTkS0+T6qyEmAF/a0VGWYiZ4RjWCuk+mrU/7g4UtR4VbXPAP3g9txZSzgZVIztIZycnuxxTbxqn0dMwLWx6imaFRPbW3cThcKLHAU4XZxufx3KOS4qBRBB+CqPETwldv/2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNxiFNhA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNxiFNhA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B66FCC4CEEC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742188793;
	bh=vaylAfi906fLED8/oY7gARUjoo5Ci2T1PdIHZDGKmh4=;
	h=To:Subject:From:Date:From;
	b=CNxiFNhAOQFddsVNalbzVUYjvmHsie/Lv+2h+6mNkiwquSdyNXK41Hgx3S9Xcs6/B
	 fR5I4smDaIimc2CCKhNI/bSvmlI7bNU95EEm4iChtpBTgnLzkh9CRubPe85812Pvfr
	 5WA00XY4/JOaDrVOgR9rj0K+Of76BVhDF49MXRAI/uFqJRTdhfjUsz1it6gpwVK3s0
	 iBnpX2jkMkmmr/Vb+rrbcgl9bIrhFAfUiwNR0W0jXY5kw9UM99L1e7554fjrh38m2e
	 vyB9QvXajafUHoYzLtSoVMKJgjiJM4rAsNzRpWYQn5FHHOkGPYv5M3c+w0fb+EcDX2
	 WMUx2gAH4Jdzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6FCCC282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174218879363.17341.1591390526808822692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20b98990f911cd4efc8a24c105753672ead1720410ee254474a3380ef3c0237e
Date: Mon, 17 Mar 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742188793
