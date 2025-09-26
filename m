Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 142492F5316
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758884394; cv=none; b=OFKfuQmApwL8FFwVmUF02pGywJ5W/KHxQmiHNgQPa35Hki1VE87gyHzqNaN/M1WNAd/slPMm5KDoSKMtQRcZ6e5LMTswrPzvocL3HPuyNfinIuSGl6bKy871bBVx2beW4x41T0OAeWvZNXhFBRc//Te9ZRybQwEO3WuQvbt9nJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758884394; c=relaxed/simple;
	bh=0cCh46NRrUiwrIFvCVk+8D/0bzNhUeChOl7A9/V3Ipk=;
	h=To:Subject:From:Message-Id:Date; b=o4bateH1gN+v46Ltijnmb40AEmeAIQnc7Zz6hwwYV1pJaEmrHGt4JtR53szqbyhtx8u3ziP5px/XQ2onyji34snPbXMT+RBlTQUthLz8j9yG0cVf0VtMx4/Pa4haG9cvmpqI+mf01gyZNXkKzwwNmqN7hEhX2iMv/HcCX9ejusU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRqZPU2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRqZPU2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF4FC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758884393;
	bh=0cCh46NRrUiwrIFvCVk+8D/0bzNhUeChOl7A9/V3Ipk=;
	h=To:Subject:From:Date:From;
	b=RRqZPU2sOFc7sf3EzqZCqEfFN62468M6o3lsavJRg2zpWt3+Jk/Yorwis/Jd3VP4O
	 4kyUThD360TRqq9mBTVxzVEOA+3Bo969e6JzZTynd7Vd9BhGV+CmvZYeaN4a8aEMBG
	 Y/+rnOrlhc4xVqjerp5V6GMbfUtjrOFx9vrl4op4DcYPe7YO9MGY2pUmlU7DsUw5Iw
	 DTAYuyl5fod43ip4plxtaWOnA9z4xslbPHnD6aIUwUvtgP1eBDgo8fQ/TMTt9tbvcg
	 pbGq8PAOz9qdPhNjgJx0SQPALLVa2xME4OOGX19EJ6andEnVX0HNpu15Dgf1e3QzCF
	 XwVt7tCh90ekw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F816CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175888439357.5115.4103184702911216684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f2d54922232b7ec71b50ec18744147dc474c321cf5cbb2e5d04f546c91a4d0c
Date: Fri, 26 Sep 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758884393
