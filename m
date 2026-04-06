Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A0A1482E8
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 01:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775438134; cv=none; b=D83QAMooHpu1hrhcK4DHABUDQlYveg49BexHAFDn8MQZCP/5SRqN0TFfiNvJRdCtOmbvGif1SeCFUOKKobqsbZRX+dVzJ4OaYFf7Bf0ILM99MJ7zz7OtefCY2z09O8FP3dJvErU28/+qJpAR5nz6bAvo8LS/TVyhzfH/aiq5DV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775438134; c=relaxed/simple;
	bh=ps+Kwa3VGtuJGTHUAI2EpPn/S7lqNyIyokPs5aIEQmY=;
	h=To:Subject:From:Message-Id:Date; b=FWv01aN0esDveMGV780vr6O1zzy+Xc9fFyTICRldKHU1HbnW+p+JECjLAASliomiS3h2g6B3YBDocDEt3w9Qchvc1YVGXMMSqKac+pX3BSP8rG1hMfI5Lgha8T2b8Msy/nMnn0UseIpxLXGjCyXe8YEBZszAV1WByIwN1dmzaTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l97XzHk4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l97XzHk4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C472DC116C6
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 01:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775438133;
	bh=ps+Kwa3VGtuJGTHUAI2EpPn/S7lqNyIyokPs5aIEQmY=;
	h=To:Subject:From:Date:From;
	b=l97XzHk44WXoYryTK6VqtTy2nlG313jk1LRFobzbcdSGwF7X+TvLjyjBSbs9RUJFQ
	 ZP70yRKl0ekQj4KCCcDWF1NIw3VB7jiy/U6uWHdoLzzc3rO5HK8oKSmdcgW1K18YMf
	 EGa8L/rn5fxMHXUctcwM9tJ/xwiHq3hv4tRCiNmo03RjZqvWu7NpQMPCChugAJFNeY
	 OSmK837MntNf0cMrh5Gv8v0QZAbNHEyJTOXyq/G++hsMmAmweRDJfr/XSuqICMfVbc
	 fK5B/sNtbb2tSouJG7czZdRDNBnUwIq3vwbmkCtg6p3En15I34z1VUjnHVK7yLl3/j
	 zoe6R9i7woPew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD6DCE9D82F
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 01:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177543813368.8331.11756819816449210385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dea1ee68292967fc9dbc5ff024a12da26d3e07d9dc9dfcdce95ba6ea00f3dc9f
Date: Mon, 06 Apr 2026 01:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775438133
