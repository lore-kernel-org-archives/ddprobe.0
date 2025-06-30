Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEBB17C220
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751271595; cv=none; b=pVMZ73YZ1yPnl0rGXGhv6X8hCZAsE5NOcouQsRclGpNV47Ih4+c5o6vNuEdKxdTHS+rnpbhg6+GHfuQEtXRKYKqFV3SEeHxMRXQOPlNzmY9eDdAMauU3mCKVRToCj8M8YiDGuHj9cRME2GX69vdznZLW8Qf6PizKfLRn5pZouIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751271595; c=relaxed/simple;
	bh=5QFy/vHAJ8JgoWcjPIgR8iPWkBCvQXJxDkL6ZYNkKow=;
	h=To:Subject:From:Message-Id:Date; b=NFZFd5C25/QW4LE0d3j0KMiBhVAZNIp74DyyWyHWPWWU4dhOc8MUDsbV1vQaHq2AIPfocerOkYVxKmm2nCrBIU3iPNG7UdKTS0ddkhQi0wSnghqDERVxXuRNjUPuoLVKhUKB2HXeW7792UyMYJaLinLJLtK05ODo9hxeNYFs9T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgttFrCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgttFrCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DBAC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751271593;
	bh=5QFy/vHAJ8JgoWcjPIgR8iPWkBCvQXJxDkL6ZYNkKow=;
	h=To:Subject:From:Date:From;
	b=cgttFrCzAzV1j/kDtLDc4TGlLNHnmglvZa2pr5cIYPef0xBOKx/uY3Ix00Jz6NZGb
	 6wtypukwkHORDSQuj2M/o/lm9Siqhzb1c09tILiOfq8WtqgAdytPfa50CzuV8BMzeR
	 PQH4MzeDkYhMmicOet1VCFc/KSrs1XpYInR+2M/Hpbi3W1midVdSMRQx8QBAFWr0On
	 EdkD52JMooZFEtmj7/lY3fSPLtSI2CBOaoKcoGihQXuPGwH4E2u7TygIVjNTaZMqUa
	 pTnBhRkUPjz+PWHj9g31rfYc/hZ2LoRUx+9Esl7lFC7YQM5pbrnC5i91Ur9TGWILsp
	 oIau3igDClRSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911A0C83000
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175127159358.26970.17679415133361162857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 868f29a4519ca9b05d728895808321101dddbf66dde091a0ca8d3aa7fd308a1b
Date: Mon, 30 Jun 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751271593
