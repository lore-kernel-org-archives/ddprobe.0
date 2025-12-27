Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F2E2BAF8
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766818434; cv=none; b=Y06phcdrkq2gVYW/ZImn9Ms0JqGlXRd5PDAH8Embh5shiE23DOLQm0Li00LOCl9jPyaxheh2Kecwephfb5/B1siLbIyN2N7gDZ0OU/r4kg/l0hwE9q5woVCD1V9uiFNB4VRE+lDfTqP1TfRomOKm032KmlhLyPmFSmN+A2phPsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766818434; c=relaxed/simple;
	bh=AgO1y/9rs/1Ms1LnXeucDVWwgsMZryuD5Viz9laXbf4=;
	h=To:Subject:From:Message-Id:Date; b=oGOzQEnNgbvUTT3+sS+rmvk+v2YY1ug2w43EoHsihvvlP/1OyitKylRyboFOpf5brH2GMMmVkJcSXij2XyQOg5ukTJK0MpP4CzejeY/Ycw1VjCMT31J77QeE3RwbFkYmK4yQbv9GLbNCBVLjITfySJKVpdTpp2MC4qh+zBdrT0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HAqGjhYK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HAqGjhYK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9DECC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766818433;
	bh=AgO1y/9rs/1Ms1LnXeucDVWwgsMZryuD5Viz9laXbf4=;
	h=To:Subject:From:Date:From;
	b=HAqGjhYKrwWd1y5OeANCxsLsntYmIaKlVTVmQnRcEOCn7exm/xZPao5GddHYpIemj
	 3rK9bARiikLQ2Ark6i4i/4V7+fWNwheyE51qVfLg3LFSeErlQFedgxzdbPcVcXD6gF
	 WqYgZdqr/1QSNvrSyqICOR/8bJsD+JaJegoIFXLqo74I6Vum7fbCJ9KXzkJ+VWEVFE
	 pwgGTWOjN37OYfbpXvv7fYwYmPVSopxKLh1Mg4pvr5mnvxbHrQJGgSGG1LflI4Sr10
	 +aFNCIdFIhsx/q5FpWtimiIoL2Us6gH/OarXSVfkHdvCppQ7rqanfltxv4mTmxLv+c
	 pdPJvUdNGeIfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9469BE8FDCA
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176681843358.11615.12455208691849503242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f887aa0656d3c27a1eb48ea97fb8f27a416c8d5453387b857aa1677fe804011
Date: Sat, 27 Dec 2025 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766818433
