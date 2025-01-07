Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA0F1F1902
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736273754; cv=none; b=deFkxwYbjuiHLi0XBeb7Qc+fqyOBQg7Y1Tkx8osX5RO4oYEX5WylY7orlj2ezCaLk0DioJEBldX0UCj5QuPV099Bt44MZkG7Uvwt8b5DqGhTqJuzBl/ajpFXKLf215xTGs6+GhLD+KWnaQhwlZu0f6zrCY6t0YsID9Ayho2yN/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736273754; c=relaxed/simple;
	bh=jffRtOC7OuFJSB6bP3iWVSUkWMDWML4oww9rmjw36hs=;
	h=To:Subject:From:Message-Id:Date; b=cQhLTy1l8mMBrxklGgZ4mL79OIeqWP6C59JG5u5svttCn6XlWkvKnRQrte4diT8tM2odJv43uXML/7StYczwr5X4dc2Pq4ZeEg7EMgMP1qud0I9dvMFH2loQEt1K8CeP6faqqyKc+5MIBaAO3fe2O7KxRZVT2K2OmnDUXchk+bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBSv7tg4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBSv7tg4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB907C4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736273753;
	bh=jffRtOC7OuFJSB6bP3iWVSUkWMDWML4oww9rmjw36hs=;
	h=To:Subject:From:Date:From;
	b=EBSv7tg4XGqQ6GfeX0qA77CnXsG2cuKRmMVtZQZuWk7TisrAvNN/ab1nP5iBXC4wf
	 eD5QVwFaT2pZbtYStevt/TN/e/LSW5pNo3w8BOx2x0m/OgIQ89iftiPiSwR74Pa6eL
	 H5vTh/V7MC++kg/SPLy8N5lRwNGF7i/HSpyWhHDmr422a152Kn4UcPoDq3GFuqhnhA
	 Y1K5cpGCVNUJp3ypnbFklvQrXidoNSu1JiNWCRkmeu6BBBUG2SJrVYAV6Y/ivRGLOE
	 w2rQ3UcZQcL/cLncEkD0K2SP5bZX4yswAqMQ1YVbwbqdHDTSHtder/bi5EPTla2tpd
	 GCNfBgQi1qT8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C9EE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173627375360.26632.15372534689349168497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0030e03aea28155a61aaa4b3ce7877d6f66eff035261870233e5a9e339907f39
Date: Tue, 07 Jan 2025 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736273753
