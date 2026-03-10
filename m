Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13AAC3D171A
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773175494; cv=none; b=enVB2IXkbSDvggRvTUMZ+eC/rEh1iSd9KBWSTzml+J3BE060ZtJ0rHSu0ZtwixkhfLJSkXCPb1jekslh7R83xCI2PI3LT8DLo4/aHbnPyjipCHIECVXPqzTvHRi12ls1rb9ouxq2tuHGelfW5/LvLdurlNc59i0eieEV//SgICA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773175494; c=relaxed/simple;
	bh=2JVBCSmIeyS0YKqQDLgZwRHn+z1D/PuXLNxzpt3qSX8=;
	h=To:Subject:From:Message-Id:Date; b=OW6d0IWiBIqVXRvLqGdZ9hcuol9R6868VdU46ZXLMzt4iNSuDOBfUXyU+8SB72CDjvUcacthvjuJlSHS2Unu2tkVaSSGaYBMCDROxTgY0YPyscsD+Sc9i1IcBityNjLRdQPyaF4ngEpNqNmnyBCjMNk+3nqOLYubGcr/B78x1ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zmxk58Yw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zmxk58Yw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD427C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773175493;
	bh=2JVBCSmIeyS0YKqQDLgZwRHn+z1D/PuXLNxzpt3qSX8=;
	h=To:Subject:From:Date:From;
	b=Zmxk58YwArLk00tHqMcFX7E2hZIWP1eJGmQyijBrr2zwq8IdqQLz9iv0CvJzL4YSP
	 n4BqmD8vle21MRQZAMnWezQMVL9RtuMlwPjTUM/QyEaMz4E0yLyYCePpQYbHA5lN/Y
	 N6aVbjG9nHHyEhqBTcw4t+3zNBWPKpaJM1mTDonQLKLt6yZdwB/FcGeS2lnzd797O0
	 wz/2TM1CM2sq7WKPg/qT0S3Ywf8yWcHoFcCNEeOmqkidVla5/ejD8T2toJzmgxGJHG
	 WgZNXbS70U0KPH/CNy6Q59V6ds5TiLpBTkO3dXV0neS2vGvG74yi3Q928KKyjywvDn
	 +juUuNu5TKj1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7D1FD4F3F
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177317549360.7789.1763729125605082139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35f91df827aa8cd2df9f1104370f340cdd607646bd620df3762125f0dce64955
Date: Tue, 10 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773175493
