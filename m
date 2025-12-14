Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204842772D
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 08:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765701174; cv=none; b=CjQ+fWMQ0NVkOioY52fIfSFQ2WClcqm8oZw2K3mCrjHz5HjR6tJZstK7DbcFSbPAgOkg6L7r0oY4EIJF9+jq4AdR9Tu+naCEKc0gFlpoMYMz4AEdyflfVSshzIiQFAMGJlxcYboxLslkII3agZmCpwo1IdsoulodRJ0G1IjbHHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765701174; c=relaxed/simple;
	bh=jXt+x4BzUTHrivkCHoNVkxIO5/TEQ0plTq5ziyBy+zQ=;
	h=To:Subject:From:Message-Id:Date; b=fPMe/usWB+dFm7gKheW/XDJrdcUM0SAqHFDZ5Wfx7nxa3CNBTaDxSj8zNFuscaKLpQY1ZtKhPVBWTQGxDwlPXirk0eM+SvEVhQmwNKlhQ0pAvBELI4UfQzl64rq0aVLl8Gbnns41hIhHsQXaxfRIsS9pc0lv9Yll7zFjJ1VhZEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uz7AtrEq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uz7AtrEq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63E9C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 08:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765701173;
	bh=jXt+x4BzUTHrivkCHoNVkxIO5/TEQ0plTq5ziyBy+zQ=;
	h=To:Subject:From:Date:From;
	b=uz7AtrEqUMfLdbnCtPK9GGGL+mosfaI/sp8Xwf71eYa4X51Pad69TzcJQrgZzMELs
	 JpfHLHjCAKtVW1n7m9Q3BchNLPinclm0FGKi6hg/BcQ6i/MM/goNZrNFRdLfrjOgNF
	 3sgScmUtOsrQrJe4kicL9A+3ScPP/aKxWeGxXryLgL0OXSiVSiX4JYw0ybi6mr9u58
	 zQELK1DySZ7dROi7B/8tkyYi2m+Gwgg87s47Psdvly3l/QieeH2XrhaaT3TSH6YHrH
	 QJloAZegRqv3duPFR9tG1lQh+8HRiQaOJu2HQy6o8vYlhq1js3j+jrFkJADQQ0MEw8
	 9xe2dvV9vSang==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B68D3E787
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 08:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176570117358.30116.18211941828921041865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35bd5bc13a80bd8cf0c68bf77589bdb27850e00be22eeeb9771f33c7b51617d2
Date: Sun, 14 Dec 2025 08:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765701173
