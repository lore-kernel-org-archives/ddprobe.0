Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65CE2213E89
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787359234; cv=none; b=MDmPdPoewzjytMEoDAQP5yTlpwEkTXGoQfeHo0njbdIsm1JlwU1JaTy2lw3P8mwwtBKj1noQZudBmreLqaEKah3SpPuBZKtr1Z3ETKuXQb7MyS5p2w4/HQ72S+hcVYXHMu/TXgsTsd9ll68DjIQrCW983OOM8oTt8sCe/URkCKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787359234; c=relaxed/simple;
	bh=kXAi5tHS9TbrUsKXtIA6adpwyuFEY2VLycXGbb3XD1U=;
	h=To:Subject:From:Message-Id:Date; b=i6WTATTBSbcN6n79Npu7I2nI8GetHb2zGmBY70HtLQq2npDhrPbEAifPvM6nFgDKjbeFl3faq16hqYfdzD0iVZa6Xk+ah9zymKDCnnNzf6C7qX70bBUUPZw8097twKiKw+ppfFARvdQAGjbKicTiB2kDE9W2dVMIatD5lKpRii0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vMvEqobk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vMvEqobk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6AA6C19425
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787359233;
	bh=kXAi5tHS9TbrUsKXtIA6adpwyuFEY2VLycXGbb3XD1U=;
	h=To:Subject:From:Date:From;
	b=vMvEqobkXTUFPF/qFaAosLglbuDR47VNLNmnIqDiBC+9b290vXHGotCyPku1e2sqX
	 QJ245iWgKE+QNZqcdiwZkBYPzF9dfqKQxOZx0J+iqlayMRhBcmy5IxO5aTnOx1i1w4
	 bZWohQ6hXWIxCg4rhrAJYQPO0VHm/qZOzPWLdsc7tP9ovgksmOSZK4okUl//80t6ck
	 pNT+Gskh/CJnU/EHwDVGiaR7afXLTPEIZvAOIm75hFfLPvonMYE25/ByllxHVCOBMs
	 JtjSpwKSSP2++tLDyUl6lp73HI7ubXJ+8AhvxloxggDOoF8vx9nYwNMBVPqnbeBzuf
	 U+a54+tZOG8TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCB0C5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178735923369.29102.2713234411674484475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 036166983097d28f09cf0a4cae54ad650052f991ef9c6ca7a05466133e10f476
Date: Sat, 22 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787359233
