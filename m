Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7802FCC0E
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 14:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775225134; cv=none; b=sPuBSdcjiplPy9jkIkF4xqeNyXPXncU7aIyciBD2Pa+rnJwqSHLOi4hLPpwdfQ7oazc0ZZNVD6FKzZwskkAGeR2dCIbwexogatz/r20JSpPy7BUCrvhBG6YcruMcogJAJOiHob6OMo/0R9ZAhb6aXYSHwrY4QxpMrSmuTlMjxuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775225134; c=relaxed/simple;
	bh=mlaW2NeO89CnCK7Fhs/o6k8JitjFOGXuhEarwjQoitw=;
	h=To:Subject:From:Message-Id:Date; b=mE64t22RHEtBqUU0GJJWo59gOsBGK+m8DLjGpWcX0thUxMcL5GfGHdKt1rgblRfzjK3+VPozLE+VO4P8kdYieb9G92exAE5eMJjOw8sXybGNiGaDkZvIpSE0luwvUfJfCENKFZEWMyPT3gSGu0TvJokMsutbpi+oFutAOXRLNso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxyBI9G0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxyBI9G0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA4FC19421
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 14:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775225133;
	bh=mlaW2NeO89CnCK7Fhs/o6k8JitjFOGXuhEarwjQoitw=;
	h=To:Subject:From:Date:From;
	b=nxyBI9G004YvlX9JynNXcyeZQRuRxN+BBBKsbcs08eIqp+Y2ttrMMblJUKHav/Q1t
	 2A1XLNwTE/ohrXqNb3lwcyQncJc775n20P1ONt71LvEyYFpRlA9tGPui4PlPeu5Nts
	 yPdO7iNE4lQaYIAoOSX/bZ2zZ2wOs6EOD9ewidNQEStM3L17gEFNZdmoYcMuban6MQ
	 NRZ8axI5iv0TJOMAV3ejNChKHDziaWWdA2A06jozSbaZz5VSfzDRjrByjGHaze6jNd
	 XVCb5bK0fTVMD02FpSdsnfYoR4mQfCUQX82Ish0eC9LtZb2OwQFa6O0Jpfj3w3XlIE
	 EOpBhWRZifrqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC749E85367
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 14:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177522513369.12201.9058085065975786622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5edbc8c4f610c88770757a143f333e6421b7489a23b7bbb49d0cd876c72d767e
Date: Fri, 03 Apr 2026 14:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775225133
