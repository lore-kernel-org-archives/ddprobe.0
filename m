Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51F3A2D94BA
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 15:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764862974; cv=none; b=Aw73/js5l4y1PCrQYeLCpNfoGogkxfaKjKm1y+Vt6ruvV5x0ZKPdyjfagDnwrHn4TJ/oHXFD7BoEnY6J3FOoTS2HtcwJJ/ToDvvOucrOzRVwVKF8cfgU9ZI156XLxBxvfneUXi1wAf8eDiDTSvprSurJKkPySgUGi0U2GyM1aGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764862974; c=relaxed/simple;
	bh=2rIenFSyheH/rv149JFOjkBLCF5hQXE8mAFNCWjfvhg=;
	h=To:Subject:From:Message-Id:Date; b=aTWS6iOCQbwVj0VOYx4enOfErw5xEDFVqHeK8t4dlaE4hO5SKjI7FGZgSBq9BmQAZ0aZLlTSg4yzlevFtzKctFeyV69XdA8oIL5XoVQW0Z0lsplDhhL9QSAd0Uy+HcFGyYIA5aqQmHGhSqxHU8hjYm3otiN4V89XhTANAy2TfWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpLgyW/D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpLgyW/D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC920C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 15:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764862973;
	bh=2rIenFSyheH/rv149JFOjkBLCF5hQXE8mAFNCWjfvhg=;
	h=To:Subject:From:Date:From;
	b=VpLgyW/Djwnmw7dzYO0vUZ41MUgOGJvNnpBArsGVDSKty+B9qaNV0JlVYGlfq+OZg
	 ypEwBburXon/c5cA89ei0vVyxXegnIzd8R4Yw4dDs5/OM25ei2jt1VKKPPY1zP8YOT
	 t5WiQ+F+csCO3ivAqpkGKy+EekM/+SvUN02LmHvRUHx9zm1jv0t6fo+a/BCiAWRTvd
	 2iicXDJLS9WYh/bRVBCAJxwJgCOLDUhW6vET55NSGJ41jxdt+t1umPhWu6Mx0HE4DC
	 Ksr6hkRnDqTMNWH/WQmTdvaHMKMkzr+2nIWtYbqYwCiu2uXGHNhpXfNcsqAUEeixjd
	 Mq0h0gFgfB3hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B225D216A4
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 15:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176486297361.20337.13233179734311965914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d86b051fbfa52dba0a4db57312a073fd1e75592f376e937c4ba0ffa2213dd38
Date: Thu, 04 Dec 2025 15:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764862973
