Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076CB3242C8
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 22:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773354294; cv=none; b=lWcMjT81FQ5wT4linJLOC3WPa0cS6UHQbPAThkii0LVXFPHoYdn/0NZfvKlltTWKYDVYI8X4FwBsJOM0I9NDhkhZqvYL2vXzB6RRtjQJRKDgE6Wlp9tSu6AxeDLOo9IwXM5/fVcnFOl/hNSm8B+tI3wnDRKf+jI6JD2n7OER63E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773354294; c=relaxed/simple;
	bh=OzRuU8d4y4v2ogDrddyXjn65SHMJ9MLyoBqzy96+cFE=;
	h=To:Subject:From:Message-Id:Date; b=rKV+KDcULNYWIqWdJThiPf1TAUzpMJKr/2xtLrcnAx1xC05nKIDkWC+p2xUskGoxmCNPt1LeZN4LokRG3yhhXZ5Y8gbiCwMCzbQZ/fZ4/jlPmg9lzjVRnu38LJatYYsVg/rhEbkERuOIroRGi6QT/g3/R9X9MFR15sZ0Lagruic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kyTbn29R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kyTbn29R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2352C2BC86
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773354293;
	bh=OzRuU8d4y4v2ogDrddyXjn65SHMJ9MLyoBqzy96+cFE=;
	h=To:Subject:From:Date:From;
	b=kyTbn29R+IvBxCBFaP7l/NSk2zMPFIBrogVsQC183c4FzLxsMLz81Kr0YxCVcenST
	 nxLdUVSuBv6cIo5TDTqYIRltctTpQrMWzWG9F28avDIuDGyGcrjSA4cmqw72lxIiFy
	 DHbrme4uROyh6M7W8pbXTuK0Dy2IeHV3YW+v8CyTD5QmMVltCpcnhHzG05PQARiEhN
	 6VE4p9Q91FsWiXyFm7oAouCXmV4FaG1ok1BbAMjhy/RNaxDNhX3OIw/JWY2fV2Wrkp
	 VVzFrNsTuKMrdR/U/yGDq+kymwZMNE3pp9YRnQnvLo4H44kVSPk1QlCKUIuSxCtE+F
	 Zu2bHwkK4zmag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8C8106ACF0
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177335429357.4414.13554587730549326533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b86ad28a2a51f7eb1bb1a065d06e3d74e04661e13a8c4b4b80fc75f48fdbf01f
Date: Thu, 12 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773354293
