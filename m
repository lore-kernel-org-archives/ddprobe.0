Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F97617BB21
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758144594; cv=none; b=eh2veiqD6JfheWc3U1LqkiFUrxSu7ldr6fZartGj0bty50KSZaDE5p66aQWsJuVUhm8wEsNYWJp2ubWnHmy0OK64XiV9f8K5EHx51zHD4lzT+U+N922hyHQ27vi17jEmcB/94micHoD5txdLTeNkeDFMkL80IlpHwWrYCIEhLb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758144594; c=relaxed/simple;
	bh=9USkhuPjnt34rHwXymuwJDaYO1XsXISmKDI6uGRfnOY=;
	h=To:Subject:From:Message-Id:Date; b=VhHe/Om8b+UsFu5OnMrR2fYkn0iXjLCKt6bkeD26jmHbOziIiifCFU/SUO5khMgaZhPxWNEG6aMxJF7Al3SVD4ZdBUvu5nf0LLSUpGfXFPXGl868Mml79CXTgK7f+VhyummQFOiD12vgBU3NTNc0W1ykIBLpm1s+3UKxVBTF/RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hvGVWPNr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hvGVWPNr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0643C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758144593;
	bh=9USkhuPjnt34rHwXymuwJDaYO1XsXISmKDI6uGRfnOY=;
	h=To:Subject:From:Date:From;
	b=hvGVWPNrqn3IbJrEMO2o6tFEsCXh1mFuZ4L1T4+B8oh5v5yFLAYlUN+/3JM9UcDfB
	 n1enO/8XXwB1xFEC5HqrKbEdqIlIK5PwnDuW5g1kxYdOEJHDwYCFGm2vsv7uLn5sg+
	 s/Bdv87eJRkq7xuxpSyqD9Vn0C0ePdneNl413lPPxSPWDCEILoiSA3/saxTEjwKprj
	 Tlu7+2Hx8BPsR48O9C6NSGqFh0GXHr2pEJSJ6HrbDfkirE/evQcmPD4opBgZ3l5n3H
	 JcmTNI36uyHs+U3AWCBTm8q6zYy3EZS+oR2ctOU8HG9KMSgM340dzymSL+2EOO9yr9
	 RLzf9HDsMEtTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F22ACAC598
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175814459357.13166.7299607239766180929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 530030cf549b9ba810a3dd3b838cf27c72b838db46413fcd21533a01d3e95b98
Date: Wed, 17 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758144593
