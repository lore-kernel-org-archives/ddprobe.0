Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2C803CAE6F
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774288494; cv=none; b=VCrNN1WhJi4R1XKN4O/TM++5K3kJE/rU6aHYrl6uUb0XkSAmcJjkbOiP6GK+WxX9IMHAq5cBy1t6pkjmcQP2vsXHr8MimVJ7/rvMC7Rbj/IfulHtQVPfJmOdP1OeplC0h/5GESiZP8SFSYQLKM+WIlxEIL4CtMcdcqhMQSa994w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774288494; c=relaxed/simple;
	bh=cA3dsm5Uc1ChcihLg/wrF7E3hjfLRzFPavdiLoUetFk=;
	h=To:Subject:From:Message-Id:Date; b=KGkonQtCi8N0UO3kK5BNp5zJg6XI/4KrKP8spmEG87gbS+q1aL+dE9hYs0YUGpZsxYerzjv0NtBPfUYZVmjDksS4py9rZtgCD6nZoe4rrJhNbXSSAMhkeDrI3UP3vlw7CPvD0sltSvym/d4rVifjh9LJw6RI/rxYTOtjFJQWzE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRVlCCrb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRVlCCrb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA29C2BC9E
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774288493;
	bh=cA3dsm5Uc1ChcihLg/wrF7E3hjfLRzFPavdiLoUetFk=;
	h=To:Subject:From:Date:From;
	b=iRVlCCrb4iwX7Sk0ILBl4hadVwLsUBWQ9lPpWGkMFIQBSKp0Tv9WKfqDmmyGtX/ml
	 CTui6BNszTbrekwTZD4q41re38/559SNWbWLMEVwfaeGKBP2qWM5Alh7is+U0MLiXd
	 873y2hlndFhBDmGCzAlL7utqYEwb0ng8fVcvXN5Ed7xttIBPhWMG3F8Xd4abIy3ymj
	 3YYDHo6KWvelSMYWqJiZD9fnAVxEUSFD9CZswGaE5NNiGHMQQNuTZAPmgs2chvJGtK
	 WYOlZQmsqOKNTkCaeIESQuInYh66fVStSTgOxD+kKFHj67ILnU7jg8P/j/swj5YkZd
	 Ma8zFyS2ueeUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B14F483D7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177428849358.26285.6054460413156304532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f072394a44e3d2550a9ed2d3aca044627ad14fef4c0dc512a291c227faa2b6da
Date: Mon, 23 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774288493
