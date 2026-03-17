Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172D23F87F5
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773774294; cv=none; b=CnES3eBRwnpCY2OElCYu+qJbMwRRXx6p8AKSXxajj9H0aYmCn82ECAku1S0RJKAli7vbcWxj0VJXByAJhmjqas5C1Oo7oDL77I9HOHWmtfHbXaqVESLgnbol/wLpRo0rC+SCu4II2OECwpKsZ1kBQQkyvWgte1qCymHT517LqsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773774294; c=relaxed/simple;
	bh=9WGM3WSev6/aSzYWqpV6dXlv2WadZtFwiDLNvRl9Qno=;
	h=To:Subject:From:Message-Id:Date; b=VmpetlAYdKhjeX3dG2op8CUFTUYBQEkpweSd9N/QimVs7Ce7JrOiQXbQolDBLsGPdHg2o6Q+YbnnzaQ/QYwHNWPrBema4/bmkr73VE2RvrrzDCkcysMtGRUBhE7jtOtE4llY/xRWXJewrV2V74HgvoyCtNAdg0Ujq3CVo/jfPwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z54vQQzA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z54vQQzA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A542AC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773774293;
	bh=9WGM3WSev6/aSzYWqpV6dXlv2WadZtFwiDLNvRl9Qno=;
	h=To:Subject:From:Date:From;
	b=Z54vQQzA1jpqYlmMTHURqXSt8zPmC/2q6xvVfwRTVpBOATxrxY6Edo2faUrKybjgK
	 9Fex39tI9+ChQaMNOjWyWlGqcdl6YD56JX5NWuuttwsqf+eSWDZT5ggk6M2JwsmByK
	 3ANBnJ4/w9hP4JtrRR6g6wlmEASCRMBy+NefK4X+hpmnkSvjD40R1Z/vCiDQMkZTtP
	 FjBVgSn7+Ffs59DeqmHpFbbMir5cjJ4nZrxNdS2iR9mx8PkDoeuOQLeKni5Yiz/rcj
	 DSXBVX7k7aK7qvPED/lsx7qBUvJhSdKiSDxtJpRo9Fby9fEM3dthE3r4GzAb5Bz0KU
	 +0Zv8gIexYIDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9478AFEDA0E
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177377429359.1112.4318935091833277311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f69667624cb80e509bcd13d4d47aa50e12b8e0b5e7a8e0892d10747d1c3f4cf
Date: Tue, 17 Mar 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773774293
