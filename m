Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175ED1367
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749321594; cv=none; b=a7TTrunrJqIl3gTHIRkuo3LnSV6qruTQ24se+xSLItQuGAZaii/PntaIa6Tm1YRuNS/zOHd6RUuRE+WP8aJEXTxju3j/yVXCnaOEIPi4r4rGb6JMRPDufphfnfF0Ps0xO2Q2oMt2u6Yvx/DOwZoUv2wHNAy4qcFSfnSteluYM9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749321594; c=relaxed/simple;
	bh=8Wzmg9gQ9CRZMqZplPqvpmrn5r7JFZXQbRemVycgfB0=;
	h=To:Subject:From:Message-Id:Date; b=V4e+MQjlYLpxozHGrf1ivGb11DiU/RFlAYO6D9T40QScY9ZdR8+BZiSX1w0BW9lHPjCWX7s5t1kWecllLAFP/e2sn2EHwwJNLPAencEV0+9NSd1kFZSpMFXuSskdj42ZbIO+qZjYfNdCmAJfmz5mz27GTWo+i4z4r5DmPvM2H1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kuSVANk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kuSVANk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BE8C4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749321593;
	bh=8Wzmg9gQ9CRZMqZplPqvpmrn5r7JFZXQbRemVycgfB0=;
	h=To:Subject:From:Date:From;
	b=kuSVANk6s5YIkTkV7k7XZbSINzeLwROwIz+HvTXnxu+AIaa8AfPrD2BUe91HQRtXZ
	 rcBdG3aEvT/K3vRgDflRfhk0WOhPweocrWirdYwATX3VA3mj3F764xvMNI3kpZoP1U
	 PNIz4XCXA3fcZjjI98gZzOTcNJfBylB6QRVqvkClL1zgWuKG3wA//wnkGO2Y0k9pv3
	 Mq1NlYPvbplBymYkOlWru+zK89HjolbIAoKnESPL24dYcEZpwwU3s1WqdvkipgBjSn
	 yq3vDxeTAldj+xrpTK4i6lGS/qvLQg+qAJsL4FCBpMxS6qhAIiaYHTEYeIpw55zB9j
	 JC1gmzsmYx8DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9162EC5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174932159357.32704.1994176982288657025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 281b9850c98a52db3fab5c8874f8270e5342dcdf4ffd6d9800580e0ae0be5902
Date: Sat, 07 Jun 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749321593
