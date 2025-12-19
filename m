Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2005B218AC4
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766104434; cv=none; b=QNRfNLlhM+2Utgoed1r0gJDuHT08ePIrdEUawWkZGcFtHoSSWB9qVBueNFV2jQt4FM1QI6PwMSrzCLnPowFbFvV8qoduQx5n8WDQmN8gF6DkSftKkA3GCEAXvkSh1iIUaa0NfL/7Sk3fwf8gf8NUhVEKbLc5d0orlnQw9CS6Gmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766104434; c=relaxed/simple;
	bh=N98ObQ0ghtcZ+c4PwPwnOSJ63CxL+/C7Y+38mhyOn/c=;
	h=To:Subject:From:Message-Id:Date; b=RtJZPwOvdXk8SxHid4WgPX7ol/H2QXQ5RKUNfZBN45l3frUw+hCAMNcKhS93LAc60oobw6zT5751yvOeP6RAiDERepomAqASkeFvMivYWbar60sbwfOocx/M6O/fxGy5GDxvbw8jhgovBBrMHdEVoCXNIa4umkRSqsg/h/nVs0w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IhWNiVo7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IhWNiVo7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C3EC116D0
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766104433;
	bh=N98ObQ0ghtcZ+c4PwPwnOSJ63CxL+/C7Y+38mhyOn/c=;
	h=To:Subject:From:Date:From;
	b=IhWNiVo7ZVGTv10rHY2txAEssp47HHYZ3T5ZXXtrgCgPHKFeRK47VXQ9ujVIiUHG5
	 un+ZrWqqKuRxX4PtC+MAKL83sC3RYsjYQL+zxf0shsGCSBaJAoH2uRxPLkbVpjG6TR
	 aipZLh5UF4YjT4bAYAS9tMqUFsd4YVBCx5S6FEf8RuQjk5GOHegu4qRNwbP3cIoWyj
	 3/nx35WxAyJ47VHKy48aioj2AQvtYvNvLpIMPqdPPI8hNCiZl2utOCC0g8heb5/ZEu
	 vN2pSuE7iCou8JJLCNzLqAAiyfuyvdcgRU6VugonFSoxk7eeUw51eOQwmPxzjY1VeV
	 fsZL7uSr7Ysgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90416D711CC
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176610443358.15119.17829537510025954254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af10ff05157b250c32083814b85a38e47eea06477073147a60370a8e109a9bf0
Date: Fri, 19 Dec 2025 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766104433
