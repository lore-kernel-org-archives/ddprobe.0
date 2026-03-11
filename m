Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295503B9D90
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773218094; cv=none; b=s/O0c9dY50uZTX6kAQEBZlMmgmLzQgbrNOESOA7+tMPSy0AP6OFI7I2e1qAKWTV7RWNHsKKKBZ66B4uSbFZEeUCpvz+RJGpEtadVrcvxLOPeFkZ9kETAd+7l/nZ+21le6Bpxp2Ita2/n/CRcWiZSJkl2PqQhjw7J3HKLqUTWems=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773218094; c=relaxed/simple;
	bh=C0ThrKD+5L4+ktWhYR3ZKQtjuoV7RDhpNqiJwZT/TxY=;
	h=To:Subject:From:Message-Id:Date; b=MjbqtPMqR5dQwpDon69b+ETdUSrWHGbddVoYixVuUj8M9rsG1U+nZ1j4v3LvaOLIf0z4keP5kCLiZN3uc7fERyuZRmSGQgIUcqG17uvNivXu0W2CD1YP+OUP0qSOgE3JbK139+stowqu70dA+qDbg/bvI7UIBzkxbl9Aa/MgzMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhbVH6+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhbVH6+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E70FC2BC86
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773218093;
	bh=C0ThrKD+5L4+ktWhYR3ZKQtjuoV7RDhpNqiJwZT/TxY=;
	h=To:Subject:From:Date:From;
	b=FhbVH6+cd27Amc82ru1y9MUBMLKqMxSUNixAoFQ91TMT3NSd0Wdwmi+HpPb3qyIYQ
	 6exZuk/C6Rq0cHbrp+jp0nisntgwNC1w0Arqk01QxLK5wfNNrhRocv0SOCAIL9V2nT
	 PW3eHDabOaW7MGAo5nwO59pVBrwkPx2goJOkuhOLql4caVfHWpg3GdByy/4q+g+NiA
	 jpX+oK9jzViZzSQqN/rKllYuMZPZnC+pntqxT2oCDta0Ujldg6yA09wTbRbbZVIUHC
	 +IH5Bsl6vd5ejAOTxYT4fYt8jUbARLwt2J89su30f8tW4ztNCSpIzTSCXEmUWf59Ri
	 YGVpRieHRzbpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F92FFD064E
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177321809358.11683.15533457406172699988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8da6db26f320d491d2a369266c0e1456384bf91d4e1fa6346a0cfd0678eb2cc3
Date: Wed, 11 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773218093
