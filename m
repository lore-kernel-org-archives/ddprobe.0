Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAE941D6AA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744782593; cv=none; b=muyEkqbx01WY+NyfIOwCbaipOZgtnOlcszMMjTgc3xIhHPVbK2CKNBDu/l7EucYFFn+Zz7DGIchfMh5yE0rkwyhr8+hp+BZ2sOzstdpLjLSU3SHLVYWXK7u76V9pbbFXcfJUlyCg3PRWG2AF7dsiCfiD7RGD871BjTJ9PT9wJiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744782593; c=relaxed/simple;
	bh=+1L10ilCcU2mHRMoylg+dZbaHmfHuARrSODH+TaanBQ=;
	h=To:Subject:From:Message-Id:Date; b=i/VRK9c8ZHld1iEx/R8k5cEWysy3Pfm9pHVXxFp74RgYRNTzUNCk8P5XIdGYuJljnL5/ACVAM72UD2HZ9QZrrovvMJ+IIY1HQirwmSlxQdASH4A+42HOtLzwNdoLEZ/qzYxybuOnXhkaIqj5NRXUNFrSfE9esW2Pb7hy340b4PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umqdBQUZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umqdBQUZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B45C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744782593;
	bh=+1L10ilCcU2mHRMoylg+dZbaHmfHuARrSODH+TaanBQ=;
	h=To:Subject:From:Date:From;
	b=umqdBQUZ4OFG7+cyj24Wu1Hl5H0iskk5IlPivEjIv5JDLXCSxpjoQPDjJLRuGlVxw
	 4gT8Q59pUedBBt704HMjnswbNoDgD8Lg1ulgJTbJv7trm2hn8b/uzgkNgwT0vm9YMj
	 9KWhX0ki7ECqcYpw/AwnUIWcQd3NW0cSaj+mpxl96b4gVwhcu6P9np6C2qbIX2qf9z
	 v6jNBALTcGdhkL7xqEyC2baE/KXiEdmC3xyxTrnI3moUmJQ7r7DPD1gioQZP0gYzzJ
	 STIcEEd4508pe5QdmJpPZy5bb3xxOKAZQdiRIqOlxOgBXSuCqo+x31MqDeLLHE295b
	 bkc7phT+3GFsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9303DC369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174478259359.12146.892952901379935220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a5e8b9e7d0504943d48f4d140eab82a2af93429e4d82c56388b598fb5b214be
Date: Wed, 16 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744782593
