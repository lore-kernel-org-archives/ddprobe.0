Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C0DB1C02
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 06:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714113143; cv=none; b=sjG0JGGlXpEEJgOtng4JcrwVCJcjl4Of+cD19AtZzBStqkOecy5WG3RaeiDyn8xlXl2HNSKQ3cIpgSLSTW4rUBb26gX0JmHhkqpwkqOeN+ERILcbN8G6+Co0ucBVs+MqjksJ7y+rN0v/Af5H66Vu3Lq5vjTZvl6rkN7wBIbYIgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714113143; c=relaxed/simple;
	bh=SVDVEQYJKMww1RetT7zUei0d/Itf+euRbmf4gymj5xM=;
	h=To:Subject:From:Message-Id:Date; b=oFh3m87gAErZPWhVvlzKop398Le/m2BOygZe5i5Y16YTjex3kGRleezVQyeA2gpZeMiPNIYM/Zi7/bZ/HS+nEqQnK18qx7YDy2/XgxaJbuU3gccpvceGReFbypRe4ihH19Aldy+bqgGF5JPDF7XJ3zSDt4b+doEZ2JDSGylVlME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OtpTeTbX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OtpTeTbX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAC04C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 06:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714113142;
	bh=SVDVEQYJKMww1RetT7zUei0d/Itf+euRbmf4gymj5xM=;
	h=To:Subject:From:Date:From;
	b=OtpTeTbX+mheq+WPvs7Z5PlnrVVMSIIvqNxGclUqUMi0+do1KgyMAZdRyxXD57vxh
	 XPaGNnn4bfntf0VFR6IWmQOAbOLItauuSTTpqyGbF1aqKvUXSP8Ds6JBVm+2WOFvrn
	 g+CJ3fbYJNtpkoxb+z85tvpK3nigJOnt7bNut8qQfTHxriraRg/38bQA337Xhn2Yx3
	 I9QDihrfmZreLxTwO6XmXDVsduQ+u0p/wob0j+CQ+2fc8rbfObE/lDQL+VZxVgWryM
	 Ju8JFfmgvJiAN7GNnboaftMGxhGcEyGfsP0BN6661Ufm+InPCZLyKsv/XzkCLsOsOX
	 My56HdflpxW3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C86EFC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 06:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171411314280.6550.5519712757080788685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c674f0196e64270c90f331094601359d397bef409aeba0055c51a194e3a17e3
Date: Fri, 26 Apr 2024 06:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714113142
