Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231C81514FB
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732022754; cv=none; b=XYJmAmzSOobt4aEGJk+LO+PIzlWdoCEJ3pQbm+FLdD1kjVUh8iYM+x2F8kPMeLlTLyPXzufpibhZAu62DwUVCfgL246F/3psczzio60JkGV3WexRF84mebIk0Z/Zj+iZ3y43EYanEPrLKpM9sbVzvOzg9+/4mhmaJiuAtwv18Xw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732022754; c=relaxed/simple;
	bh=UJ7ah2HDonMLH4QceiWXgrMnsb0TbXDhqLA/gHkIpRw=;
	h=To:Subject:From:Message-Id:Date; b=JzbCx0u68hxZGGctIq2GvetD0jSbECRaikzI+MKlshHVtr77ArfVetF23knWydghFoxHM4GeP5BDs1xfgcx+T9PX7CvrY55o3Xv4B9xTYKA5+WJFaUVKEgIRs/kcmNabyAo9Fyd+nWe/7sp6xs7EpTNbZL+RFtE42k1cH/XWXz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npZHskXq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npZHskXq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69A1C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732022753;
	bh=UJ7ah2HDonMLH4QceiWXgrMnsb0TbXDhqLA/gHkIpRw=;
	h=To:Subject:From:Date:From;
	b=npZHskXqZgt+sq0txg4V4KaEoimyBXlTb/09PUsR2vnkdUdlX6iGd4RIpmXeSL+u5
	 98Wt49hMmYBR/THuGWZzFVNZAkWm7Pmc8+NjSaO0lZF7mPG5Tfb2QDu+hOKFnhfvXo
	 g9UaGZ0o05znuqDYPeOPkhjfKg1HF4xAHGJKAR81ITlXxi2lhcEl+lTs78xEA/mDTC
	 cOnQnSbEAhCigZrJSfuI3Sw3y5Hv04fzP6Wc+W5Me4Yjpd3SCMkzuO4qlCgbSG7BfW
	 V+S8LNRMCcFZQ2k7ybB4n7Po4GM4MxWu5vyB0v4fdPboVHMC0GWn5mMSQProxpLkt7
	 F/PlPIcceC7fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95310D4415D
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173202275360.2165.8326211885081182819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f57cb35e772045b28d539dba4324e406a0b878beccd7f63b220e020cc142b025
Date: Tue, 19 Nov 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732022753
