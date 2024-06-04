Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 668AC53BE
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 02:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717467923; cv=none; b=gAdvBHSnfH5FgKKjKoVVWNaPKovGulnBbOYK/a0nqVLqkxlFP/ABc1VkKETXQmrZ+ET0MF8Y/Cn1lOSqLRvQ1OlJFlDSG/QcJXGueCCZWPj3h8UPSRaRe4GR1aUMZE/shr8A537YuqgLydiqS4/6HneCrcuZ942CBAp/SbZQmBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717467923; c=relaxed/simple;
	bh=I0utlsDwhj/96QHdgHpeeBXs1K3baw9QxpzAR6STXG4=;
	h=To:Subject:From:Message-Id:Date; b=atl3iOFv1qPWwr3VwGIFGlia/AZdNnHHcUsHDQNV0fHbsw3gQg0WOrEwh4jpJYM4EbHExKQB81AfrhuobUAhBsGk6M1uAbr/ZgA4vjCN7FGanXOpR9XVcqg8ONnPvipmrEqDbWhMfoMBk+S7t1Mvv+s/4351RZsUeDI4/KbaYgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hhIr9kCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hhIr9kCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC08AC2BD10
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 02:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717467923;
	bh=I0utlsDwhj/96QHdgHpeeBXs1K3baw9QxpzAR6STXG4=;
	h=To:Subject:From:Date:From;
	b=hhIr9kCqfS6Wh5m0RMDQWt8abc1YCYIldRVE6VGCM+raN4gL0D5hHboFUsyJJYZpD
	 Hf8spRr9Q+s6tOWI040R5cJdhlobELnswaY6PfF/MGc2ShW9nVxo8Ejo/Euj+ji57E
	 77iW+lOwGVz+tLsuuCCxiAZYnJuFohsWZazglN1lAOyJpBw2cjnARzTbR/KPlwQw+v
	 tc99HHDzbzFTy83YfjRQznq4ZG3j/CY8ycKDGSo5W+OSoTN3exubxjvbSiOZ14LJqo
	 ZN0q96i840oFwEIdGsB5R9o6r8PDFHgxV5DWchtp30VcjJTWuW89TF6K9UJJaDN/YX
	 LyqqHUhKctPKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D129DC25B75
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 02:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171746792284.29645.16311322239827433182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11a5ceb9c8cd43f86cfebd05ab1defa829607147be25b66ebadfe559704cdd9f
Date: Tue, 04 Jun 2024 02:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717467922
