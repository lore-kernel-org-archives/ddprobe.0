Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204E5169AC5
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729869954; cv=none; b=NIh+hxfvPwpoirnc9Lo5fNlabQSYi8ixBEoxwZh28bmKl/89n4xnbflY18mphPBW3W+6j/qAaHDL5KF9qT42S0NOhX7xLRUuEf7TjQ8PaZ3Az5IspYTPWIJSriSHuif1GIzobR3NRNRgdkwtfz5XIqVol9UJ7cBZiTnJ/I2xb7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729869954; c=relaxed/simple;
	bh=lmgrhf/Zq9GIVg4reM8ljWNqt/GK8H0bhpV+vxr5GzI=;
	h=To:Subject:From:Message-Id:Date; b=I1Tz+hXy7WEGMYYPVTRbc78AHm0vmIxDb5O91wIzqD7bhXh7HyLXLSmd9/4/XwBCirYrohf4gDkplwp7hUVHt3TQJR0De8QVR9VaSOP3lVidIOMH9QqYXLbEuwGIIWL0B6mot5upTx8qC5xK1Ju8i4xgh4+tRkEW3v+r38AzH8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4UVnDZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4UVnDZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA888C4CEE6
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729869953;
	bh=lmgrhf/Zq9GIVg4reM8ljWNqt/GK8H0bhpV+vxr5GzI=;
	h=To:Subject:From:Date:From;
	b=k4UVnDZYb21PoYaxtBApYYlt6qK1PPtYhTszCwRlspWfYMLvI/OyCF2iFheh4VV2b
	 +D1Nu3WVX3sSN5kanAwCSd9E2wrdu3oE47JCS0gMJwdjszpMEZ5VnoziSO5Bmmlvh1
	 NjAfBrERxedvtjMQnae9aAeD4eAM5vmgd+opTJ1lvy7BUJEQGL8GgoyQc7k3LP9thd
	 wnNTVSsdBChz5Bq774x94s1mggi6bhTI63fRSp6htog7HbIh8wRzTRtQWdHifcI6iV
	 s+Vlwx22UfkAw66pVhCLISLCT/6W0k1wczIAePnTp6yyTv11hvEay6ZBEvjVk00uxX
	 ZAzPsTjXyxXug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFABD10399
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172986995363.14973.671402256210595300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86d81fc1a34681fe34a89bb6e19b8123852f3c7970052576e3b8f98575d86c4f
Date: Fri, 25 Oct 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729869953
