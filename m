Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4D58330300
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 11:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765797173; cv=none; b=RsWJp31BWjDUKHp0n4pP9lRlK2FiQmsQCjeDdAH60xje2U15OPrQijKRDSUGUdL9n33tuT2e6sE86p9ZNIvEteu04N5sLVfL/7oiKJ3w073oIE3FIfjszfE7U7aOI3IeyIPXnoLzMjM3Rbrhgy77rTkigKcGeYPBUAIhcF1p0js=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765797173; c=relaxed/simple;
	bh=XwrH2pccLh+MprCOBeaxcai0pB3PQEYa425IInu13P4=;
	h=To:Subject:From:Message-Id:Date; b=tNX9Cd6xCzICA7p7OMqwLEGysUe5rKmELgFJcjllp68zLuhn0JiwEtUTLK1wYr1lKFpncFxC2N9bKJhXhALu6nKktYWKn3FaaIcxjGF5gKnqz9JA07GRdVuD5+hdw0xTXHWGy16hLpMCN0xE+cE1mdSewakt/H9fb4klL8BC+Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YdUcgZT2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YdUcgZT2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1743C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 11:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765797173;
	bh=XwrH2pccLh+MprCOBeaxcai0pB3PQEYa425IInu13P4=;
	h=To:Subject:From:Date:From;
	b=YdUcgZT2FsVF2RE16FAqZwY0Q+337z/iZdUiIvKWSEtP9/ye3zYcvncsFw88L8qRk
	 GhqFAktbHjldokc81WtpKWJVZGtS1QNfLVKGRfYIuVBloIHbhLtJ9CtjslDJAcSnH5
	 KnFarr/QCyT8GDFebrqKTearho+weAX1s2VVlEGksuLIdrvi/iw+HoWHXmE0543ssn
	 ZORHiZ3mrkmI1WYFJ+ub03uMaWG0IWjhEDtCTviV2gjuAylHEUp2Qvg5NBuNIJJd8M
	 gJbxIhfwl5cmgaOdUe+hoVAeZOm/MIaSerNLmLaiPsSRaUnZdKXUqTc1CvYJbHm2xR
	 CcGlJMmlX74FA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F49D41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 11:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176579717358.20940.4177622807177115336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c40f560e64a4e9dcfda8c11ec050cef9dfd1e8ac7586df0a1ae9f4c3ce06dbff
Date: Mon, 15 Dec 2025 11:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765797173
