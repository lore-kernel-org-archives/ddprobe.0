Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C09A532936B
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 16:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766593435; cv=none; b=biKzUlXXV2o6ugwCZoBCfnEHra+520Nr7XTN6kb1glRsjEnB61niM7GEoKACjorM9ERn1AmP+vq91JE4PO1PHmX74Hau4Qe+mRJPC+KgWhZFc84oqJNxEJpclXFLz5YxfwRZt3PF598RsyOQm4TDxnlCTJQG15iWzm0/PUqqkXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766593435; c=relaxed/simple;
	bh=CAwYvBqIIa3wYtKpvyPljqJOCRADDGfmS+Gqbfz6EJg=;
	h=To:Subject:From:Message-Id:Date; b=iXjTpl19Zv5tb2+93sHg+jQZ55MwU/tLl5R2HgAe722T4JIEN0CHtyei2CSAT3Yo/UA0/IAAL9Gb4bRPObtD/WT838LPcx+SHL0K7txaGn7hmYBNEUFbdnzNeV35eVD36OmZg3mpwZtlqiQHLgw/lrSPoEyDgUQLffB7etPmkKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLgGtUOP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLgGtUOP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A139EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766593433;
	bh=CAwYvBqIIa3wYtKpvyPljqJOCRADDGfmS+Gqbfz6EJg=;
	h=To:Subject:From:Date:From;
	b=aLgGtUOPVI3ZjUY17kABRmu3niny9Uq4PYDoVIKqs4L1mDJAQSPJubw9ptJi122Xd
	 ywFRQTkSf88zRjL2gJbl99ytGqQEC9IsTFCF5Luiti+F4egtnT+7a3wzNFSt4IfAM/
	 df713BbsqkX1rljz2JEa3e1D3o/ObAOTQrwCrK3jEGh+FDtNKSRkLkOmQHXOFRzLze
	 5LbsBCT/QURDE/LFmnlqJF/xEmsEVerbhFV2yWTeORhXzf3De1KvSYoXD9osdxXRsB
	 jONHJM/zepv1BPvx3e83+7A58lLCIm+GvajeaZlUhYMs7LaPlRzZzhbntij9v7q2v/
	 NRC2t+4DetZsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6CBE77361
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176659343357.11534.5690830013245138004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ad04b35330c264d59cbbc6e60b1cd25e86b8ebfef1a1341466e78cf30876ae8
Date: Wed, 24 Dec 2025 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766593433
