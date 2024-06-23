Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F566372
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 01:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719104543; cv=none; b=NEBEsNb60WjIlZ2jBJiVb1DLdAcKVnGkQaRKU0ytjN39iN7ouL9+nCZOYauVshEVpV9b8yRDmtCdf4F7BkA4jrHojdo4QSyTDQ6bK5Y8L7tHHn4g6g+KpbeZXpisumoJVPjIqi1EOUTnyj76hntOi1gkdoVMiU0JvO0EROSbCf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719104543; c=relaxed/simple;
	bh=WXJ14ZCCZ59A8xkLPJVBXF8SKqK+F6crHn6PiAZZfi8=;
	h=To:Subject:From:Message-Id:Date; b=ea6XQJIy+NPCeYFFxzI7arRNmnrR0GJ8+x87cnobi4Sx+vS4u2CDqkWps1sTEgykMCrInFD0PWxB3trhS8rT0SipVCWCa3kUoo1zLL5pt+0osvBgqTWpr8FwwEWOGplXUe3t6cKf7DrJ3vhYDcyPPA4kn8Nfc9GakhTo1DM4gik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lIa2GoUo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lIa2GoUo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE7C2C3277B
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 01:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719104542;
	bh=WXJ14ZCCZ59A8xkLPJVBXF8SKqK+F6crHn6PiAZZfi8=;
	h=To:Subject:From:Date:From;
	b=lIa2GoUobsgipQzwOSlpreGZDGe0iSy0TDuFNe2tW+gILYLiKFv3ApqSxE7MpG/Zh
	 EWdAgBZIY9MZiuJv9ZD5K4CF/2h47TNMLf0zR8FVZQgC3k60/V6vt8MdnTcRJdYS8x
	 9FnqiuA02I+MxoxEtSxNa4u94n0YXU7ftDr3xjCl5W3vc257TAHVsDUe/IK95Bg/Gn
	 X72YrTPGpKLYBJLvDdzewYVPXf/Jxz0ipnduQX1yFtVRTY5rBPKVWg7R+jkgDcQW2t
	 QjJAnOQOjwPH4UEB6DL6CbeePCSbuQg6f4jpwp++2Q2X84v/O5sk6XFpr/+kHSMd8Z
	 pTvwgAHLkP/Cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C53E9C2BD09
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 01:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171910454278.29885.443930506085486946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9489bdbb05100103461d7563420723011ea89f3908c0264e21e6f85732a9dee
Date: Sun, 23 Jun 2024 01:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719104542
