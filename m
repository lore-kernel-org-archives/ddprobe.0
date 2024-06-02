Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 500F01E501
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 13:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717335923; cv=none; b=aIsjPdHOMqhmGgiXHN1m24D1htzW/gfMpTZpW/OrK+ANvitMMERtFS5kk+78NvYAlgLusXzF7DES8mn88QmxAHGd9cOSraL8NvVOSAoBFtlXRpFpAtx6AcxRT0wW7XWIlX7DvEwvJWipBSkLru6J5H06Iz3dKMjLjDkLbCm7Oqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717335923; c=relaxed/simple;
	bh=Zi9S2UjFQkQjny1sIyFM8yhqm0HqtENVmVBuCOUAJQ4=;
	h=To:Subject:From:Message-Id:Date; b=Cwc0woAgf5xwVlwZda+3eAcBpO7CL/YL1LvK1I4fwp/hd1CatEigYSllK/vwIlKO+Zj0I9qYlY2qqc7ZiH5impl3MryiqF2b6J6ZesBwXN2BuVMdeXUagh6RaqmwSs5410y51HW4S4kU7JELIyo0ASOey8Y9UyDaoGk2ILOicNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ap9SlRHH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ap9SlRHH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3516C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 13:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717335922;
	bh=Zi9S2UjFQkQjny1sIyFM8yhqm0HqtENVmVBuCOUAJQ4=;
	h=To:Subject:From:Date:From;
	b=ap9SlRHHzcsKg/MH25m7vn8NmgtP5EeATU1XxWanBdgYb65E48A3Lf0NJQK6czBvV
	 McD6NvcFDVEkI4HJbRp/kQvyf8L4ozoSOV7CwMOs+bq9lsDHOSJcScHRVeZZCoSpH7
	 dMquu/uiiawQ4p3K17X9PTtzFMtaHh9xmq28NHXYxB120PVUpAzWas4HH0pTbGpLua
	 AaXUyYmMESqqMS4O8u4Dn5HPmuXWdVZxfgqAEdwXY8jq7hKun2x9nmXOJtLbJSsda9
	 Y23SX80/zVMGyjmMHLtkgexCOIq67eUYTiUF8B/wOEJuz3I99sLhtft5BuPM7SRArl
	 dMb4sT61z4jJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD1C5C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 13:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171733592275.24707.5938664441851365154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddcd818bc0246f7d57b9b31cb254e98859c037c94de296c317691ec4943c30de
Date: Sun, 02 Jun 2024 13:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717335922
