Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3997019CD1B
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747945194; cv=none; b=XrHPbpGW1kYrWvxt+D5/VcLg4KULN70etYT8UVU3QrKn/AvLVQpdD3Ggq295ka7xaVfh5yfQrEkfS4ijTNwTYC2DVC/TbOHzm0DDH2tqYIwavEaTyXvmCNKTsj6/vk/XqMlu8fvBOOrBizW+SSJW5pZgMSuA733ihhCTbRE51L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747945194; c=relaxed/simple;
	bh=XqYekoMj6st1KZQ+eiVnvhtUN9VftH7JcEuZhD5xO0I=;
	h=To:Subject:From:Message-Id:Date; b=u3owKCD60i+7yGvIDRlt/UwKolrtt9Hd8RIe/tqfJrwyPNdrzgP84piVn7nnwHvZJRZ2JKeTr0dedzsvXwNbnxj4i3APDyha+KT4mJzFwF7m5yIoSaKIDGxKv2jqRc/5GR1yidUTskXOh9JINFC5gIzCPgEV+iSaredHbqubqP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SH/PnP8+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SH/PnP8+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2535C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747945193;
	bh=XqYekoMj6st1KZQ+eiVnvhtUN9VftH7JcEuZhD5xO0I=;
	h=To:Subject:From:Date:From;
	b=SH/PnP8+1PiCHCH3BN5Az5yD6n42I39uS+Pd0CdDnLxQh1NNKHRkOw+26SQ10z5i4
	 v/eVOHhOMw/zO2bwbo/JuEWo55sUfmJLZSHT2O3Am0uvnYXpXB8gwzA/MzkwxFIJuz
	 HkL7liy/iZTaiOdBVIWz3hlHKPq5eBCstdbgOyfXDmEWKbkk/6fE0BisVVBrzTvJZN
	 W6xtBNm8o7Zt7byR56qwNbwa1WRrsHOpyds2nrvblETvw1dWkrvH+fuZxadmPT0hXI
	 UWBe4fkG+JRues0EuP+DU9tgK9bm1ZWy6k6XWx8XW259Kc7Cu9opiflLizlv634tLs
	 vCREBFjzOw6jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F710C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174794519358.29620.647563184619735771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccaa5f57e10a2607b02e441352cfba8d40f45778f8cba21b45434137bb07d8e2
Date: Thu, 22 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747945193
