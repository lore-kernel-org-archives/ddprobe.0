Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397EB2CA9
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749864594; cv=none; b=k0LUdQRKo1XzLsxTjNRXBLjx3M8VjC6aGT6GtUJQ5U5/2WfNWyr8ioBBXlP8woUPPoCSadvJBtyn/VHY9OzAtDbybqD1gEOOjbrqQ2/yLtsK6uboxsA8euCbLHHIi4n4dQOWcDReG+Q12nlq31jFd2dROZsKGIcs0PVNApdhHBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749864594; c=relaxed/simple;
	bh=2LVW04gO3Q1JBwQtt1GU09ZTL7/aO7x5vymH1ImXzJM=;
	h=To:Subject:From:Message-Id:Date; b=LFJNecKMF3BnZWAT6xEl/NVt+9hjWWc/m+KqnpdbHACO4ulOGZ6a7L2STNJ4fIDUlT7vLksJptGJYlNRv6l3GprZ6FAWohkqVziPEksgeTqkAzd49MXgeQ26hCRoeQt1EaMRSdS/VCXUAEBq6ZmObUP4qsLPZkG/x1A7RLVZx9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWYUiiWi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWYUiiWi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A850DC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749864593;
	bh=2LVW04gO3Q1JBwQtt1GU09ZTL7/aO7x5vymH1ImXzJM=;
	h=To:Subject:From:Date:From;
	b=SWYUiiWiTQpVtbHHkWglLfeM1qTmaQNwug/LhOVNyxcPFEDfTg2/VrW6jP22TJwXx
	 zzgv5n0uc0TmT5yPRffaYLZgcgcTQ1PzjfNPC3ly2I3/5tvXXQ2xRzq/Up3t3OsVSh
	 W47rddVleeMdpgn85OFOs2ZaZDNkcj33UDZD113pGvk1J3C3R5uY98s6v6LOaobYwh
	 ZfwEsYnv5q04p9cuF1BllyFyj0uzoJpqP/HLWc9isgIYlzhyaJ2LGOZcP8f6eqMM8X
	 cg8widlfXuEwwE5IBSjSYLGCFfe6R2LwV9q54fKji4fiW/LBx1XY0AK1DMKYRHeQ4J
	 AGNr8YW8TC8RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95070C71136
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174986459358.12164.11262231679550240331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a32d80fb06de3cfbb91eee19ea0cc4ade585842876d082633a78c47339ce1f4
Date: Sat, 14 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749864593
