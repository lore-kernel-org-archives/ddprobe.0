Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215EE1B4F14
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735996554; cv=none; b=VP9/miaWJQZYETGOrJ2O5ek7o4XtpSkwbuG2sdhn+OFVuJPUmIBGNAqGFupspi6kRfc7hmU4YxHY1SfJb56fAzSS5hdwFPcqC0hNJ2OyWu5tnqWpJT/I9l+Bd5faBP4yHPfNs41O73CqcbMJkkh5ftJhjA0JGbmv8g4WSQqn4wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735996554; c=relaxed/simple;
	bh=6nrL2WcjQcDkyZnGvi10E/IR1gqZ0I6h7t9FcMtZnZk=;
	h=To:Subject:From:Message-Id:Date; b=eejvCIrrUWjFJWwsYOQxRK3xhXDu1zFJ5Ty5XuXej+ZTmU/edPHaYGrbZZCQXy9utRQLmKyDry0y7d85L/5Oy/tf/9+gw84XrZt4MSSyY42buKQCueVVMdG+1ZiDT9AlEePmNVR+Nfy9fup5q+7V4Wati52DxIDGg6Oj22VKqdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOb+cKCx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOb+cKCx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B56C4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735996553;
	bh=6nrL2WcjQcDkyZnGvi10E/IR1gqZ0I6h7t9FcMtZnZk=;
	h=To:Subject:From:Date:From;
	b=TOb+cKCxvETV5RnQcr7T3Epz42yVa+r7KnMUZKieuCRPUA25d6gAQpYrmhuME3DSe
	 QHtFBDWJHvTxWkvZ1TmSP6tEKON/dleIcBPCQMgPyG5DEe6zUJdluCrKiXJMDeQ0kR
	 JohSh4AXBZgYRwWGXvDgOfXwUICqSSnbB1yoXWpKeg7kUSUHO0WhvLK/F/FkdaEdFw
	 132QDRlHbsTriGY96Vg/vA0WtvUZzfpq2m+v40sF2XcgLX4cGMNKA4GeIx7rJMo/xh
	 Y7v6TvdNmC5E8dV2YL3ZT6gtZVOoVyxwm6aqKpZnfzEezX+AqDo3o4qJiLe5qlXOPl
	 u/j8bhmZQ8vxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918BDE77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173599655358.8033.9221673416850874819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab4ec31591b6eb42cab37d8e0536f9c2d6c9e5086dd84c92087f738b13a39d3c
Date: Sat, 04 Jan 2025 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735996553
