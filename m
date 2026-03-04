Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098C1303A26
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772630694; cv=none; b=cqBORYnxTh18nsuLiYEtfQ8L1i95tjxOqEaFFuBN1PKK7mbiXUkLYrmN2NJ38QHksVL693IBMZHJdgGkU8PkEQOO/ZRlc50e132AY070AKXaV1qZJ1dFBfO/t9kBfNcM+JWoBAki3qH7SnT4egHUuFdg/1apfskk52k6GgxXkRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772630694; c=relaxed/simple;
	bh=1QRszS8vsO4hvorLPW3ZCraTxdwTf6ptjjd4pWPKMW4=;
	h=To:Subject:From:Message-Id:Date; b=Or+kwPP9JK87qMyubDTpUTuKl+9A5cM2OE0hqy4OdTR4BtdpI5YGoKP+N+orzUBZZ/3kdWtpoMwgbL+Y7csinD17BvGTatZrmCb/dDc+J05ds7wYzmNiHR4N0QjEIIZch3JjQpkxDA1nH/F0R2Kckugv+/oUkMTBPUCsPjz2bdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AvCMLjsF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AvCMLjsF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0A44C2BCAF
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772630693;
	bh=1QRszS8vsO4hvorLPW3ZCraTxdwTf6ptjjd4pWPKMW4=;
	h=To:Subject:From:Date:From;
	b=AvCMLjsFDA7w0ky/F5Th4MZG5G29+gOAkp/tw8pf17ijzjiMIQFJmBc7bnJyD519B
	 oigzArQFUqaoYZgV+2tt26Esph2SEVl9VU1fBQcWv4/JQqHosRVnpv5LDMXWREC3iu
	 EaXYR6ssWFFapeacb93UJdWoiOE4gbRyfFr2qzDjiMQ6rOIS/kbTrEP8ID3DZ2PKTg
	 14eJJG1zg2gqlRpbm94aGVdF8ylCWphkaFpyIMw2QrS8oUYJaR79+kyUNDMc5TfmlB
	 032HVQ185FNvUGvhh1jaA9DPGjywXTL2x4br7gxuUH4zIHq9l5Hme3ZjkS5eQRy+ze
	 3O+vY261Rjj6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B079EF8FE1
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177263069362.30642.6457122615669975626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09d02a6a571a246d962aae492c6d38d41385c82b9be49c67a445c83096b9b1ed
Date: Wed, 04 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772630693
