Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180642CA9
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751728194; cv=none; b=hBzuFbq5+ccr8LcBzsZ+SEtqj2B51RQ2HoEZXtiWuZQhi2eEr02QgT8uHThD8rH5qwt4RENBbtX8BOL4XqnpSUsiTeWYHWhxd2/BANIAuj1fodq/fbd05hVg/rCe6H4MNM879HXjVqZy8E/TKrj1cVWASYdgpmQWmLu0KnS5Z2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751728194; c=relaxed/simple;
	bh=PNaD12Uj6JeZRlYNUhfdoRMffV+L+kQrMmofJ4XI8dQ=;
	h=To:Subject:From:Message-Id:Date; b=N22NM+OaZeThWWYMtBjaSzbwP42n2yFjLNNHT3F04gswZIrAHajXxjMVop+wRT4TK3tlEsLGVjtL8vBvZwJ/psXsbQfa7wGUiFrmjw5JSbxTBKWATXeLX1jWC2fg6ILl74GR4evuyFbuomBsq8CTN+O7qVpxCCQxfxw9Hs8S82Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EhdzmthA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EhdzmthA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A581BC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751728193;
	bh=PNaD12Uj6JeZRlYNUhfdoRMffV+L+kQrMmofJ4XI8dQ=;
	h=To:Subject:From:Date:From;
	b=EhdzmthA2Gfl+ULb6B7V9aa7gEmtzWNfFW2Q0INmWzF96WHf1jQ4ue67yd7WBQzRF
	 utDGbqdIi7vXnE19tsAuiByDbUTYd6zibQtrfehTiOu2J2qrshjkIJiPbwp+sktQfZ
	 5DUZyzLTsBrxCk99QsfLilNrZW9rjHb90yUXiX4NqGzCeoJ6t4R+BmdCTaNvTM2pQY
	 J6yaBTvmi4t0ILT5vOwglacKFOHQDzcFr7JR44h/NF0S3/mLLoBdn8+Wxw1jBcd54J
	 YfkHqHb41NfoCqHdcg0QxR2/m9dd5KHL9mU1zM5dzje9/KHxn6VHJB5+L1QJKzsF7g
	 rJYwaYvgZbJWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9182FC8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175172819357.18789.10832899666328977028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efa87a8bd9d7734e8edbe9d5354808ced7e6f8d7188dbb837d7bafc992fd27cb
Date: Sat, 05 Jul 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751728193
