Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311653161A8
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770552234; cv=none; b=Fu7UrSa9iU7KnkDNRwS/dt8A6Ad410xKtlL3hyhvHed7em5kgr7TTiL/dPg1Kr4hVbErTW4IFFBBkNLyGmxHT7t++drAKDvtI8ZVtxTfcEfVluOvZTTxyqcKnuqiNrs13SQW7OTXL0yyDKPXJznj2dP8HAHzJfPXFMQUenxFDPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770552234; c=relaxed/simple;
	bh=Pa+SAs6armdzxJS+zbmZJtZK+tKrXOs9DDhySF0+hIw=;
	h=To:Subject:From:Message-Id:Date; b=aI2vKRklJw6RdZp9G3sGsGh88ABQBBqLzGOSisCjxNtzE09bqhQLEyyokDY+UBzf5W1O2B62zahjUnEeUptLxrda2CjW5U32hwb2CvTmLRHp7ACLrZA79FsLgOzXTNskkGdM5TQOhKBmzWY+Hv0b67evYgcV1AtD3sHb6YMh//4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OPO0WT/e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OPO0WT/e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A91E4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770552233;
	bh=Pa+SAs6armdzxJS+zbmZJtZK+tKrXOs9DDhySF0+hIw=;
	h=To:Subject:From:Date:From;
	b=OPO0WT/efLDB7gMpCFFLDnA8wXOa9fMHIoI4seSFZLYJVstfy09I5L15xfWp8NPRk
	 RSe6ufqd5vhkTnEEKaE2zFNoaGMJug5GI8bROq3GyRtONMtTvrP4SOX6FN+ewagKiX
	 FEE/2XdrnLB6doLrM6GgiTEerYnOSlGGpsTeu7BU2reKXWH7rquxQMXyEb08fEFrZC
	 udbRoSj3WBfGVi6g9DQbmkyQ/jYhGwkT22ShwhGi3RuvzIMFeWmPmHaLTldcPBTbhG
	 xAcX/MxGFTxDqltfHHF/dzr2PrUSGGw6ZulQ910WvefMmt8UACW1tndtMFz9vdsHug
	 UbDxjrgjG/AcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CCCEF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177055223360.31558.5010321014245378338.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd8458d1f4bf7711f76790dab8b2720317af1145038281a383e0bc8bc24a205b
Date: Sun, 08 Feb 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770552233
