Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB175B5B6
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705438697; cv=none; b=JYXXJsUJXX7Sv43vtXZPZEwuKmkf5mMkDh2fOs1GUMGJWm5FsNIELYmB7wgsvVxbinJ2ahRFNpETHbXdngNm5f23BNuVhpoAq4Ir2s/cT0I35dqyzvr7Y4gpg072IhKVtLhzVpBIH/parW8Dm8sNq2bw55y85TPjnZOm0NQs5Dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705438697; c=relaxed/simple;
	bh=Udf94hRNW2sjwyV/OiLHwQ0/UhvA0fwbhciwnHeeMqI=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=aEqyjd6RD3z0CV/zeSgK9LBME63dRuQGbquXnBZaQ4lwIUIZRjQga0BpTZNRzlmwro+Q0vtJa458qYkna/HnUidNXwTETok5EpnlBtfoSpLVd8Wcn9ULtarXyNQjLvlVoyqkh6rNLmEkDSeHgrNZgjHCkjmgxspS92BIyLZKUQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XgrUlUGG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XgrUlUGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C891C433F1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705438696;
	bh=Udf94hRNW2sjwyV/OiLHwQ0/UhvA0fwbhciwnHeeMqI=;
	h=To:Subject:From:Date:From;
	b=XgrUlUGG+w5SXiUJ1v2Dn7lzYyeyOhrFVzXOZAZ7x9n5BFqjXrWp5aw7BCX+TSAMM
	 Y+QxnmQ9WBFMjk1nvVaI2HJrIQcSEbV87D+pPTT5SBC2TOfr25MYQ07UGwtK76TVK0
	 l4VbJtbhLNiqzOVZX6GnfAqBLAbdmhnOogRt0NpGYrg7GVZlpzbp0MP4f1C5EI3fgY
	 LgVZWiEb1RUZTXfBRTpNIJvsST/gHCkV8en7Qri+yPAim6OnF/HiPAiSfrGdqbczNj
	 JAUWrMBMMMMImQYrExgbV5R7aXVNthdCUj0mYVgVNWUHfeC3IutEfuGho9MbeOiF7j
	 dzUYmbEHCA6Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EFAEC47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170543869638.10214.1944347983410940557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c16a04ea95cdf02498ff6367cc3743cc8a8a01dbe90dd4db527481ed733c7cf0
Date: Tue, 16 Jan 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705438696
