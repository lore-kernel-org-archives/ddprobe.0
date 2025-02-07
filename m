Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D86D1DF972
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738929354; cv=none; b=E3VZCfAskMFFBop5rT4nHtmpM3hWc05IeMl5rCwF92N5dlDDFsSWxBAp7CCkVIcOP2tkwFOw8G+T0Z13OR818zmP+4vzCqHDpnNm2awwQb8lbnpOn6dCLy/RjBVTc+/7ZYh76k9SVNoEFXvJkmO3GmJp53s1qrw+z5P4Hywkjkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738929354; c=relaxed/simple;
	bh=rTd7iyHSnOOXZXkLhAnn7gcCl18ayUMb/aqK50HDIC0=;
	h=To:Subject:From:Message-Id:Date; b=NfOroDTNF9s77A7A7MU+9K3LBisFT25F61cABn2Sz27StSGC32VGYPcrmKm4md1o2qfjg1hDjgSKKraacFZDSsOpfcj2xqIpbLegLJygzZK41RwwCT6aNQ6MmbS4tzY3a3hfNlWfCMPHv3yq4JPUTjbIeMfmImX9cIKbcbT5jiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRHMS0bE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IRHMS0bE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0093C4CED6
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738929353;
	bh=rTd7iyHSnOOXZXkLhAnn7gcCl18ayUMb/aqK50HDIC0=;
	h=To:Subject:From:Date:From;
	b=IRHMS0bEia10EoARqeEmXHuEeiwP8MNCJfEWVUnoPCjOgjpdApETK8ZCY1lQpQJzs
	 yR+n6w/JPMzkc+/Lof0FfMm1YyWG+fCdMWRSRt0TK4sQLZVQFee8Yi1ZTflvxBfPMB
	 Oy+D5I+0sv6YBDoVxt1YMabBPwZGuDbYQGEhkhQ2NVfs0iuzCYYBRLWQtTIS11Dbuf
	 nRtGZhAt0KTI36IXKsyKLixZlAgmKrlrbdWfktvC6V8n0KocW/4k4/BIVRQ6cbokqG
	 lBCKDHszjH2dVANDBXYwkPdmJaSjcmfB3msI724Tdmyg8hh3B9C3DzTvfTo2Y1dEJB
	 NbZV2FkSKjWNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9976AC02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173892935360.29688.14376895807946709327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a476fe2d74f4510434304c64efa8de06596e1ec56012666cff31d4cf6e9ed22
Date: Fri, 07 Feb 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738929353
