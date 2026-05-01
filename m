Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48AE81FD4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777621654; cv=none; b=HvdLrX28ddVN1hjp4tVMOdU4UKhY5Ad08JsssLmAQ2LP6Yz2kVZWtOsdM+xCmuyIYYDIT3OoKBaQDnnbCQ4ArVc6eC3gCFHbmM02SsYFtTVDTRlc5eml46pZ3qFySDuBIXbgePdTuE2UGvRciSnuiOsoBCm36OKZIIyG4dqSgBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777621654; c=relaxed/simple;
	bh=CwmkBnJdNTxMKX1dHAqHuQCG1IZCa9OroMsxgMgSUqM=;
	h=To:Subject:From:Message-Id:Date; b=ZoI+XZpwd6SID46HEQ4pDVb4iRK7/yE5jbfOx2AO/cz8xuctWKw5659BAyq0vjjmV8Yo2gLq0P9hUvHYrTrjf42KWs8PPArASxR1z7J7sESpWoVcoene6DNNOg7+HHWUISg7HgPcrgB34TI2jJ2MJOOJiCrOacsqWese34x2MKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c/EwZq21; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c/EwZq21"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA58CC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777621653;
	bh=CwmkBnJdNTxMKX1dHAqHuQCG1IZCa9OroMsxgMgSUqM=;
	h=To:Subject:From:Date:From;
	b=c/EwZq21L+q3HDOk5gegtU729t1BVtORO0zDYYJA5MYL5X3ZPr9Wh1xypgfJSnFW0
	 JBqgSRfoZ2Lan5DYP1Bc1R2iv9N2qp/FUs/vaPkn7NOhrIJ8d3s4Cvt91SCdABvLB0
	 HBGFWkhu/3x8zWJnX9Pc/yrF/Mea7vzjg0RI0nM9Kc7hGCJ070hpY4F/lYpahmUi/j
	 jhyASpyxEKMVxjCrf0AHjN0WpXL8h9hfDpTxbvUs0PYZqY4CUHjHvaCBLHgMP1y+pf
	 q1em1dPCLMpLg8ozz+tS6ATwgOdK+DE2b5DN7wp1TzHPNQkzCjg4y4W+hwqFB7gUrS
	 jb0Kek8mZ4WYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B73D7FF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177762165370.17781.15691882681057084860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6535dd9c047b9ae30f4066f996d9d0478d922b6a8a2a55b4e2dec6677a8b8ee
Date: Fri, 01 May 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777621653
