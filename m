Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFB5302CD5
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779144034; cv=none; b=G+SBWuinLEpcZMv1LKZtQ18qB/8LmsVw0aw3Z0zDCb0OM+q+I0NI7V7svPwrz35LPW/r4C2I6U+htAPOgoYKh5eCDPzgL8RILpiJtTczDw15psl35rdc1UW6cSdTIxcDifoGEY/lz0aci7toLIUT6PCsZl2BWDBXHQxNuAhQHpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779144034; c=relaxed/simple;
	bh=pJxc/2OTUbUN3FbLnmkao/1Oeb9ng9oLYcXTDNHb5I4=;
	h=To:Subject:From:Message-Id:Date; b=lm3rPGuysXLHus1FgVIAhjKYD40hFvcBppPJKl17w+YK/xPFRvoK3e/ultXquDM2UvLfbDJEFkHOUr99l1viUdTQtsm2yH97C7CoKkI1Vu2U/ByQzyAbDnQuDEomGuzb8hjvlK88eDjtdHmdiM+eCf0FKZ0bg2W7VXnwwfSDGIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejrGp4ib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejrGp4ib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1796C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779144033;
	bh=pJxc/2OTUbUN3FbLnmkao/1Oeb9ng9oLYcXTDNHb5I4=;
	h=To:Subject:From:Date:From;
	b=ejrGp4ibR29CCVJPTo8b5nFSMa2Rb01zSBFi1Ikhf4KFCRnRTcMJymHDfd9IgUFe+
	 JHcpaE97qG27MF60M96fe2bITmUcazP3CWsj+C7UBThsnKcU3b2DsNobbiAZ4dbxVj
	 Xrngf45MjFhgvTH99dE3UNho23eV1GC7Zq2OBwQmhNpLogNiGrVSV3uhVjoGF7DsWc
	 Ij0nLC3njaP0egKBnnReZ24Sr/BQ0oNQtUhl4PBH//Mak7M1JqVZDz09uvuLjDcfuP
	 961m4ZuEB+zQJlo4NUVDb+/CN1o9NaRUALtUIYMgpV/AOpF0p1vQSCop7qF3etQA38
	 HvJvhGvMx7BKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA0DCD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177914403370.5320.4488900762148868885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87fd7e7c969ec260a516697d19c135ee326ba1d4994b1e511de3f6982ed49502
Date: Mon, 18 May 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779144033
