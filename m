Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CED9610D
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751774394; cv=none; b=dTzZE+zUiIXQLdU/s7xehsafuZBj/Brbzc9XTEHRlm5VdlIt7jTb0/caM9T9MmxEvpvQ3B00EADL1VfLMbNmHS5+7py0C5S4aR4HvE01flWL1M0EKNJxd7OsGerqtGDSp93UtcGn318ZsHmDNlWjT3QnyOyxu0fLYJbXiPayYxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751774394; c=relaxed/simple;
	bh=sfh8hzjPabxJMWVEE0Oa/sRskfp6r81KH1XBCqp/404=;
	h=To:Subject:From:Message-Id:Date; b=d9MorjIaBQ50yu4GHLkrqdvRvLvHDoEHllCgAe2Te1uI7qO3DBpkn4d6C6Z63Te3BtDTL79VaTzkcrjOhhjEfvJKD2I5BzVFIRpeKfphJVk7sEAsKH7tbUW5qWLMGf6Q49DtZwyDe9DWqig4n8mwrRAAq2/hZ/l+WjCo4uP5iDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEOPL60l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEOPL60l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36F4C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751774393;
	bh=sfh8hzjPabxJMWVEE0Oa/sRskfp6r81KH1XBCqp/404=;
	h=To:Subject:From:Date:From;
	b=XEOPL60lOGUdeh7/c3dzeSRMTOEpfX6qp9DjRcgiHrJsONHbDxVJmaqmX0zj765IG
	 gqva/DUsdITRBjQBiwQ7xTy3OGyG2S3q/IjBVR9tiNmPueZFxutn0yZnib6DCSffEx
	 tW0hjpDIQZvWLZMNyYSpP9Cudx7Jiuho9Z+IdC9zuidV+BiZ2O57ktdqzj7w0g9u7C
	 m7JspSfNN1a/AosZ9HqembQ2+OrXQMFy5vlX84lDmT14R0FSpT61WPEAd+MQZGqMAM
	 StAOqtQxJLnbsaifb3lw2jUjlEIsa8IMFAbTsF8X9Gw4FbSQjywaOVNHlQfl6eBtBD
	 ZB0MmUGXipuOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ECCC83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175177439357.11232.12569734097358027310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 347d1145334052207f65bf0223508e07b5b6446d80594b15e5f7e0d9fbef46d2
Date: Sun, 06 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751774393
