Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F5E1368
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 05:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705816697; cv=none; b=eELJ31BW+TukFrk4uqu/wMPs9kW/YH8C4LBkOyDv2t3amBC1MyBBt2kzyXPdg3IyEjg9CoRbcnlgXFhObP/2ylymuAhDluEm96sfBe6PsxqF3Py6oyu9tOljvGiUN5I3L4rqGFZc9i/4lQQtiDO6MwUxhk+Z22GyuIBbu3xCw9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705816697; c=relaxed/simple;
	bh=v2AZP4/NWEb1SM4vxnRAuIFvBQ4KHDR5Gh9ZxppiQKk=;
	h=To:Subject:From:Message-Id:Date; b=VeXm/src33R37SICSnSOwGRQc923p0jw69ULljN4Tihlnei3JKFSWLA0Io/s+0ge1IeK97T6yChjZsayXb5S2xkUyZ1T9Z+wsh+xFCGDgogz4T6WiB88nVV/0AR5L6SkQHgSXOGtr/f7D79/uD5dvSjY/I9K+V84yVqQfDb79yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GiLYH9ai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GiLYH9ai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A8E4C433C7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 05:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705816696;
	bh=v2AZP4/NWEb1SM4vxnRAuIFvBQ4KHDR5Gh9ZxppiQKk=;
	h=To:Subject:From:Date:From;
	b=GiLYH9aiuLX1aI8bzE+B9JhIBdYWt/RJE4tFqWxr9zsHiNaxlXOY68n2rTcyQ8PUl
	 5PAmIcNQMWyq0Tu9qUSokdUMyekPHcB884ZyW94mvIEcFru3uUEGt1cYotZ8fv8u1i
	 m+QbeZ382UYIuevc13lnabp2uaYzjdpZQZB9BYyFXWMmIafXGTzEkxvyDeR23pWCxX
	 Bpx2X4eWdVIy97Rm4Q/gpPklZedHOSGpcU9Qx409zyUmDZKmZl/nybtyWVMzGVRls/
	 0bRzAymdw5M5xfSJPPUHfkkHhpihkkKDeYYvm7x9qYIUSUyNP7h3v2vPNh33g+wsBZ
	 5Hw0ZpLZpTBIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CDE3C47422
	for <ddprobe@lists.linux.dev>; Sun, 21 Jan 2024 05:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170581669636.27221.5449806564592499876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90cb0fd6c9a5c1e0b5c579fe3e7680f7f4f6a6119151b99f053ad8744d61227a
Date: Sun, 21 Jan 2024 05:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705816696
