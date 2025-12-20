Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201CB1925BC
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 11:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766231634; cv=none; b=P2jp0myIb8sldprcsI60jiuIyhx1yv3/CLqQeAKsmKCQWRfOXOMwHeF5ShL1yE+haBaX2Ggr0xlsfp0j54IvB3olnuI9w1F4/yKc+/ocHf8RCvSO8f9ftHLDzXpNFijNEvrICkEidDPJVmJfv5pSyi5boGuw9+QIvRKm5HbkndM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766231634; c=relaxed/simple;
	bh=FunXPg75M08POdpth1SIgmt/O7gSaJPwWmwdBPq9AXE=;
	h=To:Subject:From:Message-Id:Date; b=sMwyMYIR+6kU7JyaDS7fX5hrgLsXfT1A6CZqvJ5v64VlUotCorloUw4f0kdg3GbJykYnN+g7tfuDU8yk3JRbk+SJBDD+5MFYpi81wz567NBjmVMKdupAhTRRW8HAYlAOHoQkZrKxFpPkZlf16xUc4rUJ/pQl8jH3gMuh/qKZxS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIOd/yVS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIOd/yVS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EC4C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766231633;
	bh=FunXPg75M08POdpth1SIgmt/O7gSaJPwWmwdBPq9AXE=;
	h=To:Subject:From:Date:From;
	b=PIOd/yVSlpz4wg6yd39+BGYHBPXV5R8l+A1DMhz9p/h/EWQWC8B0aJqZlg9c4zWgP
	 cgz26qYrVA7pn9OfMV+3OEmqNF/WDlWcVxHX/7qpP4cEsZ4CVNjQExapikm22iUEG+
	 P64x8rbvIW2jsG8j12uQPGEJNqM2CX9AzpUT8c4UW1ZtivLDh8qCvKamK/HHt2lvvS
	 5wK/OE2i0BfonY0c18biWh7TJfOgKFcvL6eABWiBQKlxu6vF+qWitEPQVFBLmG0IIi
	 1BI3SyvIuui4TkL+JvtSmROMVD5MRygV2WrId1xbnqZusHtCFfiF6677RU8X3Wb34c
	 EPo/rqSQLdtzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9244AE668B4
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176623163357.31745.17773161422551784984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98b9b21c899c5c3802101895783ce5f7f97f000e0d9779d3c4dc15a003c88d9b
Date: Sat, 20 Dec 2025 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766231633
