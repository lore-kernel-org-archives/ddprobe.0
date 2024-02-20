Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 128E376C99
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708452497; cv=none; b=KudfNylAjspik/DvY7z+ktQlr05agH1D9EBY8Z1NIoe/eIG748K5/FRyfTsbKiOOi9Otbcz7LPogaE5FkliUS1ArCyCZ+y5vdYTPaDb6LYLlqUJMCAQoa2hyubYbasOIIub6pYOIb9vdEBnzdhnce6Lh/dByRLzTANaNkIdLkTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708452497; c=relaxed/simple;
	bh=QsgGI9JOocNV+Vds0FRZ/qOKCmGMAm4x8nEE/I61Czs=;
	h=To:Subject:From:Message-Id:Date; b=OD4UuFjZiwyU04dMXq1Fsj5B/+Xuc0KWuBMldI0X9EHc3dD/mNgcjr/OC9pYiqsjaLTwc4UL5YRuFO39jVfkF4WPyq19OhIpxgib9tfjPCNNQsg4M8Ts2Wio34Kd+P883qnOowtWdj4Q+JQcxAmwBS+qfvtP8wSPLwL3uCUXCkE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQCulBSJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQCulBSJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8998BC433C7
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708452496;
	bh=QsgGI9JOocNV+Vds0FRZ/qOKCmGMAm4x8nEE/I61Czs=;
	h=To:Subject:From:Date:From;
	b=FQCulBSJQ1cV9ZMF2lDIddB7RYE+/6J6RviJ1JAxSZ46e0vLOoOy+OtSRTPy7Wy85
	 v4vULh1SXFkyay9MHuwmchnBrxCsukMeDRUzbCIv5ucBXi7DOK8Egi3uMhIplhOpau
	 mvFNCEXXM44V9P1ZOICtL5DdNG+ni5ErGH4jOqZXxHhlM/GYjJekO47/pJ/a2XqMe0
	 w4nDsi4wNRkODoDkUbQoTDnpZDHrGkqzqfOJEnUfaeGfkej0De7RwPoawchFOYkIPt
	 wHwVClkBW61xeuriHV4TtN0kTraeAISuwpHDQjKV91T/9i1qo3/w9SSwfaA8eLaR9c
	 Q/T51I4LSSBEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A6EFC5475B
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170845249642.6971.679436564700396913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba440eef4a95e5488d6bccfba074994da99ab7ec147d268cbf5d8243a43a72d
Date: Tue, 20 Feb 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708452496
