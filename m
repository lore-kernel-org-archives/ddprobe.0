Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CCA12D1F44
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760980194; cv=none; b=YJEd4zZrObu1/5Qwa4+lOZEjMG876JG0A4DZXqVTlSgINIgsyht3C8CMwjZ+PhWy1E1wZoFma2U6fkBJw7cYvVO40Lrq0LhsYYcXfrFuWn+l9JUrZ6mJA2Aw2nzsgex3z5/jBTPt1MgY/betq1WixfqavS93qZw+dEF+d0hoFRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760980194; c=relaxed/simple;
	bh=m7IUQ6rLmQicoVgjlPhcDVkwdePxkb+1T5/SKEsDs/I=;
	h=To:Subject:From:Message-Id:Date; b=RYTc7El3PI4ZYUKGZ4aQBXhZzrogRFFpuy2X9XCOwsb7Y6JZ60SsSTaenQDJJ8Bm3HIz2l//PEva4TxTm6VcIpbq5N0eYdACcgT/ltjJv43mB0uTHqUeF3Nw+PaXkzqXJMzcEKPFUXn2my9ICLMQDVnyRSmOUq9ZZe5799SIU58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bfTlimEp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bfTlimEp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3737C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760980193;
	bh=m7IUQ6rLmQicoVgjlPhcDVkwdePxkb+1T5/SKEsDs/I=;
	h=To:Subject:From:Date:From;
	b=bfTlimEp39Kp2GTdwi41n1jxAS1puVPWTV2tItFdexOSeuqq7xg0dUnRKgaDUJdWA
	 8gvLQn2cFdeix9dxynbkp4VeRoQAtdzuatlyIH/Ai0/lfu8N1oXRbriwPRE39uN/0T
	 A09UpVw0+WodclDdyyHaJZy4fnFvFBjzkMgFsesV+ARLS0YNSC8ISJ+CmjKKr4WH0j
	 CZfDuaualUGioafqpjKacM0D6cYQ8H1DpoEKNdgLYnyGQZ1MF7n+HkjWSnhDsu3yZq
	 hKw/VHC40hPAFijTXL0lHWfpI0nqIBNdi2ebydar0LEcvkTn13SGvNkBInrlcjD29X
	 XNVKJZetSf8cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910BBCCD19F
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176098019358.10367.16792432613605177688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25deb9da5e5027910484857da8f1b95fa1184ea8e8bc2d2c071047b429b343c7
Date: Mon, 20 Oct 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760980193
