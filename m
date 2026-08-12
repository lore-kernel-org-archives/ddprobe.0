Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC0F3E5585
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786543834; cv=none; b=Qg3VlH12uvO9jVo7LDKQVGlW0gUT8Mz/28MzheNtcj23qo2PGqDQ4zKD9lKbLguY9d3YqyjvRtRpiqF0C9Y9SPYj7EUegM1Hd6PxjODioVezWV7R0XH9GWahZR0ma84K/LCgWKTuEDVpCw/abZOl0R4jZpI24L8gQ8IXBD+urd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786543834; c=relaxed/simple;
	bh=MYm9pN11Rczgi9qYCJ60BoDv63MGLmcqzWB0GVv1WQU=;
	h=To:Subject:From:Message-Id:Date; b=qV3/V3i7MjM0XyyiO2nqreeM45kGnJKfnv6QhIzWBF50SNwIgTdlSeucfHVoexmuXnUDTAC/GOXu/q9B3hqoYF7EkNHaJx0Lfxtlo4b00/8oypGaGMEYSrMdvMCvWbgwyjGwN7MA+uxhrA/Hc5XvSWJloPhnaB9EeKnVwJtWU+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKJ8vtq7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKJ8vtq7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE618C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786543833;
	bh=MYm9pN11Rczgi9qYCJ60BoDv63MGLmcqzWB0GVv1WQU=;
	h=To:Subject:From:Date:From;
	b=HKJ8vtq79WoV9YZ9nGlI6+vJbak5YEyK3Tlvw/2nsE0vuKSgRg4BMfOZdhjJQGR6Y
	 w4ZzNJV+Ji4jMsmU8Qoa0vIVLHZlyr43L5xK0zSa0G2GrTcAkaSz9wmt51Gwj8aQo4
	 aw6RWgqMXY4pzAtZ9zaz+NgF1T99/tb8blx22Nw9UOp16AUQIvGDOsKdVwGwR4zntC
	 MXrPzCwRZluIAwgKcPKWnFJpITS7qxZa75tZ1m8ornnnsunnDDg/+eiHH6OTd1o0ox
	 wsGlzcTOf2lwgKonDNKAYCbsjCWmerDx1L5xh5Hp6vftzCr0Lmq8OjsF/hIh3qzQZD
	 tFXpTRM71gOTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D78C5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178654383368.10517.10875285060422955651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98ccd64b1cb950c8c16f903c13bcbc51d7f3489e7e770162402d403d167eb180
Date: Wed, 12 Aug 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786543833
