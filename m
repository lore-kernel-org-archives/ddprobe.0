Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E3F2356C6
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 19:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781639194; cv=none; b=RCydXLN0WGTeFg6uGaEPZDzLF6xyKMNGPIwf+zL9eOketlWZPyal0gF4z8IPDZIgyInLBYvHvKmPyI8/A2ADFaX4hCCK8BK3xINDDxqhn3hJN6hN94rh0QK2v/lTdAnPpSxBeoGLwhnvIhBfRBL8DIUfWIE2Bem6Wwi8qJmsoFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781639194; c=relaxed/simple;
	bh=NC/xXPUKgwmunNpMV4186OeVkHLunqhp4y8Gy/APw/w=;
	h=To:Subject:From:Message-Id:Date; b=CUQALqiXaHKuN1T5WMpYaDSrz8INxvDfLByby/qlPlbEJC+VWmgF9M5MTruBOLz3PW91F8ByllPMSCrPHbjo8fuabyrLzzPA2CS7Dz/6t5hSe8HLEs9985XW3rFKKO8d98mT/v1I2ED4+DChT3MNwT+QnxoAWNd/pFfLKmJCLcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFB8qKai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFB8qKai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA39C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 19:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781639193;
	bh=NC/xXPUKgwmunNpMV4186OeVkHLunqhp4y8Gy/APw/w=;
	h=To:Subject:From:Date:From;
	b=bFB8qKaiVjDp0nlXDYvtSMkuvv8L7cuQPKo3qQfsajEB+NsXTqsZoZllX7FFnWHln
	 prMiV/us92gUZ9edXv7OvtrmjumisL+z0ol2LCrPamvIGO5vCZ0yVAhoLvrCwfZMr1
	 woQ8XfVY2Pq2jmc+gHmljuiW0e42KimU0kxa0X7HFdkbfha7EnSv8NWX0nFrPR8ldC
	 3UpgesS9998BiPQNVrD2rCktUEEg2ys1wTi0Pp59Vdok2hMVxdNnywWLYsZDXz3fiJ
	 enQ7ZGwN9ZbErq8Xaw4V+aVFnxRl/Ue5q+vr7HQM1TmblO927oBQ2Uk4HnDYsk+5oh
	 2rk+RYOrblW6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD582CD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 19:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178163919370.9354.15409210623148697798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2950bc51501a8ab1cff34e8b8e0c0432232fbe2c52570dcca69a4041a229dba
Date: Tue, 16 Jun 2026 19:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781639193
