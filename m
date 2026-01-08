Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92C80366DAD
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 07:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767858235; cv=none; b=GSlh1CkpZFaVecgwRJB+TLhrXe2oFaUYW9Z0sOePnzFdcxRqUuL1vDRjHOB1HoKIhf3mS29rQjHTEl7dHf7NxQd0bwONfEYILQptoXLiskabOK2ZCbczM3PGIuoRcMG1BDHx4bc3YNUUgUB29QwLedHr6FOlBB0lXrbv+qXf5n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767858235; c=relaxed/simple;
	bh=1pVq2TJheT/R4K7bjvqWfCJ9Kzj+DU5oiHaf2TWTxxY=;
	h=To:Subject:From:Message-Id:Date; b=CoMF6mQWJcrcxaFVSkjlw+fZjTF16skW4zVTp3rVZTT80yPvoueyJ+N8DV1cqK6hXPFrOWCGykLz57zF+cd5KMM/vBKYApXjE4s3IQLepS60+FS/n4A4cbOw9WIZfs1Tne0VA5fJvXzpaYf/WG3uOdJoxDylHc6eRksjYhcAie0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtMg5QH/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtMg5QH/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED17C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767858233;
	bh=1pVq2TJheT/R4K7bjvqWfCJ9Kzj+DU5oiHaf2TWTxxY=;
	h=To:Subject:From:Date:From;
	b=TtMg5QH/3/JB3ReEzjxA/P+h6evNR5+gVBrIYCLeaWQB+rHaGlQOD6d7Ny1dBLdA+
	 2psIKLpZEHIlC60uPyaQA57/LaREoopoeROoqUNQo6PUWyR9XW9DAtYmqEiqub+a2+
	 Qfr3qJMDpQCnHTxIponEkeQWRfRk+ST1coJBzz3/w9bF465RgKv97DL9aXCgo56SeT
	 SfjFEFJWp2OucrSMBbhgzmpDC/mjMzo8kTzBMAyTlnmu8++FUaXvcGKJH3/UdDEGVC
	 PrIbGo1o2SeQuJEJ9W97Rmi360Fjt8Hi61/Sl67S0PVLoXznv5sU60ufBABfWkpyW6
	 7eoJTpB3cSXhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3D2D148A3
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176785823357.14831.3833637676889805448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2adebe8d7bd75fbb025adf506d8b93c62b617f0c8c2df17ad507f7e54c6f1cfa
Date: Thu, 08 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767858233
