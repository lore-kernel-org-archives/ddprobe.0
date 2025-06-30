Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F9528C031
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751295594; cv=none; b=Kmwag3mWbnXr2JUoPCbM4nAKnXQlXf2ESxCZ+qE5MfoRuEbEbYIbm2l6GsmC7FBefcH3UXAiJKXPC9op5WIXaDEkHAMtWUUz8zFifo8ndzGmQSEQpdqlAeB0/ZDAVNds7brY32A8cmR2D1n9beYWobEvWlvxENCqSF29WxYnBuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751295594; c=relaxed/simple;
	bh=a0Ye8eia6A0sMvq/UrZ9Skaphvw8RbHhfBpmM1s9ryQ=;
	h=To:Subject:From:Message-Id:Date; b=A5As511Zv64g7SmJmsb1EVXpJWSJEFoK4BsSEkI8jzbGxRRtp4TpIVJ2VXcx4Wvvg4WRO2sChhL+opR1Q4ihWNSomtOA9QPfgUVDfNNQAAFFTiq2iUyZbM3iGsPvSjYYIHrn6v1UyynXO1E7zkvEegJpCMi/DunIa2oHq8f1R2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AlqZQ+jo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AlqZQ+jo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A154BC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751295593;
	bh=a0Ye8eia6A0sMvq/UrZ9Skaphvw8RbHhfBpmM1s9ryQ=;
	h=To:Subject:From:Date:From;
	b=AlqZQ+jocZYEgRiJQLcuUNuG8tE7CkWO3gUb8UiREpmTHh1daIePTkE0nuJi9s03s
	 mZ1CKlYjXtT1KJpdEQWuhoyZgEgSQfMRdtNvpwh3DTE4gKZZV0qOsTc7q55VJhkOA+
	 se0KBYs1I9A7sZt0SUSA8pvwwJirji/iCTnBONmFBA4KeTWLgPIul1l12UKbZBCMU/
	 IB0+U2ysVebnXnmY44d9yHzwbEh7bJjtXM06jssdEY/gzjYMp6NXAGEwtSTjo8LR28
	 6xJKIFhNiO0QwIp7wOS9NnXCnUhndj9ZloksjtNn9TvGTDKmogfdci3pWh0DipnBoK
	 PMMwYcYhx3AuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9074BC8302B
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175129559358.3411.11700414707696843602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65f4ce0aa8ff82a975e21ab4daafd3504dee7ec221e9093a4358ef8a632159a1
Date: Mon, 30 Jun 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751295593
