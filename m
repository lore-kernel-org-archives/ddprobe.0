Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20FC88C1F
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759479594; cv=none; b=ZdL73wLOw4Qr48S2fgCs7ruy8plGdRPftuU1j2FACOK2ARTKob9W4HKQwuCnqkpEia0Kp0bC8fQ46ozCmOhB8dNhmM6fagSmx9UnOp1/asx6tEUTNnyxXD7Ew33/fEz9WEytfPDje2S8nkmVQLW0eOJOE8eTnv3QMJj4ZMFSnww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759479594; c=relaxed/simple;
	bh=++cHbiiizVgJJwANoHXlqRb3LQ0D+A2IP5kpTgOVelY=;
	h=To:Subject:From:Message-Id:Date; b=NhmNpc6mIxybTgRZdm/iNk2Mb547zgVlPJKBPSHv05yM0mi/X52PylnOa0vWKBcbnXXuwaI2lVa7SfaQUtGNd5j19ew5+jThYkFgu6boQzP8WHo7K44Kyfr7r4TTdjwWBMqtu7WW1fw/HbE063Os4jIJRuhUg23N0pD71Ohgpz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lGvxih0p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lGvxih0p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49E4C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759479593;
	bh=++cHbiiizVgJJwANoHXlqRb3LQ0D+A2IP5kpTgOVelY=;
	h=To:Subject:From:Date:From;
	b=lGvxih0pS5FJ7WY4ec7POnJQDqKn4Y7F9GLduQu8C2kDw0AQJQbfGxxaIUUEBMl2I
	 7lzD2VjSeXXDRlrO0CRwhdCTFlaPxLdIicdQSgp0Wn5bRTz5P69KcaxELBd9bDbKGF
	 xjVHMzaT+IWcdbxYTdi02QeEAPBlHEbyfWn13kYymc5icIE6IRLVKzbqEiu8ORDr+F
	 p7jFy2HTsBl+kBo7z5aGNOcOV2OnH0/WCKuRKfFJ+mS5QHM4UbO1zjon63m+tqKhhA
	 rZPRjZmZCXYWFIwKzgJ57QW7/BJAaJYw80UJKhNG1Ce385QXOtWLiqsBl4ZluBi8QX
	 DcuNGix5X4SxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91612CCA470
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175947959358.28406.10742618147146097020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3be1463e6a17e38401e6aa1b0437a3458e9b216735e0a74362c639422867841
Date: Fri, 03 Oct 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759479593
