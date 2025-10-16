Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357394A21
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760578794; cv=none; b=QQHHzYW7ZFbOPRkDxDxim5xe3B014yow16BFuOJ3qOR5BOlwxNySF/rAVjQX+VGEku2tHq4p42UvmtQ8s3MhrWKR3eHn4u6Nt+Z2dkrAqy3jksF3V2JL0VszFcUkY60dI9TopH2tFytd2cvMKihQyySCJRYQSh+/zWrAHvhlbqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760578794; c=relaxed/simple;
	bh=FDyxY5N1vguE67oCSR7b5dUofbTd0s9I+4bbRbjkLsc=;
	h=To:Subject:From:Message-Id:Date; b=IX3cO90JjacPaDvGvL2XIofypwlb1HDq3/VmyF2Y6fGKNT31y2/obzoaaXsXLNEak1/lTOi8TtIGDtcvE+eMaKz45BYgV2WtpINiK+w+zJgAOwPGfkOub96gnoJQIuB3JqZOcjwjN1Hme5ICBCmcqxDdW9nRwRLMgEnf08ncDx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b/JmRoqC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b/JmRoqC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1A2C4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760578793;
	bh=FDyxY5N1vguE67oCSR7b5dUofbTd0s9I+4bbRbjkLsc=;
	h=To:Subject:From:Date:From;
	b=b/JmRoqCm/wvmpNY5Agc9Iuz9JxZQArPeZpkJCRDAxiZIpXyGdUrthUVCTYI8c9uu
	 pIeGXhXd1SqOaZ4NfGBzW80CkFflh+ABNTebkKEHlbUQdpjgsknavRsEmsA2uT91n/
	 KIt9ciI49UUsfdcX1y2Vb+pwsOhuteNzFXsXhUtPu4sK5433w0HdsBhD9KYP28xSOc
	 Bk7tkhFe8kYSX3ibuVk1dlLEHZ5WxjsF1qH4sZ2ZgbAZhztWuuwgTrE4myfgZTpqC4
	 ySFwvEUgD7bngQEqmiHWnOHQiIBTaY7hOM6mZi5PoZ44gm2pMXKbShl0SPzXjwXApR
	 CP5OT4dfuHoig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98480CCD199
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176057879361.19439.17411646141321282991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1f49da712535bd86d0a705eac3a1131b143e99060e93da08a83a96fc6731a21
Date: Thu, 16 Oct 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760578793
