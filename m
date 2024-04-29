Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB537F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 01:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714354343; cv=none; b=hOn+pVezQpAyVKXQbUAtYC09GD0GV/XDHysu2vWufzogFAijXol/RGbzqpPNQFoKVgreY+FXEGdBg2DXeYiF1Itbge3DwZSMBzt0KUukxEV74d2Vma0nd9k2UtrVuE0lH+4rgsgpO6KSq3MZQ42JpEcUwmh5NXveRCMd26xKLlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714354343; c=relaxed/simple;
	bh=kVzKAkBbg5M2CBALkUNfqcnc2SR4IJ+SH6mXUSL22O0=;
	h=To:Subject:From:Message-Id:Date; b=ONyk6KcuwJfo/JTEB63NDA5yAffN7P9Eo6YUCetBWUC7Pb6kJoSnxGJNzBM6xnaQpsuCsLhywe98CR+4bd42cCweZsJm0ovqMLVmqUs9E40rVAW3YbUc1R3SnnEaes8DRRTqVM0fckPhTQcliq8gKWnL36EEPBd3cX1IR9Bgzls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLf0KoNq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLf0KoNq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5234C113CC
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 01:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714354342;
	bh=kVzKAkBbg5M2CBALkUNfqcnc2SR4IJ+SH6mXUSL22O0=;
	h=To:Subject:From:Date:From;
	b=QLf0KoNqftKVgKKyP3EEvaDeuSzefccQ89eeNI7vj6iQfqwMRJjeP/r751XvajwcU
	 89VOyNLCdvgIvdGmh6aWoLwtbV8UHl1EBN9YXWbbTIyPexGVAXUCm4NdK2E39hZ1jj
	 WJiuls4qtIttoSS2PJjLYDOeYo2IAJkwEkAACHqvDxa1/GdrWpnmrTintit1oRhoS9
	 GXJyH6JPboVveRaZGzMdB5swbIO+DVAhIEQLT+1V99/F/POG+idEgb9qXMe2euGv7p
	 l+Icu584qYi/PFEqsy7gM6wG7pVPYr5uLWaSp/SOiqc4lRtSdzBFCpQS1vF3CoIpVh
	 q+1wd112qYrwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C24F7C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 01:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171435434276.24473.18374804713921206647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 094f7618f47c123dbf8526c2c5231aaf6d5ef1b55a210ef9a43f7129f9686e31
Date: Mon, 29 Apr 2024 01:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714354342
