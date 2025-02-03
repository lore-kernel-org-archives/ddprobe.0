Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539DA200BAE
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738578954; cv=none; b=iFMwbjKKZAq5WJPOlY22rh5pccShDzqKDiHpjfC4xgeO+BYeVY6SwC6OFmW9rVrt1aR8l8f2c0RpQT7Y/A0cV6l1wNqcm8o9b2++P/yD7tr02rSLPFWJn8u4MzPASjUf4WV7ppKsZhA6d26bxMkoys6VuHqbvJdDZCBeAULFSfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738578954; c=relaxed/simple;
	bh=Rb1st/AloNKiomhofPMkK5fCsnqsq1sbF/aE3riWCKY=;
	h=To:Subject:From:Message-Id:Date; b=XxQsyvCE312NQjaG/vvWMktpq+80E6F9kD1bf/Go4XTF5tBUdfO29M0FKdZsR0wa7Dd6j5JBKC/rkgNxxr6QZ/2WO50nPUjZHbxYCjQ0tFPIYho42d+RE1otNCNv+Wdh1+sUb7icp1cT5r6V9Py1VXp18C8DT3Wpvf1EI1GDyaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUCY+k9K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUCY+k9K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC53CC4CEE0
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738578953;
	bh=Rb1st/AloNKiomhofPMkK5fCsnqsq1sbF/aE3riWCKY=;
	h=To:Subject:From:Date:From;
	b=HUCY+k9K+FErZALwhVMNrQIB8noc6wTOuG4wlLbfU/jzalMQ8IpuLMX3sOmGztPQX
	 FkrggAjTXlxb739HzbhNzeacNhAegOGZaa3p2oCT+PW7L3fUfu6Ye+SYs5likOvbCp
	 1WlYh91GZQTs8UlUWkH/ebu+TEc3v6G9WSTi/88e4gVW+A8pMoW7wyirUvU+haCPJM
	 kC+JkdZv1FtmYdNCJkpnlcpKVX6oInry0b8DwfatT8tD3vkZt3jln2yDqEnWKO9ypq
	 I1hRWxyXrfMyySIk6kfZ5tQ0zNNK2oQj/tWVbkdxWON1PmAYYuxVCqTF9BU/W7yDZx
	 g5TP6L6+6VX6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A380AC02193
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173857895365.21617.7360508239120231393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0fee1d412614bdb6662a6a4773373a17f1b0832a41ee5411a77932a8343f649
Date: Mon, 03 Feb 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738578953
