Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057E537B016
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786437634; cv=none; b=Wz1iJNTC5+WOuwtof+fpviKthMyxc8Tqn3yh0DLX3EVEFM42OPqhrBYH5wNbpryVgH1P7B8UtNZToEe126h7vdNNF/zOQwavWXFl4TgWFeNlC9sMFpZzapor3A4I/Dl7pIn49dWrmjjF5RpLBpJ/ha7Y0PfY9lDRUynDUCfi/wI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786437634; c=relaxed/simple;
	bh=xq/FSd1sUygt1fs46d7ZLgSnJgaUQ0Gwd88ObjQnUck=;
	h=To:Subject:From:Message-Id:Date; b=hLb7ZT6IroeFX962CPMtcVOAJWWz1AVE2A3/y+zFRyBelLwxyJ+lBy64Y2DlPH4DUZ6qYMYUZi8C3Xocjt7XMrrEkWgW3qlnJFudUT9aYS0g42j5PbHkuuCt5YwZzgMueFCgHP9iw8dUhoMJCFYy/upB4Z67OpUBPOrXKWBaLqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B6JF/RXY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B6JF/RXY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB7AC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786437633;
	bh=xq/FSd1sUygt1fs46d7ZLgSnJgaUQ0Gwd88ObjQnUck=;
	h=To:Subject:From:Date:From;
	b=B6JF/RXYtsuQ5NvB+sRwcWBe2srXNRayoklz7/HWXvRclyZCt11SHAPh1XeSXRye7
	 tj3QvklNmzwc5k/fwJ4La9xvauk4BBMruim6ZcRJZz6aEv82yVf4IpaOukzURjpWzO
	 WuCOA1aX0z25LLW/25TX27XZMfhqCWa95gsu1PUgBEhDH7D+v6kD5IWdxqD2w7oCEI
	 YBGNHbsksbOIj/wCC+6U/Z/V43wJcpktrLEiiZKCmcSzHEyr7XjsBjd+pmBnsSPwQr
	 1PH0Vh4UCF+yV59g5S9QnuZwrKPbbteY3NUJvgGnRd1HuQBS8Fs4U6oLdVCiIuvkyr
	 o7A1O2HtLyFOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB26C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178643763368.12305.12604515850555808018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc0da8400324c69637004742e9952c555d9967b394ddc28083c4a4eb7ad1e15d
Date: Tue, 11 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786437633
