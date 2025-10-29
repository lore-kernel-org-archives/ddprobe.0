Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB973596D
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761740394; cv=none; b=qQX23g0DJ42uFPhGPZu+XWCUQmLmW+md1VT02fzwVH77hVL5l5S5aKALNltM1FlfG8WwPW8a47lvQd7I1DxqtBhZoXpUzHQAJklKLpE1qNV95z0eVEUwx/3vmA9hGhVf8c+WL366LxgdrgGeRimy5W9nPURCQPCv2CU30i+7l2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761740394; c=relaxed/simple;
	bh=8GzYUE/z+i+O10e/eT1VJ5TV/yamCiCFHktfwu1Dk4A=;
	h=To:Subject:From:Message-Id:Date; b=BoCNuX9G4sz/zqzvK0rebPli2W8nalqA0NfJx38snSiIf63rPPqmr1QhlO+1ljILLjS61IVqOE6UkKyoqy/vQ4v/Kb+xRPlUyqzGFZQS6sN3lOND6tqulrS9fQ2EMYep1gOyO8H/bDPo8t2392mxcUU9MrWJ4diBt3xHqxrONVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMViQYHj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMViQYHj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA88AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761740393;
	bh=8GzYUE/z+i+O10e/eT1VJ5TV/yamCiCFHktfwu1Dk4A=;
	h=To:Subject:From:Date:From;
	b=OMViQYHjE1Sn9utPH1Z+X2GcuT34uO2sMJHrvg7k/BMa4L6thBKxH96GejMTAEkOx
	 iT3j8uoP/eeRaxlOItBfJoRZXIltacHaUAkazT3IlhrvEQzRfL8ebq44ok2WaCDiE9
	 Xh0MVjqvp4DEl2x8BHYmeAnhSqu1drnEs29WXJ2dSaJTccvctoBfhjx/2LShQUCDXv
	 +jC4bs+5oJDupq5rF4AbbMwonqo3jAH+QWqcyC2qovW5JT28xxi1vW8O+iBHlyUWkm
	 BFfcsrwdZX6ZCUOC3vZ0lktPSdYvei8D+lc9foSF5r67HVVGh/jOtBmjzd/TrJf8x8
	 aLDuB3Y3fbZ+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FC8CCF9EB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176174039358.22494.7280056404463895056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35b568981a3648d3e416664eb07484a9aeec663d1d3cf301e02f999bfad9c94a
Date: Wed, 29 Oct 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761740393
