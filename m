Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 091F0207A0B
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 05:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770098034; cv=none; b=hNsKQ/MPRmYt4cofvP17+s2x8569g7nvQuugnsW6XbOuG3pIVaMudjB7ltcZhyCTn4SGsp7nD9ti/CxWQlfHovWnRUDCy6Xf5aPzDj7XxzztYwZyYzxLT8NVRej2cCD2m4JarKwpHYS55yhcTDpimR+xrAsP54LyOjyFdhSlUL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770098034; c=relaxed/simple;
	bh=8vrOOkzH2pXcVYVm4Hw2pK4jFK8eFLiG6QTW3W7RazY=;
	h=To:Subject:From:Message-Id:Date; b=ObLEGUnLj3PBHsawEWUI6VdUnONjs67NSIg3SAgE0VtCVmXMJH0NhZCMK+/Xo9X2X/iSdvHYtSLSmdWNIVk2SK1v0B4ZIVxT/Z8QVc1o0Wwi8talsKOsLPdUeXyrEOsNE28Iq4DF+UaM92A1gW0/9W4PLlstVFOEliVsY2j5C3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aobgGqz2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aobgGqz2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE380C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 05:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770098033;
	bh=8vrOOkzH2pXcVYVm4Hw2pK4jFK8eFLiG6QTW3W7RazY=;
	h=To:Subject:From:Date:From;
	b=aobgGqz2wU1kMtpgQYilApw/ouS/NfzW/u2oR+BgwpoK3Lko5KWwBaYZwqoh3WNUP
	 jpS7giQ8V3eEfVPP+Pjrt8CR7c/vXCPcx0Z2p2UJ2plxFtNXkIUAnJqxZOlM/4LLbN
	 h6asC/ZuXxsTGRG/Wr2GFXit7Y6zdu7FUsKzohRKGj8wy1zJ/ljT0IdMkw48Bq1pz0
	 CBLDGDipiTllosGSOuH/sYOSeEIzwq3O03hPCAw3r/mC01Jt6r31p+TqQRjymdhih4
	 dFYdk1VE1qlziJXTXU6ms73fCylDm5j7neqkTHcSXSWVb6JRrqafiN18iUkqdSV+0+
	 E75iWyUfPwJdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B71E83057
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 05:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177009803359.23601.16439864190810632000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a754c812d7708b85e31e7c1d79ce0f96eba4ec9a450db50004ddbc9d47e68f38
Date: Tue, 03 Feb 2026 05:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770098033
