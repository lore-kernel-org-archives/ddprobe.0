Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1310319F11B
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766586834; cv=none; b=TI/zjJK3KZsLrOt+ekv5y/xMIqmxozW8brt3yiNof05WQD378ZaN/t3fnjCpEpO9JO8BEMDJjD9/8u50KLrJegApcnD3YrZsanFZUirMzYv8Seb4qivDHW4KXWk3pJ3bUFccalLsgvT8p76Glk2FRQdpgvqBNqqObMrKhFOp5OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766586834; c=relaxed/simple;
	bh=cjAbk3RFojNtVKcXnhww7gsf9UAbGp8dL0b8BIpd8U0=;
	h=To:Subject:From:Message-Id:Date; b=D9tOe4a6wmLfIapNgWaEiI5aC5+8YQ1tizwWtaSi5xWTQ7uGTsCANr5oi1r+FyNi6rbckA7BBFXo2RHY7zcpsv0pOoldJSP+LcQxCp5xcgCpiK7qJN5dbPL7CwA8VVVI9Jl8SvvL2Vch9V/F3A7VEKSFMXXwbA+rNlx5UPAVSFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AZeiaAZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AZeiaAZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CC9C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766586833;
	bh=cjAbk3RFojNtVKcXnhww7gsf9UAbGp8dL0b8BIpd8U0=;
	h=To:Subject:From:Date:From;
	b=AZeiaAZ/7mvI+Oblrli7MYqHGei2ryycv2uhWFo0OtL/e+xbjTWzlmevACb9Njq6W
	 AV1d4im3+oUqDxBsnNFVoeMGvlrud9uL8a9Q1XUuc7Nyk+jDVwcCng0pcfzOJ7N+FX
	 R14xA/6P52NKTEOPpSAD5XaXhAyUx28unbx+MEGbmlwAMzJPtlWY902u+9xy2/srDp
	 yhWWw+q9to+NPGHBBJZ22+fcLcsanSBMLpmFQLcdNFKnzu52ozIEwKMGMhC2sIcNTb
	 jfP1tCBf9yu3ItXtyV0ZaLIpE3J5RfPeTiIzWoQ+0kWctq3d+L71LAkgKUBOTd46QH
	 ChS007a1RGFQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946C5E7545F
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176658683357.3397.9242340181658078285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9979fcb3fc7ed484eb3923ff452293e26c4b2172021e246aa30df137557b2f4
Date: Wed, 24 Dec 2025 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766586833
