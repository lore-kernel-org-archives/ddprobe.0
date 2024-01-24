Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1A66134740
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706129297; cv=none; b=WLK16VMJ5lhMb6sj4Gn3AMaKYfJdV9kyFAn2xYCwPnmlwWIeZoNP2Ncm6LnYBLInkmyhXslZBMB6orX7KTTlqYP08xhBC4F7a5FB3vrT+M7JTzmi0kKDmQaW/JYetPRoJpYKh+Ziwk5Xxz+nRaN6svFDEoitFlBbWLaFS2BZwfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706129297; c=relaxed/simple;
	bh=Z0t8LQqToWKw5OHVbLTRhj6S7WeuPTyAOnfqhERY/vs=;
	h=To:Subject:From:Message-Id:Date; b=i/r79ngpPDa7wlzLsfFtAhefAOAeFkO++pafr2qSY6PZPgrHaCjvPa6Q9Ys+CS5wkETWjGk0vFJuKo/9fkSKCN5QINvej1RCUm1pVcrGTrE87n6WC8GZHRppxa7inAFxrQ2bx/jxPCVVll2qDR94qLd57tvMeMP/qVS9RPj+FFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJanOYtk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VJanOYtk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72E81C433F1
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706129296;
	bh=Z0t8LQqToWKw5OHVbLTRhj6S7WeuPTyAOnfqhERY/vs=;
	h=To:Subject:From:Date:From;
	b=VJanOYtkGWn/Jkt9XNkxb1r/sT5Nyr0FhFoLFzkR5wyMR/X2DruHXy7hEadaJLvxo
	 u7PHtADBwRy5sqCRIcdxQcxvFc8z4zEHoIOzkE6bcAYvDNpS0AI5JktAWRygGAJTkk
	 jWXApFSiq0i4Tn3sk/IH6SyyTMRj5GOSNBOQgzpKMVThJ/HpGQJSoHyH+Y8Oh7cpRD
	 0UmsbxvWoIGhJ+zveYG2hpEoYHrpBSrqO621CkTh82AxmCvezwERdpwnZVxvaisUi8
	 fPSWpsuD09OZ1BqH4uNm1+qnPFc7Oc+bb4jTIxsdni3bFTUcXkBkTGFP2haCClx836
	 viu028vfyuSfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A13AC46CD2
	for <ddprobe@lists.linux.dev>; Wed, 24 Jan 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170612929636.17777.3588454353409403264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e4fc76bbe8d7907a91ee5ba0c53eff83bb09cd3101d7764434ee71da8efabc
Date: Wed, 24 Jan 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706129296
