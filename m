Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DBEB180A6A
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 21:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715722343; cv=none; b=HjAZSUuekk3vivG5SBWo6yxL8Tp2WeuVlsRfp6usY3C2YeEmRXAZ6ReC2CXxDcNlLuExJpkp0adt0r0+R+L5NhpVOzX+hCkrMzrcbLRIcZoKjP38vcwqk52gu7v522Ot0U/ReA1wWBj0vyC/b9B+7ECxkN85lpME3Tp6Xpw1XCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715722343; c=relaxed/simple;
	bh=pZ+YoVxO8nEl3hGNHe9J9Ndm5dVuli3SAsBsVCRPEKY=;
	h=To:Subject:From:Message-Id:Date; b=JVN4bry6c5ybswu277evHnEbWqzs0BXF9jWDNboXoL0kl3xv4DdsJRHs865XR/Sm+V9vbMa+Yl4YvbsbYt7dfFzAAAdsM593eFP22WytyE6rtmLjVZB6+dpIkR5NA+jAtBNdKpXzUdQJrjYTts5rRfC6ACVapEMjwtL/AErH9yI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sWjjOT41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sWjjOT41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 057E2C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 21:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715722343;
	bh=pZ+YoVxO8nEl3hGNHe9J9Ndm5dVuli3SAsBsVCRPEKY=;
	h=To:Subject:From:Date:From;
	b=sWjjOT41BJ6v+bQh0ZARMSBVLomqF7aBSw3MbMJpeegSh4Yu6UQDarN5JpOhbK72M
	 QvnzvoOEcd9gCI20m+3u1p3llTQ5jqZJP6FyOKLh+KYQgCmbmjwPrFAbkKDhfUHjar
	 TmFt82KVuFbCAOIrTAVWQuGu6XBU9p/yfbXBzhriIwYnrNZAkPuuSt171gdTFmnPaW
	 5YiHcHLd8O3+5hh49Mw21VaQKFfRODxKyOh1q5lfm0cHGf8h/UbhBrF5oB6DnPrjKf
	 Qg1sazI2VpFvsCshqHPmpPofrHcBn2wXSDovF1i0+04b/uDo2nZwUHSGEqw4ah0Gfq
	 MZoRVZvUh1e3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4970C04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 21:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171572234285.9520.1932076936273004558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97cf2a6deef3a1b4a208408b024551b321f190270d2e24d3861814b1b972ed7a
Date: Tue, 14 May 2024 21:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715722342
