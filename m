Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0514E3054EC
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773368094; cv=none; b=cXkSAEId/BKbI3x1vtnQQFLx0lYlxcfVgKJqGZ7e7/fKnsq/zWlXKEjUXF/vDE91YkdZjFBRrmbLkl7iuKHAwpBwUTymUScC+DZ98rfhqKPxURJHR5sphiMygyDX2rQtPIbHWf0WMUtM9az1bWinL3g6CZ11AcMniVCXI8QMlJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773368094; c=relaxed/simple;
	bh=zEHXeumsoQa8XkcGBSEWY6rZ5Uk0IUijriUfmEnqLrc=;
	h=To:Subject:From:Message-Id:Date; b=a/fA7/qMyQ0bylurWGMtr5hXtLod43FAz1Bfv/aZ32XkKwX9DRoknKusLBCpV/exEI9otlrm1Rd/O3LXVBzjb1zkaGK9FBz79fU2F8pi/iC6cz2+Dp+e/J2gBXxnHgev4ZGCQ+YVico8U7MEsUehSBSd0ctEV9AW8x2jVvZAE7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HSdqmLee; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HSdqmLee"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE16C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773368093;
	bh=zEHXeumsoQa8XkcGBSEWY6rZ5Uk0IUijriUfmEnqLrc=;
	h=To:Subject:From:Date:From;
	b=HSdqmLeeioWlneV6oyvZrCYvhXJ0PIPOmPPOgiKgTY42vF8anwGMTC8fWn+YgfHiN
	 /gSyO249KA7WODO1dEHu526gkyI3OV2bPXhOlvJ2/WsitmWECnb/0pFckIbmoXRlFK
	 T7Rr6XtTwuxf3XVEnAxDOBQM8dmC0ivl4PJxgU+ZC2Ngzr1ULAzeuhjmavoV6bwVuL
	 FBlpzjoZzmu65ryvFN+wcATB3Rp3+IB61I20dz7xr9hGZwzSjqHlWlnpP2oass2O6m
	 dFwVKG5XQpLhbfk6P6Q3PC9sSQy5uMQoUA1qkHEU0lSs0eGu6SAJ8/colK6qGuCLxr
	 HLUmjMMwCPIuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F431106FD68
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177336809357.21864.8388798230662355243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21d1950aab43f7742d462c489b7ac69c70378dda4638587fe2ea7cef451c349a
Date: Fri, 13 Mar 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773368093
