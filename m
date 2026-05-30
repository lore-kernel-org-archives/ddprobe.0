Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C14F280A56
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 22:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780181674; cv=none; b=OL38qrCUbDhOfOT8xLA3KB20z853uDYK7Vk+33jTaxFx3IDd6//rDi3+SKsff3pVf03CSGcY6n74tyFpO9ozl1vPI7LlKeJekpYnvgdu6Hm+LKSWl7g5oYjL4hEYnROrP3kHiFjPrrQ4kjGeI5kSrme2qE0r5/BE9ZitzQJEzAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780181674; c=relaxed/simple;
	bh=AveFjt6AAugqTPH85Q3wuiyoNkpAtvdD2plE2gcgUtY=;
	h=To:Subject:From:Message-Id:Date; b=sKdmmA7ap3lEM4qtV5ZrnZ3ri1xORikJhpeLFwjl3q06VZwnutf1iH/Mo1hsg/8jQRxdpmAw45iKe6Sc76gWfjzqysorBbVz0JumYq1KpSahVKO5W3o66KknWJW9o6+VRNr9LhBriidoqycsJ666R62NBd6Yy6P5/xpz9nfmwNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9BbpxsM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9BbpxsM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C700CC19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 22:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780181673;
	bh=AveFjt6AAugqTPH85Q3wuiyoNkpAtvdD2plE2gcgUtY=;
	h=To:Subject:From:Date:From;
	b=N9BbpxsML8j7sREgGKZOBa0PWL5qv/DBiPyg08Xf3a/G7bU7gWr/otQIXu3Gbvh9l
	 6fb6irB2jw1a5Pry7n+WmmdJLRdnTErj4cARKzE8758C/XDyD6aUjR5kd2TBbc6Kmy
	 gh/cBMpW9lF7nXPqzciaOYMIu4nFGQ3HQUnGhjRThNIEIgjLZ5WOcv8sqcTOv935QH
	 RCRmzw/JZqikXXnDn8e2ltb4HYuvZjc7isiwzsRMvcytRsNF8ADZVpk+huj5Jz40bc
	 Iu1lul4STfjad19UwwjH2nZ13P5G40rdtCxvmns9ZJXqXpSEIhvO9/s7rtE+58gqTe
	 LohJ9c9eUI7ZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEBCFCD4F54
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 22:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178018167368.12917.9794545097676884510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edc50137346c0466ab12b8ce5dc7c00fee838cff6b5ff93ecf1450428b53cf51
Date: Sat, 30 May 2026 22:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780181673
