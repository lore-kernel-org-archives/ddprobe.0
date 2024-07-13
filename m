Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F2041C62
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 22:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720908023; cv=none; b=FOklayDXpXKRH0uSj8QNVYxFXgrAa1eigwIzqGgSkx3pJXxrVmgFm5Y6Dbl5PGw5rMsYsMvQvOyoiR+D6G29igVWTrzhV7Z/BtPFVO4LGX15wrbNiieD2eAdcslkKowGGPYC2+h4G5eLM5uTB+g+CztCFxsFzwcTndLspyfe7ms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720908023; c=relaxed/simple;
	bh=FAHui/UCm2WUl4iqsvpijXIQGO5/pF6H/pCchq6JGV0=;
	h=To:Subject:From:Message-Id:Date; b=c4rkDyqdw3Cd2p3dm0NEVgMS7xRq9n7DsogyOwWgjqZ5Kdw0zL6gnCWFvfwaMp+EEHJiNlqCB2XhyXxeci80kXlPdBKkIhg8IFUA7qclay2BuYuryDOdCe/uvpeZtVC5E01j73TCRBJ7f8IP/fMt2AVEcWs8VPRZOtdGd9SSGiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GYslqHa4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GYslqHa4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D74A7C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 22:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720908022;
	bh=FAHui/UCm2WUl4iqsvpijXIQGO5/pF6H/pCchq6JGV0=;
	h=To:Subject:From:Date:From;
	b=GYslqHa4grz4QHnWhdQ45+Ftzx0RK4kyeI5ocxBPRfltc1EcYYIzO/RGviolyby4g
	 CeLPcr7whjzCQgsLJjPs3PWAjDfnq7Bdw74CVRbLfeyCtwePP2ghDgTFewn8ngC361
	 0De3k1IgnXPhBmabCOcP1Ch9LyYggE+ta3HJk1XCTg0sFqcyW5+48ir5458NVv+Q70
	 aOk4b3ifH/IxD8xc7UJBzil023lAvbg66SHN3ODp5l+gegve8rlOJKwL/JI2eapOou
	 j+0DvoN6ua1/qhmyTrs/11mt62wkpyBVJtl3apZ7ln837O2PsIkMGwgAB5VbAeJjbi
	 67ws+LhQrmSTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1CA0C3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 22:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172090802275.15733.17892082824382317564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2b688774e1d3321c5d0631513e30c0ae1d12dd296f6b8d46575b5c939933898
Date: Sat, 13 Jul 2024 22:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720908022
