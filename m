Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAFF36D
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 00:38:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718066303; cv=none; b=sHzc3vnPCPkQAZVVNhl+59BZHYs1LRK7/ITlz09AduXKZHUrdyam/QbiDNvwtjPm9Y1dSwHWKslwhAl8BlQEDN38qc5MQStKmIhGB8JbDT1ks5AOWK8ZmlL2B39rJ9p9lty0AqQdQKBDpUhSQbs3tpAiMknz3n8ilS3wq3pmPp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718066303; c=relaxed/simple;
	bh=jsnuat2lj9Sc/nDymFEuJ0Murs4MimlhEYlmB+w/qZw=;
	h=To:Subject:From:Message-Id:Date; b=paCmZwuVU0AIii7gCfpgUuD2mevzG2oU5XF/a5QrSXuJhKfOvTQZ0YEK1saK73lAqMxhYv4veMp1ProEvXdBDcyvCagB1I7K3/mY3c1FW74GPt2dMaP8tcHY0GuzGq4woRMKNQv6xQnG/1BOderR6ulObEu2QyTK2Otx7GZHWk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BRjvQv9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BRjvQv9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A62C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 00:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718066302;
	bh=jsnuat2lj9Sc/nDymFEuJ0Murs4MimlhEYlmB+w/qZw=;
	h=To:Subject:From:Date:From;
	b=BRjvQv9L5bre01aLtajfu1QJXJbvSRWG6La+erWw0pMwd14cIEYqBsTdgjAVq54yv
	 pW1TEwIzT5b9D4OmglYWQLwK/oW9CGQmhn68hSgwMwL3gPrPypngoMb7o4ZwEAv/hO
	 zRrLDuNSm+Tybga6L1sM/TM892iHuy9t3kaD8cDkHmZsRn2RBVO2mU/e8c11/iHWrh
	 ZFWxa5k1TeQhVUoWPSnd+FCpZA6hhRA3mdIt9hGlx3iZj63PGAWgusGYQ8kXedjD65
	 Fvr/svoZZ2QRp5m1E2kCOsukZRK7B9l6CRgg0NUYeesV3VkRv+Auet25U7kmwl08Ay
	 Rf0XNmH+5YedQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C672DC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 00:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171806630278.3088.2082479527961229525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cde047a1da7484aa2ce94a7a70ca7300d7cac0be0e63391f6287f9b4c49a101
Date: Tue, 11 Jun 2024 00:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718066302
