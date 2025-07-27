Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A71171C9
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753607394; cv=none; b=Cz4WiN5mLpX2YCO9C6ZllZAfZ+iYRti1x1/r3GcOddAlN8XRnd6DCoYD5K9VM+dzgN2Bk0NVGT6+Wy10Y48mAptMqlzqGXiNvOPItDy7feDUu6xI/p4qCLIwwRJiEE0bhvfMqZJJ/3i8P+guAPa9t/5ZdxfCXz3sjvcu5sHpAQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753607394; c=relaxed/simple;
	bh=lAwDkn9uoQ7yiOnzj0+6tkjcrC0L44DsKlgzTMeqlVM=;
	h=To:Subject:From:Message-Id:Date; b=hI1HYUHU2ooRYZZOytyYxAefDXyQAts8L42Pa1GMLgl7WYMdE2XHK6+eA5QsSUEru/W8Bkeeqkkk0JodkcWfUdU+L2oYvQNW+wRMemeB9rkMmVg+BWGvh0e24g4gPYu7DvykimvgVEuDcmbnci6SQ7fUYY8H0TEwUB+BPuQAGNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUvdqUzk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUvdqUzk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EDAC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753607393;
	bh=lAwDkn9uoQ7yiOnzj0+6tkjcrC0L44DsKlgzTMeqlVM=;
	h=To:Subject:From:Date:From;
	b=pUvdqUzkF82OBHJn/0Dm4lks12uMXsn8wve5w7vQCFKZevOP8o+72BTq6dW1WvGhQ
	 L98fZD7SZVWxujrC6ySCPXJTE869zCeqeZ559CvAsHfkrrBVlc4zgmsmpPKIMuS33K
	 ToF+CzWJUuXmuvqLvYCrJG9hubyDdbBFhvmL1CXAZ4ModbvFjwIwVXeqUN5/XvgRQF
	 OOu23gp/uuJUugW/JpOmsK+WxFcryfjZWTKBHyj7RcGaiiDeUqP0c3rHPwB+cIeRso
	 3dT9Sf+mPG7F6Go6P1ThU0lvDab3nXBvfNvW0n6Cw2+s1kNYTULdWffFxxBg5Ips23
	 +kIk2sX13pjTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FBBC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175360739357.16628.9352828965723076324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a24685f0a54e2b96c957030bebc0d39863efbce77b2eae1214fc831cb9cfb013
Date: Sun, 27 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753607393
