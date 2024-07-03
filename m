Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 698D22C95
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 05:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719983723; cv=none; b=kcYNBptz7PRqrNeCWrOKQD9LU1P6k4FcxESguo6cVmj1EpoOJtICdAXwJh7lF75mTfxpEogiUsx7JxF90Zf5bo07WhzcOVciTaLNaL6LotCJKH7MEpXqGSARBfWXky3yONGfGP/H8b1ZqH+VnsrbXXXn6Rx3SZZ/mH9VejgvrV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719983723; c=relaxed/simple;
	bh=9yujfrHdhBLSNnCyWX2K7mBuszBSrPd1Yj5owbGj4Cc=;
	h=To:Subject:From:Message-Id:Date; b=es5fW7l548b78cHzxMGEvJ011B61zUaySR0kUQQ43NzuyV00+u9+/mULM/OzSbS36NLlYFtpRkwwMhGcc5nhjB55Z/ZDWONFRjdDYswFwJcCYaaFaTu4eok3f7J/f1f9REFYYRRlPZZrf/MUzjNo/VN2Yk+7IVZoOfA8bBvA/zM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrATmFcH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrATmFcH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA9C1C32781
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 05:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719983722;
	bh=9yujfrHdhBLSNnCyWX2K7mBuszBSrPd1Yj5owbGj4Cc=;
	h=To:Subject:From:Date:From;
	b=hrATmFcH88/+mB0W7ClnJDT6oMcc8dkePdDjN1yT6AqTr+xixqiYCr+EkC5O+eB1H
	 9YAGzwOelNODlxhIwdcMkSOVFUcckSc59o8kBs8pjiQd7UC7uVM8tiA/dfKNR3bWLX
	 /ijJr29qtCDID2ypxuF4Fy1GTBUjcqqbOzY3NT+tjLqScmgNzzBykBiiwKhKXRDuuh
	 7oeQ29ItxKqakMkHKy50jPUeYAA0lMvNa5tRWzwgyCxIPkjm42tzam+9JympPP3v4y
	 GhdXJn5Y6uxYR9CiX9gmgi1lSPNIzD3vh4bxpEt30D7eowEeFFJp7PhdIA6Cf9NXNn
	 C+zz6tpFXO8Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C68A9C2BD09
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 05:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171998372280.21412.2227926064107245863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64cadf54c1430f76b24bc8376a6beb6b8e8a9275a4d7d3307aed8425374f1cbe
Date: Wed, 03 Jul 2024 05:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719983722
