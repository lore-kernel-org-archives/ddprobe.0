Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F573DBB6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737666954; cv=none; b=COBLp8Z1NtMrybleLqucWuERqfP+EsVIcb5GAJaYGQrjcRzMckQKPuXpXAs51SEPKqgYVM0MsNeVkHoOhiFGxtXGFQ7tmaBxLJ9BmdYoHDzmuVu5uP8LXZxju7UPFO+xZaZSB8/N9oKtb0It9w4LO2trbtFJgmlEeoRYiKbZb8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737666954; c=relaxed/simple;
	bh=pqfrQwTHZzX+btmzHrsRNdCSkgYayQGGioG3Q8ZuehQ=;
	h=To:Subject:From:Message-Id:Date; b=i2MYtpcQcjKKx+UQ7YctUkDtgjiAScTUI6yX70yHUCTufHQWj/iKqQp81pQ+G2LqT/mW7oY+FZoutev0lWukMEYp59Wxfwm+UTKImiEIYdWBGfXtKJBpJCQJUpK2pbPd5qF2dpAZ2WO4KRLSYM3J1iHdQMlrf0CRgKG7+5IXi2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fmW4dO/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fmW4dO/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A66C4CED3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737666953;
	bh=pqfrQwTHZzX+btmzHrsRNdCSkgYayQGGioG3Q8ZuehQ=;
	h=To:Subject:From:Date:From;
	b=fmW4dO/5eCysOaVj4Uc9cgbKm6RNS2tmmwg8oJ5BOg3ghFRv0SECh2vw0XR9n++IX
	 I2/YBNQttyS0edEXLi5lgfHQa7fkvgBI+ElBLuzf7jUO4GLPxRztiwz1hy6Hsarlxp
	 KYuDPwhQLSDRGD/x3hTtvRnBhEaPlkfysYq7CCCJLNvgg2tu3E0y4kkpH0vD9uli8G
	 1jGKmpTusCagFDUu9DSe2//ltcH5bpm6i/iHU05ZXUQw9GoJlKqtuDoO3N2Aig5Reh
	 gn5WJf/L1j1ce+TqHl1whXFmiYzfE2yH+PTaPNX3EZrWe9SERJndmDdee8NUz7oM5l
	 w46Az1Jq0nizQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B29C02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173766695358.14984.13283052688840701271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d81036575f5fbbd8bcc905787152c99e9b8d8a2c38584d24a6b0b688fb574ee
Date: Thu, 23 Jan 2025 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737666953
