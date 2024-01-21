Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0388F125CA
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705828697; cv=none; b=hw7bX21BNdY2bKrbpD3xTfz58w+HsLb/gOidDxTX4/H8VTNp6Shk5/z7GRNo2dKOOjTY18OLoxWzw/5EbIDpxdAENlO4Gq/KXiDSMrj+RerTXVzZOJPiu41WPt98pMJ9XWIMar3rVmiT0I6DEARt8tyAQl3YuNwvF/nJDFW8V+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705828697; c=relaxed/simple;
	bh=3AJtpE+dG8twp+Vb0YZW9labwDmAE+eCo+QRv8DJmYs=;
	h=To:Subject:From:Message-Id:Date; b=Nl4tTVhnVMnfHXKAg2EJ3m5ZARNaA/uHjSCqM+FRnovLtgcqS2oRoLDgjlTGBo/zi2jZ8NWfwINiV0HRuaHDLwI+fgFDpMdsHj0iXb9xExp/slb4P5Qozu6wUOMwRIhHYl1J1gcLMnO/yNrjTPmic7qxitrvvhzUPBN0Au3/G7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxO9qrTB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxO9qrTB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70CC3C433F1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705828696;
	bh=3AJtpE+dG8twp+Vb0YZW9labwDmAE+eCo+QRv8DJmYs=;
	h=To:Subject:From:Date:From;
	b=QxO9qrTB9mYD4AWmVu4C7/XMSkdmJ2+Uzb1gGJ7i4JHjQPKJVbRs5J2ou1WlDruQj
	 mjW/rxzAzUE9Na45ZKZXXerqBzsLdpW0UkL7ROOQbd9pC9cTDM9Bl2wgpEUevX7AWC
	 s10DV9jM7yHRu/blkMfdm9Jn9bpAO+lc1chI32k5sbv4nVIpAOnu9rYKc4LOmJz84b
	 k2ualJ4al2AqO3UcEMZcoFe35Rz5cu9WbS3U2IQbAaqGF8cGBzSRtPP23ZA8qDH7Jl
	 8G3STvJVOsRvYtgD9ags+iy62DuSGMZ/IMHwEsQJcemmXjNQst33pSys/OSzX9Ew3J
	 J9+Qx5FsGBdPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A438C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170582869636.1805.12963736663002989374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f27674e418b0081e273e6cbd957931c0ccf93cd438e5046019aadddd93fde306
Date: Sun, 21 Jan 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705828696
