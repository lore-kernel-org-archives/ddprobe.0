Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE17C199EAC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 14:57:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717772243; cv=none; b=NG1Opf+NRlamQ7aHKDNdueAYFUK2kyJVkqXIdHYj8mJFkSFgthLFoTSQfUSDUXWyOwH08z7rgT4KWc29M7XZG8HxzmcHN8SkX5VXlgy60U9kTo+aJrGdqeKxRk5sRXwiGLaXzfRtFPnumwVZ0f8FqIRM6KyLchIGHgTPPhoJbwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717772243; c=relaxed/simple;
	bh=07w/7Y/Xbrw7ctUyx1Gj5fcI/DOB+zgEgFUHBTb41yU=;
	h=To:Subject:From:Message-Id:Date; b=fUqZboT8G5pK2Zh56bmm7HEuW4Zq7AOXX1dn9PiUwoN8A+UV6/Zje+oEqujFg72HL3HfsEG+Q9Y88oaw1tGjOSh4hcpNDBNWeSghkPc3SABmRqd7IH33NdiaEL7StyNBfnTcTAh1WSiOCkogaLhX0iZergamNNcA6rSwgO3Dymo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J57weoCv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J57weoCv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAABC2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 14:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717772242;
	bh=07w/7Y/Xbrw7ctUyx1Gj5fcI/DOB+zgEgFUHBTb41yU=;
	h=To:Subject:From:Date:From;
	b=J57weoCv6Phxa6g4PCsXixi3JhRjyrvfTyiiAHQA0uh0FWX4vkd5/rsLcid0mi4Kp
	 9Opk5HzULh+2ySjIbkD68/WiEKEC28Rkx2qIobrUjYjC1+0qDdd5tlSRuM65X21J3C
	 UBR503ePQI7pwl1/l/jba5SQ9bgMd1H/FQjIbR1VLyqXJ4dtr/Y2ab6V0q3zwTmn3T
	 6lEbshWVJDkGsXSxaL3JBCyWKt52nj8UTi8mBUvdb7eClEzmyZTx7zmkvFo8VIfoKn
	 Fc0mHjwAOb5+bEHlEKs7D9Pnol59tiCeuicnz5xZnYL2r17TnifPJZZCzE3Tiw7LKD
	 wUvZ8bO2cJ2KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFDF0C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 14:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171777224277.10843.14509205550673242252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60fc28479a6c473a0d2276480d98bfbbeb2d63d3043fef6cd6e55d32caa9ad6
Date: Fri, 07 Jun 2024 14:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717772242
