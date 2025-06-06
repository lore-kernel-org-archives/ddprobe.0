Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B14517BA1
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749182394; cv=none; b=rknWVumKtjfAG4WuULtmwTy9NdZ2Gonn7zAE0akC4Thzji/uxjsD4/k9tGAS4OnTygkaZOqqU17keigtHBZDGwWL3GMmDqGeC87xZ/XHht7FP5wtnfp3yEuMUEGQN1XVlDOKZWZ8E6jeE1ogbOEib46PS0FbSlrLInej64G9eZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749182394; c=relaxed/simple;
	bh=tisaPKOuaA52DQHcAhdnqkLO79Edu8S9upWZeTdV0rc=;
	h=To:Subject:From:Message-Id:Date; b=I769NLwWp9btfQsTiua00DgfvK2JXX4uMY8kIK8tWliyNNr/2zyu4i34K3VQ6C7IuzS2715dyO1BfzI00OS4zXA6WQDWJuiX7n/QEXzpRJHxOfkbuuGf99Pgw9qDnkA7XgRiwV3JOnRghv5Dh5fMmQb3Fp/RRpknZL1DP1B7aQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=muv1rd+A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="muv1rd+A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA06EC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749182393;
	bh=tisaPKOuaA52DQHcAhdnqkLO79Edu8S9upWZeTdV0rc=;
	h=To:Subject:From:Date:From;
	b=muv1rd+A+jyoBP+yipTuLTkw1U2NZpY1KmH25EL1/2+k5Q4HKHcLG1vj43d+IBNQN
	 EtqiRYR9Dvb5L6jT0BLSyahpCSomqmfOZOXkUKwyfeTc8XGJ9i1AncLmmIKy+1MpWe
	 xu6wgTTpze9NuTnXanccjD722fp5Jrsl8ZydUmTDH6DYc8x4Jr7g2CNgBkkiF1FXM5
	 07DxaHSjRl+F5lX7lZAVAIDlYUuf9SofGDysTmb2PsjTPCJot11H8eYKj5hvPYTkgw
	 BBxD1K97OAy1OxQLCafhUAPFIVjmpf+Ge3FNg2TrOaH7IXGfuv6mFCnnqRAQq9/cio
	 Wx68e0ign0hQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9479FC5B549
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174918239359.22064.10910853309544962431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d565cf642eb849fb9d26cef52d1013dbebd8220c245fa62087678b415f39935
Date: Fri, 06 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749182393
