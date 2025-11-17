Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA2326F2A6
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 23:21:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763421715; cv=none; b=pfgnMttEuJXd7qNUKiEM92N3u9Or9WlkEgDvsnPldX9buBw3Ul5s3Od9X92AcAPWEj8fqaK7rXW2TySLV8DSV++rvuD9CWsC+1M5xwdX5bOLgGF6ELLXkk5dMx6lCRjys9jX7ro0RLqeRV3ahCfYoUNVHrj4EFa0oEU9qVo6BkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763421715; c=relaxed/simple;
	bh=wNJtbE/xpUGptYTRydksjbN/LNBk2La45YHcwMpd+7o=;
	h=To:Subject:From:Message-Id:Date; b=AXS6CQ7cMRxzh+9TCVYeoilD7I/C2h7mHvq8xPEPTcHIdSeuCndlbsOzBsX5NFWNZ8XCKfjm4OP593k2VGd99CxZp6+SPXp0W7tWXGcXxh6Trmk9MOdQJjE7/O4Idh3b9ee70J64v8A8dHYGgeB8fLWFbfj0BNb5qSfExtuQBMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FljYP/Pf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FljYP/Pf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE6F1C2BCB1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 23:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763421714;
	bh=wNJtbE/xpUGptYTRydksjbN/LNBk2La45YHcwMpd+7o=;
	h=To:Subject:From:Date:From;
	b=FljYP/PfT6KeTl16//ao9jG4O5tacUTYNdBmmhA+0wmwfKJJTfhLLxd7M0cnGX3/a
	 jwPoJ8Ht2XDiXSS0kHPGGcKrZwz/MrI5OIis6dsUP8KCINJbmY1EQupN5kUm89Dgrj
	 9Za7LrZBBRjEHQ05NGjERdbpeXUMEAuV5Gi16r9vL+S3pYkdIbGkIYtxqR4FwVDGXo
	 2dA6/w6WLLavx0oMIHEeAghG86I0vwVvfFLvOP2L+3R1j8Wkbh9zNIrsI0k5Rp/d4h
	 AbrcJfJ9d3wM4QBBTozYFIPRc70XLPpGsyepdNWwGKau8bjCLhGM6/5NHO+l/U24kc
	 CKVH8MvcZ0p7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E06CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 23:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176342171358.21572.13925191115065103485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1908a04747eb10181159cf3eeb24a618066d4ecbd6d9fbe50a7cf6d735d0a696
Date: Mon, 17 Nov 2025 23:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763421713
