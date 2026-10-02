Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D10E33B970
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 03:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790911234; cv=none; b=krwkXuv4Bkhy4yJvh0eXFI8W3vi5Wn/SEI282jowOvo+pfC/z91oDLfoJTXexsedguU9voRaWyJx7mIDq0uy6oou733wGabS/kctL8w8PK9AVc7w/hvPVlhZhWofMYCqa7lTWs5nW+5aXmZoliMq1/cV76enPmJpPnTGGx0uPp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790911234; c=relaxed/simple;
	bh=hCD2wHu5DBZzq/ANNLp2U4NQCZV/PmOY87ksSDLkX8U=;
	h=To:Subject:From:Message-Id:Date; b=Y2H+yGI28+YjnYZEVqHRYgcYyrIc6u1Lh/sY3T8mXO6fRbI5jjcc5ehAZigT5glG40jwxu6IKBkbnre5WZWVU/j+mCOMDEiMD8iPbglKt7EEpnxMU5ZyrR6XuvCdaLmmUYl9RIYE6gFMPE9BumdTK50Gan31zXgAbo6Ua0HFAyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4ZiQTD9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4ZiQTD9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E54E3C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 03:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790911233;
	bh=hCD2wHu5DBZzq/ANNLp2U4NQCZV/PmOY87ksSDLkX8U=;
	h=To:Subject:From:Date:From;
	b=f4ZiQTD9cM6igupp9BWnUTcgzgJPMCjPw/vT0/UzPbgxeXWJMmFdUSMP+xqKG9rh8
	 tuW4YkT5exAzw4nmtpwPvIo40AQlvfwSqk7GCTT8dcZlV+PJUOOcIl6Rg9j0x9jb0i
	 Ye9X9ydAMJ30ezTgzBKcgxppKmv7WNDPsZZj9Czvcy+GXyeucYnn9+CjrR7WQvMpW1
	 /inXBsv5CWpzRV0yg4ksOPgCvI2CH+D3Ns46vn6qB33XCFhyGf+S9RiV1mhjy5bKSd
	 /PwbpMRqIhVGDOQ9OuZ1Ovgx25ZFRmTbHTIFzolAP0NQ0SE6zj8VmxhdPspxE2grOA
	 D+Ghof1FLAYJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB95DCA5FCE
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 03:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179091123375.27847.4197536914571279131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ee42c7e83563819ec5274c2924074b88aa6881f4d5e2f45971cc7d0bc44a75
Date: Fri, 02 Oct 2026 03:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790911233
