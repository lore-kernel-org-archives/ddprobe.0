Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB19582D7C
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709806097; cv=none; b=Tof2mCzcLc9BiAuJrqwdMiolbrT9McZAPs1ltiLDl/pZzkcMrG9VZmYuKeoijHaPUI0anE0p7RiQiuwB4qWuVRgajWpVoqCA9kWdzGtLHwXaKWM476va+rudhEJwulm6a5maRUfvANCQt20FfxIp0lJTuvtOB2aVfbQ8l//xF94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709806097; c=relaxed/simple;
	bh=kknWx4x/0pfQvTf/iLuoVNF48IGwCEu24eCppAZIFZw=;
	h=To:Subject:From:Message-Id:Date; b=UacVEOscZEFUrCDu0IzIm+vm37QF4EqbJz5qvWHRHfACcMUjJsQJyx+29KQdOfqjxW1gGtuA0ILvgDhiQRLq4xD736rh4aA1KDLzDv6LsKq+uJEAhuw24UcLPjQDrd7tpYEnpXFi0IDAZ6q1ilIJj9FDXA74XKfAhyRsEN/7tT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riX278Iz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riX278Iz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75B89C433C7
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709806096;
	bh=kknWx4x/0pfQvTf/iLuoVNF48IGwCEu24eCppAZIFZw=;
	h=To:Subject:From:Date:From;
	b=riX278IzU6h/nRMkbIZhqJB8MNsgNAGLIe2A1eFM6aWbgrd2MSEf7flKlBOuohuT2
	 mopm1wB84clf3HgynpTUkQcoYL1o//mPIanwWbOnvOiLYUQvKhe6dhpP9bK9PXzYyC
	 K3SpzhmOUDa4rrt4KwRdt2ccpxxiJs6qIOhkhqmvBBfSMc1wwDx7+/tIZxPIehS7+d
	 pcwwWh82HGwp4iXkkj8/zB9jjM/ws54XYoiD9QbpFmCURXm9912vS7M7P3lGpgYnsy
	 F3a3jmbwuiYMpg1c44f5XdJ1MXKCA4F/uNnWp0gQSVLljE55KeKlKqVhKYRArQJJ/d
	 houCAVx7uAU6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D168C54E49
	for <ddprobe@lists.linux.dev>; Thu,  7 Mar 2024 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170980609637.15000.3039484359306618859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e5e260b7f77531bff3952f92dc0fd33d40cb7af81a36cafa56b45e52727d9b7
Date: Thu, 07 Mar 2024 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709806096
