Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137CF9463
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767371634; cv=none; b=rAnqUs2cMrifWnJ0+0N7zGlF1PcmDCzElGp17TdB3P0PsbAo+7XoaSt00+RMahodBcpto8+SRxnATL+0+VV/NzAGfDdd9ryXD8GuVjA0oxrP0RCRsARTxwR00nALNTOUZv7Xq8WGSmc5gPUZoZ5tcH/A+Up1gqF6RvkWElMLLq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767371634; c=relaxed/simple;
	bh=VyBNjh2AOlBfVJy1eOeGBp8GdJVC+LA0s20xbhdHmjo=;
	h=To:Subject:From:Message-Id:Date; b=W5wSb8POfrQyesL4XEy3qz6Jd0x8suOTrTxZsh9RobSKCHtbHDLnS7iv5U36kRjwkBnLg96UPMvRPhToVt9PZcBfYvupRBDEwnl73fesWEovtJKWLEHT92CO+d/+FbwC5d7C7fXEaK2XBbiBmm3QSSivxy44cwXeeaIsusqgauY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eS15hnVx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eS15hnVx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF50C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767371633;
	bh=VyBNjh2AOlBfVJy1eOeGBp8GdJVC+LA0s20xbhdHmjo=;
	h=To:Subject:From:Date:From;
	b=eS15hnVxUlD/faIZ8QZwN3PapRADIlULUnQYU1cFxIHi62lCodZuq7gfj6tXNXiDM
	 KSIlpL2Nc7dnB1nWS3C5u1ocnrXmgFYFSJ0K7rO10qhmz2y4kbE29JIA2EZpbTAZVB
	 RTUyPfF2othzJKNDsk6d3hC26CJnWUstDEE875VDwJuDv2c+6UnyQuCoBe2iArxwmX
	 JE02jud09uwdIRlygGq8RDxluK8f/9QwFfa5I/XSmVtYa9ht7pP3AmvDPkwHDxGmLl
	 Q0RNn1tE7f7U+4CXvFVGERuIM2KudCf+XjBCR4XM3m8YF0fPr5S/DVZZt5OD56YulO
	 2gT0hWoBLO9sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F739FA3753
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176737163357.27224.2349948854010220092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d18749ebaf6ca2d8e2b2c203738fea2869d52a87229379a6e59206f09b51781
Date: Fri, 02 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767371633
