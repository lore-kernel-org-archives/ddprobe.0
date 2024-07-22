Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CD5F1C6A8
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721681754; cv=none; b=XWQ2zRc1jXUBp4IKLM6K56KZxyxjtm1mbCgJKXmB/ZkxZ6CYA9RNMKbHJ/HWAbsAL8bwtWhokIrJfhm85dr8/5HCnR6vACUPwEpfSiKAz5SCLjLjzjUCEtxfeC/Sr47jVMoqJ75Tw9wbxrACC7mzxyeA6r43xRDGFh2n1RJr8A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721681754; c=relaxed/simple;
	bh=1cYGYwqmo1+UPVt1Lq9VuziO69APTptpiTEvwnfw5oo=;
	h=To:Subject:From:Message-Id:Date; b=dNmXr6LdBfQfWZ1geCCVDQicP/1UmkIKZySTIhJM6E5aqKkVWZomGjvYqtgZiJNIm3sg4yepXSE5KYuZ9sEhcI0W/rbdmLVsc2H3WCP10j6vkYlgFiK77DkUsiv/+L5zq1VsEVN4tNw2dUul5BYv6BGFsm5CEV+1yBWeptc1BoM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCtw/wbC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCtw/wbC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA9EAC4AF0A
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721681753;
	bh=1cYGYwqmo1+UPVt1Lq9VuziO69APTptpiTEvwnfw5oo=;
	h=To:Subject:From:Date:From;
	b=mCtw/wbC7qQaXRQcMvpggWm4bmZXHbbRyCJ+GCCCFGbhKzaUlU+ToS0z7Aoqp3nZg
	 +HjwnJPfQMMzZa9jzaHaO3eY20DoMquivqs200WrCkTvoL2saSzq8rdddijKuy1ihZ
	 cPpzjdhBZU5KcVByoKY/6Krzz4JyF2JT7Fsyn5GvTH2SsTwbp5Eb6Eyr9zDGQzhjMY
	 ZtIUABLEKVJaEUYgA6YqUR3CzyjaYof/OflCCou8Zu6ZE8GHFqEwChE9T2VPee9gqi
	 mQfliu7ObxgkTlZVqM2f+EsQjzWgRmhNdeXAKLGBSMPo03sAtFPVIr2mPdrcmWqBRl
	 6anwjLktiX+iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E4CC3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172168175361.12343.12319203588472763486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d1e3b2d19b359143824384cd8e907d719fe54b417daa62defbedc1a9f885961
Date: Mon, 22 Jul 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721681753
