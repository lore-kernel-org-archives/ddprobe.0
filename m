Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161A729CB48
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751019594; cv=none; b=nK7EyHta0uFO8QG/3SEXGKwPkTjy3gofHqxw2AUlZoe0pe9lXQhQ1xiUQuiASoYQ4m2dYxzBhBSkC6/YlVn+ikjTGa3dBvrr7/N4Cj4GPGD1uCHpzWPUtqvLgFbnGNf9E89AJBoEKiFfkPaS48I+opho2EoeWSrDojpJSaPeBy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751019594; c=relaxed/simple;
	bh=jPyhDjamCayJ7OBrbyHouWenckrqPVZF05mILBSKolo=;
	h=To:Subject:From:Message-Id:Date; b=iLYH97JEBuv7tiZasIshRUJLydG8GR+d9q/6MMemD/iM/IgGa/OXCOtggKbbSaLgyLe4eTT6mI492QKGkSnI1R7pW6PBB2iE42USbVTlLjRD3fezWy0Eg3nQvSmEd6r4WD1TwdSICATt6TshZGk2mRVp2+6s6JumxKkWEsPd5gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H4WNYyhv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H4WNYyhv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A119EC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751019593;
	bh=jPyhDjamCayJ7OBrbyHouWenckrqPVZF05mILBSKolo=;
	h=To:Subject:From:Date:From;
	b=H4WNYyhvrVvvHvBlcN7UjJrGIm0QQs68NShog2yeiNLixgmI5xYzvQOCNZ6DNFFvX
	 Wc3lRtONC55UKmhg1ixGBg14MAQ8S8IdRi3eeWJBW61FsrUN2BsFp0Otut/S5L7p0H
	 Gab4uH5CBpOsHUzdH2S8eEORyCgFEcaj9ztP9w3+qKZXrtRH2OME2q5UrVPL/+SSYW
	 g4POPOYJAXQuqkbs0LG1Fbe5+Q9ItqvR33sjako29puG+Kpnm+0MVRIDzryNUjvVXQ
	 HuYCVFD3DbZESlTwDSDA6ddpniJG0PeYQNBcnF6y6a2c7d9Nm0z00iE7UvEpgYjWqt
	 xJUuahnYPSYHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907FDC77B7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175101959358.5975.4771555461265362052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d538489b0f9ff7342b8f97d4cc5f516b75cffe5bd8105253b61535c85c7877b
Date: Fri, 27 Jun 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751019593
