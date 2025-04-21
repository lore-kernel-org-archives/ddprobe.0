Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399A0261389
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745233194; cv=none; b=fy7LrgtoHIbRI27WcjTEF1y2X2p465/9bgD4U5ImoGgup6vbYBgNyonlExksrgagRpQDieLSduxQosjKO0pst5IC0iVf/uUy8CGobE847WIcVLszFysl+HySpoAvKpWFepl1BTbLUGLteg0dCVdEZKtRT2tLqNsidC1/9EP+SE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745233194; c=relaxed/simple;
	bh=cn4KpqbogLUBC+vTkb37aAKVrJRWoC0KqBYDdGdUhVE=;
	h=To:Subject:From:Message-Id:Date; b=YUKpMzI+CVmjEHsa4egITkkcY6GTRwnFgdDugMIInx+kzheK/RrXCpff61KJfEU+zPmrsa40K+7eHtAF3IvONyW0Ql+MzGk2b59xgKVYxoL4hsF7jRRf3ogU4NdoftOObP5l06gqfECPgS8zeIZlynMIjo8XJsgi5jdAti6fet8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bypHNWQp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bypHNWQp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1F0C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745233193;
	bh=cn4KpqbogLUBC+vTkb37aAKVrJRWoC0KqBYDdGdUhVE=;
	h=To:Subject:From:Date:From;
	b=bypHNWQpu9z4lBCv+fJRr2PPjKS4Bch/yxECWnDhl3LNabak+Gru44ypyPXCdnfK8
	 LMkyj+ejfoeY78ZGq0Dgw4y1PgvsJOcWlf0UgoIOooqycA+Y8EESujx7dtZmIaIaVD
	 0s9YYhMfFLzJxVzv40nS39jQUJhw5c0oR/iF84CLHj10XHNPupzW6nF52LD+CqqKmh
	 LP3mGIJ33pCKVrlztwTxeecxjUf76/7ZUDPb9h9zV/wXTsZ1XvoY7e5qihCMIwBOvb
	 fl23lXh8jEu2YYXgLeZWqN+EinyoT2qfTTVImZ9uGg8+R8caX6V4TVow6W+CGwynnP
	 YQbbBYSKMZnVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CD20C369C2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174523319363.5342.7171715124117630831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e9c42aed692fc0abf6cdc5bc4e9f7518626c67e1867814f7b034bd61adf52fe
Date: Mon, 21 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745233193
