Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 930B11925BC
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787215834; cv=none; b=Zl1gk89aqeYV2zZz97nPDdTeoO2DldHYnKn3kk8dFOnv2KLpLjdPKkNG8xaIdKRap6ClRfB7x2Br83IQzck+vDw41TM2yot52qCw7ReAz5jSwSvacGe9OVGVO8/x7m8SI0nsAsO4BBW0o9tGgrFOLwcINfFvyUP0Uaigkb//1nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787215834; c=relaxed/simple;
	bh=KR/wqgTJptHHT0KK00lCza21sPgGsEIbB4N7hv4A4HQ=;
	h=To:Subject:From:Message-Id:Date; b=ZrQdq1QOOeYQcdmVo5vdCsmH5NWaDApR73YxPc8tbaD8ml+e8XzJgMfat0Pk0q/9jS5VKP3cotGswX24qu/gMpgu8EeVZHb5IsaM3PSH9TaBvuSKK8EIQDztNKGslKhy70skelJLkcO8a9rOaz8KG2SrxrEHX3tLSnHBUA4GP6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HEoAQRjK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HEoAQRjK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 220A3C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 08:50:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787215834;
	bh=KR/wqgTJptHHT0KK00lCza21sPgGsEIbB4N7hv4A4HQ=;
	h=To:Subject:From:Date:From;
	b=HEoAQRjKRcOmcZ/nDCJ0hfcVvaDdsIazyDCTBvr180PIsgeP+CCeelFegF1xiCEO+
	 Wgc45BfthZV7z8DKmy4XC6jGaCqv4LzJ5Xii9GbGIRNkl592PEVygCmePAtYOcoxHx
	 TAWe+c6Ng9doKMBbbUvn+HFubQgTT7iGE+mMy0v8FPAbcvqdo1KcJbYCBfVGV5iVM3
	 Y9rbycWBGsF+zr+VIdkSdZjvfTemyeftaJZkVO44+51v6I47UcOz5Uwijk47fCHG1s
	 4DqeMp4mTVloSYKMkB3xD+ceIQIpBZHOItT3ltugzC91sIbaIpHgXwFEg5g/mvb0df
	 RvsEVtws8Z/cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD7E4C5DF86
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178721583379.26064.7795936517669670362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45365557b5c4a93f03ab6b3a24d04d9a370a36437a4c1cec8ac8a196d1afa558
Date: Thu, 20 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787215833
