Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427B8296FB0
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747337994; cv=none; b=HVucTKcTUsDIe8dyvRW7Hy/pHLZ1eMlWJUJ+f4ncbZqfwf5uTWaeRqIjvySatgsvu6Lgqi2no52+XEVoHOsgu3pY8LO4MmgK8orsahppYHL+azBLx6q5U3DHgBCstUBLZXjk/b+jca/Bq1jnn7WxiOQCNWbYDnkAyyCCY6o0glU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747337994; c=relaxed/simple;
	bh=QObg9KB62FkedLG2TyIhwkMc+bTeZIrRWZbiEanIaUI=;
	h=To:Subject:From:Message-Id:Date; b=Rf4fSgp4DP0jdBnM5VWVk7VOID3ncgFY6weF8wiM8Sknr+8BUZayKfJnFEvR5RVXLx/3qrwyfxtBGeYpmExUzON3QP2Vz0HtuJYIXNGtF9oqbGknUGRWns9/sufmaMHDHgymLVl9j/Cj6B48RzfRdPQW8s1y68+N+U0vvQ6/b8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YF3JKBcU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YF3JKBcU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16C6C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747337993;
	bh=QObg9KB62FkedLG2TyIhwkMc+bTeZIrRWZbiEanIaUI=;
	h=To:Subject:From:Date:From;
	b=YF3JKBcU45tzsrQJurk8fqsWQGESQsr5Y/fN3cAWhnsmjtztL3QjS/AdmWUit1xYF
	 8XrwS21SjuIsmrcg//+TwVZx5FS6SBwaT2mNMPUwzlZRylJGSg1yo+Yf3b09tb1oqQ
	 Z6NwklLd2Qgc1dr2NLnbm4D/wYODK3Y+ymI2oXVmhHhWmFCnV0ioAXP1Q0gEB58huD
	 i4dr1oCC1ZEA9660E2ywQhCkuqcbLf4HS0ovo+y/QUyd0v7aXXzEG3LahWrBUh74po
	 KUayRcFdn4JUFrfdsNzD3Jl07DvjvJ3cmV2hw7qrMQPuRDHWhwd2oudHz+s0/opriF
	 TeQlAax71nldg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9061AC2D0CD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174733799358.25923.8703005845815267812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 341beb80787fe78d66ce1bc0ccac0d16f7712ce08c3ec0583e6d091e0c97004e
Date: Thu, 15 May 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747337993
