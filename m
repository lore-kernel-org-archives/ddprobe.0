Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E4172D5923
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788573034; cv=none; b=kgc7XeJ3c5t0+p9uIu2Dr/F9HlcJGhGP29XKWtIS0FhX0X5KqLUOoiaiN3opkYGRMaDt5FRb0etHlsMyAIuwqDPvU/qdL8+bxcJ+q9thnb3XHAM5ijLoDkPHydpgi7Rx2u6+YsYPDHrnqofuMGRckjTJy7MZUtpun6E6ru301Hk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788573034; c=relaxed/simple;
	bh=OyWHOJzw2LcrsykX/Idy+bOC7a0dtTEnwbHLcIFrYoA=;
	h=To:Subject:From:Message-Id:Date; b=FlK5q8sWDc8b037ivd5rEiRRMs0ASqYj/FcF5/K4XrhMLDkCS8Gdver6ibSXF+cgPar58vjo4jpfG2yOsmxvqn8lsi6aGWDdLAkI9MEmw5B5a3Xyb4LNYjkcvTxYFGLJYmbcPHArdSNneUUyvodTb2/qeZXz0y6ymR3RG1a0u/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QPWt/Tpr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QPWt/Tpr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE08CC2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788573033;
	bh=OyWHOJzw2LcrsykX/Idy+bOC7a0dtTEnwbHLcIFrYoA=;
	h=To:Subject:From:Date:From;
	b=QPWt/Tprs5nNoAIsNvIh6yLBvCXAE9XAO68YK9LJDhRSKR6HjL2MkN4aqSgB8KGAd
	 z+REFL27crXeUJl1l4BfEFaADcyE0y7RHYdVfgwnEtoqoOhrhTYn0i0VRpi1wnrnWO
	 GvBVgcEcLd8wLfHO4iGCeUjl0kmoxRcOprDj7zwznpHBJOZeZvLUni9rq+IvX6DBK0
	 gQa5+U3N/jRMO/9/6IIbq6NDxSTJc6bY0+jpd3By7iUEodeXTiMjP86yRvyJzVTca+
	 cdVWw/tHFZnSBtR4vnNOKmCr5c++Iw6TvWgJRNK/q8+WzniG1rKVUcFEtZ0DSNPLiC
	 Z+SZoEGwFL/fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB0BC79F82
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178857303368.1375.2552038887964456460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4856ca63c3863553cfa4167068714227e76a6e2c9bdfe4f0ca29801a5f42b41e
Date: Sat, 05 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788573033
