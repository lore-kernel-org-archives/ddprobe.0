Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377BA533D6
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 05:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782191194; cv=none; b=XYqyQy4uqx0NYC2TMIVUONqO+z5MpX5/rvA9W5wNbivfNJ8E1DNeLQiVnXHvoHBYJ78e4Ecq+3py3kiIg24Xc+mDOXQ4wjcH5ZeWlvBCSQyoN2XrX5KWaSNCldLUw5x09hP5vPi5t0COJspssPQOTDRCd5po51NoxyQCQrEjh2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782191194; c=relaxed/simple;
	bh=D0uojNOvrA4iOj1y3N2T0vUmCcGtVLD7pbM2ezM/RVA=;
	h=To:Subject:From:Message-Id:Date; b=H0W3vRZil0nfYcuCGihQDodOxB2Jt74XoWiiRSO4ddSYG0jL5tsI8M+xrL3RsJyqxfMxFOnazEG+qQc/Dpxffw1NgsM8PTjuM/a4qW4o44lyRTCEDZyUn+83DcBkhyu0+eRJCgLmMybGYwTRCU23qSjH6Xbj2cBl/AY8RKhiUMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udJc0sUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udJc0sUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C99E1C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 05:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782191193;
	bh=D0uojNOvrA4iOj1y3N2T0vUmCcGtVLD7pbM2ezM/RVA=;
	h=To:Subject:From:Date:From;
	b=udJc0sUlcXTX7N/gD050CuTND7d3WRg7o5EZ5IF8NfI/norrVoQrkJmlV2r0TZiHr
	 SJg0bnfINRV2z87VcAvQst2ds3qri2Tatyb59Ax8xV/8B2383u2ilfik7tiWvzJSfO
	 pmh1GU13wva2+6Xe0WSyQRFY3g1BTntyLhrmkvgOoSlxwbivA1ZWiNb3TwokSWyy1T
	 ChiaUSe8AlkgxF7poHRqxZ0yeiKHwmNCCRckJ0FwKbwbzGkefCIj4xvXga7xMvK6Zp
	 p7GQe+ptX4teM6i33+DOD+1nglNmfdFFYGlv6PNnFGjHhG7DAO0WqOtIONeLAxbG50
	 MG/GIkcs+MGCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE74CD98F0
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 05:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178219119370.7719.11242082926372029510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3b4481ce1eec70cd247435617a91bd631376950c08cfaa6977793d400a20233
Date: Tue, 23 Jun 2026 05:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782191193
