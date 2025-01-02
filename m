Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4509E193425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735806954; cv=none; b=t139UpOZkA6qC/B2I+QVHf3bqM5z/I0Zxd1mnUSTIFHdlIKY11inTun2Cu9XD/gHXTri8b6s6MQ3jqYmJD1WeY7yodGSqA80mlYsqGC+/tN4yyLdSX5+tooBbmAxWbNtQJjb2MeHElt9Oo1KKlkIJ+AjAtuYhv+7VtaEHUtVl3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735806954; c=relaxed/simple;
	bh=7Ks/PD368ufT2o+8mFK5fXtQTxNQASJA2Irl6DVCO7U=;
	h=To:Subject:From:Message-Id:Date; b=gFwHbigaOX+PV18Yt5jkKsWipalzPDzwAbA6BYPRJV+vGuSpu1b50bWAuf7draUDZ48xznYyUcZ12OdhJBeBG3L/mtYIgKZFl6AUjVAXLA6/XHMPLcROpwD6dFcMdwJTab4X2pbMJkHwxCZ/53P+gR/1o4qcqlZmEe6/stjbunk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lqnv3oc6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lqnv3oc6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB050C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735806953;
	bh=7Ks/PD368ufT2o+8mFK5fXtQTxNQASJA2Irl6DVCO7U=;
	h=To:Subject:From:Date:From;
	b=Lqnv3oc6XpffFtm009qCFmJx/bZjzk46nizqHJhhFccEDOmvedLWzGizldWz70RSQ
	 yxD9tURTQoR8r8bCdM/2/7FIa5v3GYXvluqWdwPJ18KaLImpiVkEmqNboKVw3n1YoI
	 P1bKAbeL0mnlRaZ0LJyLOaYh5j3Uk4Jz/E39EsGOCPf82UL9m33WyjZCDo7G0MUn86
	 18ja+Nx4cVOU9zZgXO8c/UfViMoCi4R8L7g2nRvmPptgoAjRmIy+Cs3iZv5idDa7SB
	 ULy1IJ7gK6AxKZHbTvi5cUn2WGWkz+RUnj3lmc/aWZr2fIB7+WoejlAfQbaOIJmG1A
	 pROky2CbCRmCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A40BFE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173580695364.22764.8502043350206445215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 281f806c722ac7187e57aa717a6c3b7ec1daafe1a4e9203b85487664b2dd5a48
Date: Thu, 02 Jan 2025 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735806953
