Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28456221555
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769931234; cv=none; b=hms1uuGlwavL/HhP/gMLoLE/Ob0LtLVMqglJOQgHYQNHfuPM53J5dXDcCsTojdNG56XmBiG8kSLoo1IvuG2/CNSzSJUEBUhKqdQS5gtv3Co8VuALytKE89FzxHdxugv0i80SRmmGLgHfY2itOvvWZH5cqn+dyNkhAT+PHeHTllc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769931234; c=relaxed/simple;
	bh=/vvUM/H/g7s1UPVw/7s3n8dL/t9mMfngkkgMqLrh5Xs=;
	h=To:Subject:From:Message-Id:Date; b=o6AJ0hv4a8SFaNoDQ9s8/961REcaVH2C8bIy8HO1VOIuD01d37b18/13EznW5E6spJMWtl+iuhIgGAMcGi4gWBYWFbHwZa+GO80p9j80tAleOhVtoe18/aDA0Y2P6Gw4fnXSkYFDk6HwWuzOxojtJaKZeq3rKkebS5PzAnQeLCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iNb8PDK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iNb8PDK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5703C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769931233;
	bh=/vvUM/H/g7s1UPVw/7s3n8dL/t9mMfngkkgMqLrh5Xs=;
	h=To:Subject:From:Date:From;
	b=iNb8PDK/zQRZemFxB+PZ70XkRTxLGKj6Dh/vlYyxSr58G7ZubIrO1jjhJBkc9jpgY
	 oN5oQu83u7Nd+MiIiVNnncblODvkP3AXy/+2lfp6Cft6qurEXK1qYfMWOsqjgNfCn2
	 hBL26nsp6nO6yCv5qVcG4d8r6Y+4EV5IEz+TBg29PZ3AHOxQ6gHpeeF9tj1zIFCNC9
	 NQnVStlqo5qs/VQxr2DZ7RduR+lyEdU9YPNHbqhfwIAafolzdkLThYNu01anYquN/Q
	 oprUuSKeHgTQ3Cc6kZ+3SVU0WFINSuE47HcfEUM4OVqNaIc9u+2/MEx5QKhyqPjv7M
	 vHR38dOpCCASg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94223E7C6FB
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176993123357.17792.12027609968930624997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c4157e42d3f5421adf0e0d4a8c1b69e5b749e55227fb47d51f6a7a36bda7c99
Date: Sun, 01 Feb 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769931233
