Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 409BF3CF699
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792060234; cv=none; b=jjNCN6g4qi3pToDET2cpFQkBz2XQhQhLrUbannox6kc+mjkbCuLKDaqEb8n0TibFw4Ae8AsotvGos5p9qa1houIvXovc9ActC+WdsOp8U3R+3UXB+hnYV1YvTIPy+E7qBwhaMTrAZpm7SAqH5e5nvx/MYyCVXuSXUf1RmRw2e1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792060234; c=relaxed/simple;
	bh=lck8GywV1OO3531naRLzD8C31dPbUV0v+Y7TLl6jarE=;
	h=To:Subject:From:Message-Id:Date; b=RoUmIXiaBHRW6aOjpgPTi+0GrFwhq6hOfXbY4Z2BDhvQTrLIsRsCG4nZjyH2Fj5ImnmwOJ/qP5/POh2jpWAO0YZ+ER8+coyK2TMAC1XmDewM15+dl1UpZti0Kfw3BaQWrOGNeUrOK03rZwxRBCWMH9SNsaoKs4UNctLQRcOjiyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7lVMvDL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7lVMvDL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D56F7C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792060233;
	bh=lck8GywV1OO3531naRLzD8C31dPbUV0v+Y7TLl6jarE=;
	h=To:Subject:From:Date:From;
	b=n7lVMvDLc3uksfu9zkY1k7A1ttUAhsEDBA2fVt+TaeTMaO+De9gXxxHnSs6ElwQeY
	 gVg1E4hfMKsh61Hh6vD7a6U7cQOVfD76NrPavyqIwdcYBx2N3enoe4barRRkgSwUX+
	 nyNrXb22UNCgrKCIR+9Q1HG/isadMicbukh+8QHN0t0U3ANc1oEyuYT8704gKHkjVf
	 PhWI1aBJ5Q9z6UJQsNbeObKJ7DK9BmkvFaY+yixqJyK3P1Vhy5eHAflz4COjjp0Iqm
	 ARmsyu0ngusqLxLFCNN4JpPGiTmpgwocPYtVsK1SPtysm7D3JVSoZ6hsbyYr6+Y2DG
	 iXOWf7AuJBRQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7B8CC6B34
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179206023370.32069.637578615082668677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2792ba676baed443b9f2908a0ee3b61b1455bd138c6f38138dc720d4acfee633
Date: Thu, 15 Oct 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792060233
