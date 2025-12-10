Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB644313549
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 10:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765362774; cv=none; b=Q/YinEWdIAh91pWD4e/nis6FusmHd3Cfz+ejrsLp3cFvcJBDx0gR3Hl66sTvjZosK1aLrTamRLncdBMM3Nh0tCFcVqBl98YOV9FdgCCR4W2B+9mQF/hmFHfmF/udul98kKTLXOWpzkjbeYT4iyyS/HkvRhSHxfEwt6yaZqSAxVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765362774; c=relaxed/simple;
	bh=l6tbqBvQG6+VB3C4+Gxdg6gaxk8VlPxhBoM72qDn+oU=;
	h=To:Subject:From:Message-Id:Date; b=LREhNVX/xnAQR14laNjsVGOlkHt424nA75tPeJxe8Gb1oDK7WMEqIfVoQrbGLVFN6DmJ7ocyPgOs10IsvMBv7mx0ToMTWuyOSjaR8s08Q4ta6yk24LUA2OqOCQVDsvCOat+Ud1FDm5D8qOxjMwMkSg++X9YVbP7fvUR348qr6vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KNFO26NE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KNFO26NE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2677C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 10:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765362773;
	bh=l6tbqBvQG6+VB3C4+Gxdg6gaxk8VlPxhBoM72qDn+oU=;
	h=To:Subject:From:Date:From;
	b=KNFO26NEvCuban1xRuer2VYbip6dyXWfnxnPW3Imsye1BwOflTF6GzPTcKXVsxvqK
	 YRv1JPBwccyJ3wS8Zo6C+vUsWdqueHPONypQC+y2Qoq8bZ0MOlsHggglpyaysh86Oy
	 r4tnfGMlnmH75bkcdrWRBgRDDGRFxgmtWTz/oOmjEw0N/kdjpeMcpBFDAMKeYGDumI
	 CWXenDCvJJFsCADNPzr6cQWmt/8lwYPLktZSHwh3v8HmiyAyGLLSrZ31R1weJrXEfY
	 0QwQHUAXQ/zIx3Sf67RNHvxnsYhE8HOVhvkUb949lWU6ybM93VL9spZOOczrE55euW
	 3Ep1MUZYlF4bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9215FD2CE17
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 10:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176536277359.18628.13939795746485479746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dd0589fbfc59ec6fe70133a05670562a895d2182bd78a294222c12a9469cedb
Date: Wed, 10 Dec 2025 10:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765362773
