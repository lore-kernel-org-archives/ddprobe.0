Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DFF731F990
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 18:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784400514; cv=none; b=cXQJQj1fcLGHed8AMO30BT8Tl+R+hR6ZTMauADBFOlune0daVRMV6rvcczI4yeCxEF7ZO44VT3S4svYGC8aQDVpmH+JvxkMHSVzFrGDSt/On+b1i0lLuv2Ee4Y/ZBfLYFlz1k5LtPv+8ML03C6nMD7zsbG5jO3sHEfw91wPWjxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784400514; c=relaxed/simple;
	bh=RP2surJAkkZQkxuzFB4STKMGzbwWq5feFR/92nOqnIA=;
	h=To:Subject:From:Message-Id:Date; b=OEZJOMdajno1/UCf0wAq+3kBsoEEeKbbkgQcfIzvYCXZGx7lIoU/uGUjClo4pLNsG3vq07+u8U7VH0LbjFaw2oV1wSQUlrrPQEho0XgjDNyByUlNcVB/ud6u0fR3ZVUp1lPbnJPgAv03BqR5ihhSy1mlsni5QbSytFzKirNIZzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pl0cgv1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pl0cgv1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18FDC2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 18:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784400513;
	bh=RP2surJAkkZQkxuzFB4STKMGzbwWq5feFR/92nOqnIA=;
	h=To:Subject:From:Date:From;
	b=pl0cgv1lM3el8p7PsKdo3uwqVVMNF7C1e/mQxsh/Fzva2ubIp5RvvIaj0A4o4HY9V
	 GTOUdA2nfo/k6+Fr/RESLFyhEHq5voxXPNqZB6lW8g36ZepbJRUdRhzf9XExePKJPc
	 9dCizEPni7pImD7OWLpi/YOidcePIseNfZj6mkVHbgdxRb03x0B88J52JZWIssuYw5
	 QU4GTnRt03oJvQ5kmwM5vn+qqUbUyjsciK3itQ0T2Z0LXQh39/crXfPQS6n2FDCH2y
	 Po8CDv/1fJeruovdfxtV960aCLnR1MHirO6Q4eZ59qFsfGLyrwIj825nBmmhCQig6t
	 gO0PWsnjZd3kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC99C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 18:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178440051370.3950.15248702460783573305.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe28830098135f8c21c6664696765db24bc2574e957e8ea5e5cb2434c6139308
Date: Sat, 18 Jul 2026 18:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784400513
