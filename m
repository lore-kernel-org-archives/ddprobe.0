Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF1035C197
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777138654; cv=none; b=gdpGv1TcfqafsKhxzgXU3T5+9EwjLpBSQlH4uabN5iN0hMVB/22C/clq5lexiD4PacT4ntwVntG/L/MXQBsZX7Tdkd/euYBlk+hNMGpc+ns0N2TDxGhnsAWn4TLRj6UO7m6CkPrCWUc9/bcySKJsaCJ/4ijRmEd1qIa/JaKdi+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777138654; c=relaxed/simple;
	bh=DWTzhCuoNM6UspqiwNZfshzqO7M6Yn67NFivVtU7E/Q=;
	h=To:Subject:From:Message-Id:Date; b=ELBSqorT8/zn0lnrg6+YNSDoaQk1hVcAvKAAOSMReuorz3UClxN9ZaDJz/55xbNjrzmZk/Qjz9/yxHPnWbxjL6/ivt2KTdJyu11fSYJCqkC3Ie4gN43aOooXptt25NGJReG2tjVlXOgTKX3l/LX1mwu2uEfyC1gPSjDP0KfK01g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IGKAQKBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IGKAQKBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB3CC2BCB2
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777138653;
	bh=DWTzhCuoNM6UspqiwNZfshzqO7M6Yn67NFivVtU7E/Q=;
	h=To:Subject:From:Date:From;
	b=IGKAQKBNd1JGuR+BBK3B3kU+wh8EyEsORSrzhooSHn6f36LSpMo/B2IYjmg0N1/7w
	 lv8h9BHWRWxnIfubrmBNnCffn1JUEdAZiKjDxOq/XHhLZXrBCSpmXVCgPAIA4/UtNK
	 lVKrrINX8P9V8V4NlUubOngiDpC01BxSO/zosV+XHqJJSVZ2QOyyRicoXFYD9WJOH5
	 FdbyMfdbF6shJItJVTsLzs0kN7vSlHB5DfOzYBbdTr+6uqm6G/4X5jSjHIWwAuaA85
	 EyVGmXa3f5hdqk7LGM35fhSGnQdR8BiwOFeuI1WaBrOc7kOz0VFxIFDNwa4J2IjKug
	 jSd2HGqlVEuWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E2FFF8861
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177713865368.18548.3780122081426892148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b30c26118af1111a93bd24e3b6ca5268a0d32610f404709eb751920c793195bc
Date: Sat, 25 Apr 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777138653
