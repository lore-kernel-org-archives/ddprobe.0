Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB0A239E60
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786039834; cv=none; b=N3ZqUJLB3XaK+7KdKCNwoDsvrRcmu7GTSP+28b8+TBPKNufk4e+etcdl1Q45TG09T3G1bf9EmgAcUfIRjqTHTyMswXghA1OTd2GIfT4c5Hk7mpRSSrOIyJfA+N7jvphqsOdC3qXpogCzIPBXXXuF9uZqXMSVLWgpyoEgYcTJUvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786039834; c=relaxed/simple;
	bh=eyFndfhFJOq2MOFhWyUeIc/B3GKS7GbxFSCppnHUp4c=;
	h=To:Subject:From:Message-Id:Date; b=mx6IkUH8YomY7l+T50i5oP9yZt2exdn6nULA6r8/5bgwYm7yP8L166mgSoHaj3JBybDldwWSsZI2y2LmmvXE+dIVo2ds3qLEEV53TkqkCUNToqFzuAuFzJf/Bz2oKd5esJFrM0dZBvPdGa2RQev2dtP8RwEmeaxpHqUFbaPGBIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kG+z3ls4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kG+z3ls4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D16B0C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786039833;
	bh=eyFndfhFJOq2MOFhWyUeIc/B3GKS7GbxFSCppnHUp4c=;
	h=To:Subject:From:Date:From;
	b=kG+z3ls4aMCPCSrbbyr6bnGNv5azWt4O4JXMr9/YSFgfCTEEcoqjIKkLSMXLnZQ3e
	 wIKpH8lorhyA0feXrDtSeNVND4EeaQrZKG9bJfM8rbBglKS9OJMqbD6qvhyWK5EXtS
	 DIgkHzUYJPnPnI26H7OvmfS6RmIW4QHYON3k22+1V1wbZ+WxXQYZeyAsMraF2RE2ie
	 tyb2AVcUZN3P7vooaN6Fp581nuUfhF+wXv+y1lgh15JzR4238qOUBP8MIL1X7HQGcL
	 QXwMOD1yIur1IJsBToFncQ5RYMFm/3Kc9ABKc+O4E5RpBgU0n9mhO2niG61BU2oWGq
	 siFAXxyIoiGWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACAFEC56205
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178603983369.6508.16119266115510117000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a693d85f6721c2d1050ee3dbe50536d89a2f7e2ad17a4423fe8addb4bfd18597
Date: Thu, 06 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786039833
