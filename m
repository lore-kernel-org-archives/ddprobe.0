Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509DE14287
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 06:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735107954; cv=none; b=M0MUZ0ZA6H5eIpq8PMy075bsq7BZys/h88rjjVpieRRuA7GkGTfCgMa5N2afNQck3cgXNlbYLftePTIl6Ipt5SueUZWxumYNmFjbh4u1SrluTAYFCGkIZhLuyge/+8rMqLJvjmu4IjhsrJJ/VVkJl0hSy0LBOtCOyVAa1XdEuTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735107954; c=relaxed/simple;
	bh=5jk348R24oRvO+fmun1/4+k5GtMCGc++MAedhbr5M4Q=;
	h=To:Subject:From:Message-Id:Date; b=jyNo0JISMx9TNtEed29SZkyhSsvh2PGpx75Tou6jDXpw1mT/K1gx/FppoYyc2qWfZIqI/+6JO2hfwpReHx+ZTfc7tCroGpxaT5eyCd9VThsaChCo5DvFgG7DQPHysJvfuyFSXoMxSYidyNXoQORXEXa4vn51p15q0drLXerfPaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L+QSxOvB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L+QSxOvB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB274C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 06:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735107953;
	bh=5jk348R24oRvO+fmun1/4+k5GtMCGc++MAedhbr5M4Q=;
	h=To:Subject:From:Date:From;
	b=L+QSxOvBMFozcMM7+snT24NV8Uv+Gx0e8e65OBN6z9BDUZnaPlIBNhe52ga8c3XkD
	 eKIJq/xI9BY3kQL6M10FK10Xlle8kh5woiFYeg7Yw0+YJOZ3pdqyJWdfVvOYECKDjQ
	 kXvX/i1LFx2G7nUXaNXeV8uIVqfJiFUconXqN4XIbI/AeQOemC3ymIeNVJxi1ROkAd
	 qz3QOTsLG+GkOxe1IH5Ez2eqmbT+zMuvFgCtDx5g5ZMHqdSf4WjNHsdYPJUUNP/T42
	 zFEm8RMdnWmrts/usDxNTOznxkaiEDVt24ccd8M+t11uLSAYiKxMIpyZo74pyLGiFl
	 YDCGnte9IYtWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7084E7718B
	for <ddprobe@lists.linux.dev>; Wed, 25 Dec 2024 06:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173510795364.19637.16232799578080545737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e47c5df27d066f23acc9afd3b9bfb025eba13b03103be60fd7656e973b7a52
Date: Wed, 25 Dec 2024 06:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735107953
