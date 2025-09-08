Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282FA3128CC
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757352594; cv=none; b=kC1lVTgkfb9d32e7AVJLh6btPIXGoFtEX4PPXrw1N2/DkqTmsHDPegHNDftIq8PkKnAOsrUvbmfqDf8TOIi5kzj90w7LBSWEOKTkobcSkezxlCJYOcto8TzNNFV6zpTHp7e3vg8S5TEjsx2OFzxF/B9UiXt/nhNfKzlpcOvWi8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757352594; c=relaxed/simple;
	bh=1mt6bjj5EYPilmBEiRLYrtOnKGIKSQ9gzlwVS+Uzzhw=;
	h=To:Subject:From:Message-Id:Date; b=VrUq/5SL9ZuODkf0/2Hfruy5BcsebmNxxCu0652FT9MSXepu6jSrBwjmuEpsxaYRkR2Gv8gZjA1zYi9XqYe64loRUmC6SLmtQUKZdcbevKnFVFNRKIxVOupWymxeioP9d6u5Cz0hzMRS68zvTB1R2Crm/xPl+P6YkJCmUZCrF1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rT7RNmJz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rT7RNmJz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43EFC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757352593;
	bh=1mt6bjj5EYPilmBEiRLYrtOnKGIKSQ9gzlwVS+Uzzhw=;
	h=To:Subject:From:Date:From;
	b=rT7RNmJz84BX2aO9ovZjws9kgxR/suOI3tb4qo2gmIJIqbeixjko2bQs61eJgqcUq
	 fGCwD4JDiqbsY54tqgp+mXF8T5Rv9HcPFrbrdufE+6xemk3DL04vtj0wOZrwyrlQw+
	 PinG0hdE3xKmU/zwhysoJidYnQjmJiLq4XVs5zKlcRJxh0rx3Mv5t0g0ZrmGfKpkPz
	 YJ0pS+gKwLmgjYC9EqKgmzQhcc6gjMpd9pxpiMwHKd/CXreTqC/CqjnaNvtvC9SN6N
	 yzAdxS+bi8A/+GFtvHPzGhrV7bdlaXgae9TvbAOjxW1RG9sC87iL59bUuCfTvtghl+
	 6rZLwpvcpfnVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90488CAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175735259358.31740.2241637372265181658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1d73af22bc47489854285d9625376a6f828416a9239c2c89bb5a7a7c5b0e19f
Date: Mon, 08 Sep 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757352593
