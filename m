Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65699239E9B
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 23:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791415834; cv=none; b=XXQXBiuhaBxI0ffZdJXax5g3XP03q26DtcqidKmkEG7oHA+tSUgUD/9TcRWVMTy0onJ+sKATEz25uJGjT+Im/JNQuTdBDVwfad/i4Uptup0nCW2hGcpxW2g0KAONjfF/kH93gG3CUTms9zBbmbRfd2fVO2HVfrEPxKLUAaYuJIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791415834; c=relaxed/simple;
	bh=wk/74546hop7TQStdh/acrHtH7N5t18+ybNbqsjGq+8=;
	h=To:Subject:From:Message-Id:Date; b=iGgfcw4W8AF8ir7oMhI3fGg0VNZsya9z09ZxgIB8lJZ+ZZFKElxLaaXvMnQRrbDanHrq+t1yqQjJRHCRRGCHQxUWzDQ0aMlNXGJwzQz7O3GxAituSGCs+7g8r3Nu+rrxbSPMVfhZLuC/VKMxuofoQxhughNB9gh/RmU02aUcvpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6MZbAOk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S6MZbAOk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1A2C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791415833;
	bh=wk/74546hop7TQStdh/acrHtH7N5t18+ybNbqsjGq+8=;
	h=To:Subject:From:Date:From;
	b=S6MZbAOk1wYfBCzMbdq78AsN26l00SrotOjXQiv+KgOusPbjFoo2rcrBWneba+rV2
	 UWEyI2lduGoYeavBbohFCU1gs+tx1nP7Bumm9G7NLSidGpYhTgVR/MaZ+1jsYp/lAW
	 4WLFn+3Wzs1IxuEVoKx0IW0Dl6k1ed5Ef6fjM71CjBY9V6iZnCjvirJk+ut1CXSUWq
	 /JBEuc7eCE5o0KX2RPmR27EnzEqcNKIXjx/l/T1GIwHQNcj+x3sgZusjgFvhe0qiMn
	 LUNMBsgxU7d3ruwrYXCAjD7GtsbmymklyodMlWNY9nktyOpECGwum9iQn4bxEym3N4
	 WQ7uiqEVuBm0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E84CA6002
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179141583368.4738.16035521296423812088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83a0e1a583c5b33d21d5b9e9d6988271e81c0f6cecfafe34d0a92f6ad7d651cf
Date: Wed, 07 Oct 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791415833
