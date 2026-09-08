Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4BB51A759
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 22:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788904834; cv=none; b=XrLZ0S2weLwctdtWAkLABpzdemq8DawPdsZaGhNswN2Fu2yvKwdYcIED0DLOY5j90uIlhRtcThSP5ZNbr6X8B1JL1/+eRuNCUFTjlzHOGqs+3steId/Z0S/vayamgbaVabuxpwQFf+sWXC0JALVyDINPBAaX/jGTMp2qMzusBmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788904834; c=relaxed/simple;
	bh=rLpPOVfQkAdynQ635c7EM5uYgI5XhTG9r0AcryNSvZg=;
	h=To:Subject:From:Message-Id:Date; b=nGBVjs5tTvld3X796vymuKvIuJFgFP2d8+cmbJUFJMyQzFrpYADRTCV+G5z3KmCOkdzDCpQHgaXyTzzt9zGiRyWZY0Gsr61jt+U01RfJ2qRT7zD6jyV8iMWCWKbKzUUjBQ1BEa/Ay7lnx5zed0prQAY9h/169sMckYdVwRJF7RE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iIAk/qyk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iIAk/qyk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE10C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788904833;
	bh=rLpPOVfQkAdynQ635c7EM5uYgI5XhTG9r0AcryNSvZg=;
	h=To:Subject:From:Date:From;
	b=iIAk/qykKcWQ14+D5ZicpzAkOOtFUUdxzlKv6QsMxVbERpbYHwmeGDm8GXTu3IZEC
	 coaeuP7bBnbxUdZeAOW9lHHaj2tSGnDW6wzwNchVKrtLepmZlemz4U6ooNlyqteivc
	 RLkMj4DkM3BxWQKqUEebFiV/3/E9M0yKGMAwTvq2/y95b6eujyj+itgVgti9sChtp3
	 9W04mNmZkmged/rqwURTfmmFLcF0/OZ8sGr2XgPRQwa2yg+2RKmqD2vQoe8aSkDPKu
	 OemHjkN4aScX5BaJ1KWK5Epv7IQ/BBtKl1Il14eD2b5QeQCUuvbRkgJr6R2JDbN9Sx
	 fnor4kvsPAcFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B85B2C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178890483373.11603.17807595800574872053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff7e13263515a8b784e52e99f27fe8cc5fdf6cf4c75040f194dfa268be2b8a5a
Date: Tue, 08 Sep 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788904833
