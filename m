Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BC179D2
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747093194; cv=none; b=HP6OnOdBT3uIU0CpbmGNeAm0SzaFilJ80AvLSYlci0dbbpKXoESQ0kPMOmxPjl0Uk4ph4Me646GMrDudKnblDPTYL9fATrREkdg8vflQ/EihNPtZDxV9ZKVLzBqUi8M+SNEkUGeb4FrIUuv4sEd5UFljvHCwxUS+FpfnILzH98g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747093194; c=relaxed/simple;
	bh=N0wyv5tdR0hmxyjH+vMi/S3iADMYXbLgPOgoB6AEwYM=;
	h=To:Subject:From:Message-Id:Date; b=ApLvklnfEom67mdA6W1Zx4e6WTbNjTZmh2L6zhyAzB/3Nkj8ucjcbCNRDDsIiTNRhqFW4H+Q1TOsaUzVfZ5PYvCdPrj+rmK60VVS224cXXbMT/AGPr5qqLHTk9fgoEUL87TlTf82KnnOUKp5rYXF5Soq+LQsyY/5Q7SRj4RCLvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TaIt2wp/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TaIt2wp/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A50C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747093193;
	bh=N0wyv5tdR0hmxyjH+vMi/S3iADMYXbLgPOgoB6AEwYM=;
	h=To:Subject:From:Date:From;
	b=TaIt2wp/ngsOHtDBZBuo4GsecTy3IhIU+OpHbXpTNK065OFt5uOe3H3JTC57cm+P+
	 N/eTvMemI2aiV+0wn2qfPp0ofXpHuDP80KCh2VTNWADL6yj9qK+79pceIEOyvj4H66
	 V1F66xREpbAniFnANQjEcYQGNCgF1m6rEJ70SAw4+Qkj/utr5ciNVJ2BS3SXhtBopM
	 eYQ5npJUnG8PeQ91bNnISyJgvXZI4xa5JL6JCMAmTYBX9aMzSIVmMjFycTZ4duOxi6
	 EoDK6nzW4Il9WTtRaVgcF2o/VFBnTNkZWOiGbPVZnBteTNjRpBfdNxSpJPEx7J2MVp
	 vIgYxQ/phWw5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967EFC3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174709319358.5022.2511684459047835155.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 916a6572ff57bd1d9417fbecb388ec6ebc1ed39ef1a4f620102cd55a3575eaa3
Date: Mon, 12 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747093193
