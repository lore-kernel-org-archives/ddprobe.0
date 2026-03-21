Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC302701D1
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 02:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774061094; cv=none; b=pO0D/qVZQLB7pjKIh7LaAzlNwuVCMJWKDVX1n/Zvoc1DzYm4L9lOLy8kOgNPag+oA0W5ksuVTyme1phBNJ18aVEj2MKR22N2s/OU637Q/Kj7O7VBlomb7R+v73OOqPJ5lWgYM/E5VR5MrrPB5d6uh3N7cQGMgtNZxC+h5EODtjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774061094; c=relaxed/simple;
	bh=ZyL7ONnrekrQy62s6qRU6BkoRPpwByIlgc3jcCIDyOw=;
	h=To:Subject:From:Message-Id:Date; b=HnWHwx1LUXRIyX9QNPhSjAWnEiqYZfsTblkUn92A01DX7Ea9KC800bP1gmX2wVwQ6DjKnpvOeqR0r1Wcun99bDZxFIRzjnjexXPW9tdp85UsMrXd0fn/wzxhbXCNfwn2S2UioS5grfu4veoWOFFcqZXUXOAhqEvj3QVklbx6+QM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f4hthBBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f4hthBBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A292BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 02:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774061093;
	bh=ZyL7ONnrekrQy62s6qRU6BkoRPpwByIlgc3jcCIDyOw=;
	h=To:Subject:From:Date:From;
	b=f4hthBBLT5IrdqjEQc0ujkV8encLRsBDF2cbvz+Hi3Uus/joPBhxBWF3JUysHKYiN
	 tx+rx9dKbDJBLBMUDjctw9Dz3P//6LMk1RrTtJQBQ45gbTTC8auQ8pQWINBy7ntSG0
	 sI54E3+mOjoj5avf4pkzJeCppUS6A3JLA6e2glumQDuLvntb4TidlyTf2ta11piZkD
	 nnii/RoWAwFNIFLZfHD8DcCL+kKwO9up4rLAzVq44IoLsKvc9XKYSyD/2Jxsrn7PUU
	 3T08CBJqjG4tM362SwyLFPEgumv4n7zo7Gx/644ZtZ+ShECD+HKWx5jkaDygJwulc+
	 3aQ5dWdWYUHDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922421075269
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 02:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177406109357.10784.11477640704901529674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a8b33b92e7e425a5f1d864b846a5b7ad40e940e9a7e4b682d3106686b3356c5
Date: Sat, 21 Mar 2026 02:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774061093
