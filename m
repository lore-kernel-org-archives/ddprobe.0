Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1B612D1F1
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766727234; cv=none; b=fckC3UjSrGr04Bj96XIhMjIZ/kNAvgLpkixAXzu6AdMlvdOsbbjFYRBzAZnjFYFp/V+aCz6z1fV0yntIhgLT0khMxYG4L8fNWN4IbNh3bKCwgU2hfQiR23Pa9pUevtfBagleHd/DP76+SO9OnuCIS6D55SRbG1GGJAA4odwqmVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766727234; c=relaxed/simple;
	bh=72LqM6LfXCZGjtwNlI09wZI8xEh05YLT+2ZkpZ/7kZw=;
	h=To:Subject:From:Message-Id:Date; b=SAo5uao/CL+Oru8YjYymXqVI4tlYFIidRkL0fAB3dYOvUfXb6LQQL7WM9PrLQ2lC/YHBK5Aehf874wX9XWIfrlc7QDCo6vp+P7GEogGcmp1Dod2l31XVarrQkx/ZvNcmk3wKqfBZAxiZgFG64rXyT3K7knLOfaLsUTmmSpB/8Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlN1ANlR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlN1ANlR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB91C113D0
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766727233;
	bh=72LqM6LfXCZGjtwNlI09wZI8xEh05YLT+2ZkpZ/7kZw=;
	h=To:Subject:From:Date:From;
	b=XlN1ANlRjzb0z5wGZhcmYP9DEQiFjCS2i+IqLN2SLdpKJJJWnjR4+36RzeBiYY7z+
	 Rm+KA9U29gVzXtd3o9CzmuTKc5E/o4llQSX4DZrnv62otZmScaziV35bHWntX6OpSL
	 VkkUrctCIaB7yjPKwNswgn/ILucYT8SJVIwKmAqJlBEbZc2tjls1YZXe3dNCpvNXkX
	 Z8RCpssLv01ZfJPtUD6raM/2FQ0JKVziqjr8ywqRb/9+vJj77sRJuwpmsVc9tJ/6fa
	 cYHpGyovmHJPOnyqyhXe6q+tihgUl+k+hy8HvDx3cOkl5+akR/q+5pDUthNBs+vArg
	 99LmfLF1Aw4tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9865EE6B26F
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176672723360.22017.12228047068194997523.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3223444f24cebf83af54e79fdbc58815e436027c0504126f276ad23cecea307c
Date: Fri, 26 Dec 2025 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766727233
