Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1292A2E414
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770886494; cv=none; b=Yvm8PXB7DQ1aJh9LiYnEW6op4FfnvBYIrAo7CuEdT/RaGtDU8y/gdk80e5AS1cFVEAMdMjpdtLfPSaIAB7cRx3mYUTH7ecHOEPF8IleGGniJHXvERltRw46iGQeAvpcTQGEp78aMktmSFy8lO/ITLefv9SjMqWdpnGBbAEOIjUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770886494; c=relaxed/simple;
	bh=3I8AwWFxkHX8TNYnRW7jNBTyYRtp8plcnY3JR4LZwII=;
	h=To:Subject:From:Message-Id:Date; b=SHGJ9FFBrQDwLI+nuMihddUSSsp9Id81DJjBBZP9rkwpgIxKPyIgjgbLuOSv7WAW4h6thJnTQTJKMuSd9OSsDeb3jktJwJ8lTZOLQ1wz0H9ub7Bal6dtoBcoJQxZUmNWoe7PJR1eclORF9VQ1Lv5eGKaJM5Cm6yzUe6/yPa1P4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CftJtSO4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CftJtSO4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4456C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770886493;
	bh=3I8AwWFxkHX8TNYnRW7jNBTyYRtp8plcnY3JR4LZwII=;
	h=To:Subject:From:Date:From;
	b=CftJtSO4YgyW7gNpQrlaUURgF4W9JzCdMa7UeEPqg33dLe1se9MNnZvIAlEj4b7BU
	 iDgQNnaGf4+qwHd5mjEtoCZKyke8ZfOQOTZ0J89KipOdbqcHRm8CeA+aZrrmSaEhL7
	 xxLMonh2VRokIcf0NHOp0+3rn5ArFCG32UnlVt/KuucZspybiASeNzNXDVJK2HA/99
	 L/uVLVQNUxgJG8tFs64WIa4U8vj/9V2Bo1FUQ2UdYJIwDICL4UpHXRWVNHqCiD/aQT
	 MtIxkOcQp/rDsFgW5wHNW6mkCKvsUB2NLPq/1+HhJSJAr8XzOZQj8pJJncbPy18Orl
	 gZJb0Uwssr2wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F54BEB48E8
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177088649363.22156.3620231897549566160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 567ab48a7909127a096939272c79eacdf1310f0eac3b64a456414b7d455d7cb2
Date: Thu, 12 Feb 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770886493
