Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3BBF2749D5
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 03:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765076573; cv=none; b=B6cJdMfJW9LG4unL9BaOqLw9x8PkEjDzKhB6xhxILeGw1oUJ3emOnT8Jqq95SMnXNnVMyALzh4RlEvSftgpFV0RjNFaekzPHRzmUQuRBRTMVaEXhMGLiRzkNXw0Jz0VwRKEUUGQISIawL3Fy/8yoHywRIUYoR3Szl8r7YMd0zWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765076573; c=relaxed/simple;
	bh=prMyVk0ujf3fUh62LRpSp1YifG0KmNmCj3yIb6wWCbE=;
	h=To:Subject:From:Message-Id:Date; b=IitR1y0xNbbciobN1STr9c63XQSgniG76n7d/+/DFfJZlcjIGmANptYvsM60lRLjJ7YJRsmILPY24OsFVlwPTmUpxC2y872oCuFdifVAgfVlmyu64/309lWCPuSdlaXdq0F9w+Q/+nT4kxJeBAGeW68Q5Kureiv/vzrOxMOZW5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FU5m9077; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FU5m9077"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B67C16AAE
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 03:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765076573;
	bh=prMyVk0ujf3fUh62LRpSp1YifG0KmNmCj3yIb6wWCbE=;
	h=To:Subject:From:Date:From;
	b=FU5m9077tk7xauEwUR3vdt+/cJpkaIChOGXAPv4cWIurQSVlzzlN0uxtSlN2O3QJd
	 QZr5xReLEms5cMcbQ3PDQxeg1J8eizd6gARcIHeeEA8/mA3Jy/bNaJ4X18q1ULg8le
	 iSkF5apKLLga6ek6fu0+/P6UMXtALdt4AyHJvR3VnjiPoh0hFPfw7bek/BBec5BQBI
	 tZeibR8Pa9F8FtVqLyt+6naomE6YYhRY4/e1vinGtSl1Kvi1HK+KO+CYWKCyjkFbv5
	 h3ahzAiG6+ox5FUUoa2VcgPGSLcsI2wiIPmL7ICmIbhz1MDw3ArFm8ss9ltzx2OSnX
	 XfW/bVlJCMZ0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A29D3B7E1
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 03:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176507657359.21735.7824804901575400369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07d15ab5e3ec4e6e95546b02d207ae629553b5dad41b9cf33acaa7ba65ef7310
Date: Sun, 07 Dec 2025 03:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765076573
