Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0EEBA49
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726359354; cv=none; b=Za7M1wWUv5FgelHbjzDKuYCmxxUsFrCL7N+/e9Vno+myWFTCouJdVtAEpavERiEKQWmgjuwI5J6stZbg/aDNriwEuuY2NNwtT2f+Y7dwXKtrMARrTEdb/azz/Du2lFjuGT5OOJd4JO46SWnIFAn0wNssPxgn2+bWPey4WYUJ6fQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726359354; c=relaxed/simple;
	bh=jSAjJS5Jkx5vg1llrRmXwssfu7H+SV7frwvdQq5BS2g=;
	h=To:Subject:From:Message-Id:Date; b=okrj6SKO0BIvHiH1ll1pvKWoCUTMx85BFAqcO4HEKlRyE81KTLDMsU6Tk1E6W5sVzQ81LLf1Bxb0bHh6nbVMcxunuA7tSBTq2tPGRZyyfzSTfOCD9sCGHmeGMWrht1cJChh2zH2elhZjVizkD1oE8MhZDwiHM5qr8NiURILWc44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LFJ5wfG/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LFJ5wfG/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A932CC4CEC0
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726359353;
	bh=jSAjJS5Jkx5vg1llrRmXwssfu7H+SV7frwvdQq5BS2g=;
	h=To:Subject:From:Date:From;
	b=LFJ5wfG/1gWxcj4jyy2q26Q/qZnB2bvZBLrRPKxDfbNt5KolpQGUT0C45BSzNwr4r
	 Yfde+hPn5fxtbvsKY5ruslk07njoNIPoEzzq3/4mWq4YEq+ki72ZdSBikqyFDs+4F9
	 2NivpDpNoEX+KYzkHP2DvLKgkAp8g/E0XIBQFQ1Of6/VMnCAKgZj+X5uR5LbZ63X5S
	 /3r7daWwV1dLRWsK7physkyZj2CSpGQt0HYToWmTQ5nI6x6hKzyyAECqtDwPyRDzhe
	 4gBFloft+8IEH+XKm63XnbhbvCTyVE+4l5EwockHvTeW5/Wryj8V5/h/2HlrpAv/XT
	 yARPJ2+hnN1ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D71FC6176
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172635935360.1554.11300974794043692583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6903944df305213a2f2798302dee30f6f160e9876924a7496ef710b2d27eb9a
Date: Sun, 15 Sep 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726359353
