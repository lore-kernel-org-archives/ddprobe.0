Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDB71301000
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769897633; cv=none; b=frLnY8kODCOFE1FWMzJc7kzfexhU0/nqG2Fmx4uE++wLYXC9LsaJAVzlHf5WOTcliB2z4E+IYIMRFSnNCrWLgyCKHL115vmY69ToIPZas0VZ4Ni7PJovX+uX3cb/b7ijSsObLEuwMRZGse98RMD8JrdljSxxn2h5eR5dOA2tvLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769897633; c=relaxed/simple;
	bh=MxZd+Qp8K/dXbBIOjGjiSImTP6Qt7OOvna8MZYvme/Y=;
	h=To:Subject:From:Message-Id:Date; b=UyL4Ub9kXwI1kxAd3PvDyxjQ2180PTddAWbvOeFqyjNURTjTAxnxYvi/FkBmeNcYx63aSvMFiqIjoRLDWiZTiRoapY3Urh3zicjkw3CsM2VHTPVrWHp4BPNcu81j3sJhT3uQIzUrLwHkpiJ2cWHMfnIsLVVvR3i5j5FHxXJx66I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r5SYWErj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r5SYWErj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E78C116D0
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769897633;
	bh=MxZd+Qp8K/dXbBIOjGjiSImTP6Qt7OOvna8MZYvme/Y=;
	h=To:Subject:From:Date:From;
	b=r5SYWErjUGOxNLwbU2R3hI6jsKpuk8PdTIDuxSvB4vwHGAMF7IMy9fafTi1USY89g
	 qyvKpMDoHRZZJM2qPy4K09CZVKcDVrcdbD3A6jMEEIXJN4F980HchDski2dRIihg2g
	 vzKGeL2+hzkDmXxTUwVAvnJo/A0ZJP7xrN+h+mIDXnvuDCOdU6XUuJgQT4i3qauKax
	 9xU4Yjb1uzBkzyNnJnz1lsutQLwNkOugqJH9xNy9h0opPCUsvRzPhTm4yUCABTXY8N
	 4Hj7V6yA/Ux83XZUTBHhEE+jG8PN0B67u4znGmcIyVty5Dip6oh3mOeK/txksCCYKl
	 Eb4o7UWulL5Ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946AAE7C6F6
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176989763357.23601.13080067590355794695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c8f6d8d1b0bd6123bef2b4e0fded1e63d9bc3da30b7849862f474302d8aa64b
Date: Sat, 31 Jan 2026 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769897633
