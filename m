Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291DF1A4E6B
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725330954; cv=none; b=moKeFXE8FV2X3awdznPkzbw5MG61LtWpMkAzYeFqidfiBxLqpl4r4K7ZosfCYb5L1Af2CXRa8RPLldPjDCK2ncK4gxVjsjPQ83VXcsBWTGoXe/xvpXtqDIc4bApyftb91ufKucq43x4WDmEyMkweWI6sVJHsv89Kcc36IbPwUXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725330954; c=relaxed/simple;
	bh=7h7w+L/fZgjw9mEifW+Lx2r4iah5UevTz+O3BCsDxgA=;
	h=To:Subject:From:Message-Id:Date; b=IgSJFUG/EyCPsONJ9C4EleHWlbWH7UpVtzoOUKp8rv23CQEFHvlqYjGAd1yOy8l8QLLN4FEgfUVeE/V/d0c9lYtPTaMWCZPAk/wo4zWpbw0srND4j4WDcqg8fMCJtQKzjlBQ536MK7zSfJI+gwZ0XMFaoeOSLoGIJsB65THW2pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=STzA6OV4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="STzA6OV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3FBBC4CEC2
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725330953;
	bh=7h7w+L/fZgjw9mEifW+Lx2r4iah5UevTz+O3BCsDxgA=;
	h=To:Subject:From:Date:From;
	b=STzA6OV4t84/yE/4kS1qIXGREpWXyr+c8/7KIs5lMNa+ZLaoyopyH1T0t+S/Q9ifg
	 y5/q50StOgNJjXY4iHlAq/IwQV3y6OeAsyeMmeNjPtABj0nPwU2QAHe6OMS8vstC5D
	 Z8Wz5prJ+AghD6OsWdqXoc13apszUKEOP7JiiDhZZ5v90ICnEC/zFsPlNoKjMrYzhb
	 0RRZ2CsliSOojsUlCzXclrrbHTOZSAQrM0GemugyYix68vNOe5kYFN2CJZ5foTxbZm
	 YLwPtP7K2UwdlBCKmEDmBIOMYi0YEmzfQdP8uhd/AyFOo1Ww0MsB3flXBhDlmUJhny
	 I7JlMvSH8agQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F50EC54FC6
	for <ddprobe@lists.linux.dev>; Tue,  3 Sep 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172533095364.25204.11344037569057517537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1609cfecc8279b13705331b07e1dc3317d3be7329af83f1a569888fa5be1de82
Date: Tue, 03 Sep 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725330953
