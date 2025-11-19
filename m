Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250691514E4
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 22:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763592114; cv=none; b=iPSdUwxnDxH+VXHpioHSwYObSAyWR/OlG0gs+s+kmbrk46IazHh1NFqyUf+IFEhYp03OTevATp0L3LClNy+aDHot6ekGyugswZ0EI7v0IMR+e7LuT23ROfvFWr4uNX4vDryM5lOIwVCE5iwh2FF02IrvUzfZiDQcmsGHOCIJHSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763592114; c=relaxed/simple;
	bh=N+eA/tAtVdLk7KbjhZhX7h6svpwurntISsRLILo3JJo=;
	h=To:Subject:From:Message-Id:Date; b=NiTY7yynFnHnwwIcopDNgV9+6BAl/DdGSGDLl24jGph/HLTvknOlTEEWBxnmNbDRPGym7SWJIZQNfK0XApl4AoGKo4FX/6O+HLEM/x+iauB48jpLAc0QXv08sWsVcumDfEIfPm+rZwkRWtT9tDGU3QGYuEtwllzlZ6NtzcT/iLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwZ3Aou4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwZ3Aou4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D18C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 22:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763592113;
	bh=N+eA/tAtVdLk7KbjhZhX7h6svpwurntISsRLILo3JJo=;
	h=To:Subject:From:Date:From;
	b=FwZ3Aou4tA6EBGbsbCpIdCJ/VAW0PwKzsMMQthYhvqEUixhqTc+bBA7aJ70YdDq0O
	 yhyz0lEJvHvTofxl28Z3Zw9tUyyywTKmp4zK//5dPjXLTWBhhuxEb9Cmf3JK7Zewhl
	 VNTEnQxSVk5Ip2wtdEW38JByYCDMAsEJmiyxZYxCqYjD0fpvbm/hSGJ+DLfTd33z6B
	 sQUmA64bIQ387PmR+udBoNC1UJ7XIse0Uy8FF7ufjBgIbJCIDbPWUjxI86LRNXJ3Ew
	 Lj4gOCCszHUKK1y1ym22a83kb+dWDtFuWdcoCdvB5xh1IUSd/9tos5vu2LptqOba/g
	 auY69bhbFvOkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FF2CF6488
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 22:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176359211359.22196.10802991782962739329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5afaf73f86460ca867bc0cffbda4f7ab7dc8e0f86f645f91cd63dc09ae57adc
Date: Wed, 19 Nov 2025 22:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763592113
