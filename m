Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA5D1C6FF6
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757160594; cv=none; b=FE65cWoYAcs87/UofJ4rLNbclHGHrm3AjknppnUjliKmtwPzfDa3VxPTIrq1rZhuRE/564hUzGiDnqdD8gleqSgLCVl7V0YjYQHZBCwc1PhPBAAdXtavLXn03uCOsOEQCcOvEb2h3YKc4fpaMOJp1+RAGHf2SFZeOE8xLJNvUDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757160594; c=relaxed/simple;
	bh=vgTdsvO1wuzzet3jb4WqLceAjIsHYywCYNFuaUuUmUY=;
	h=To:Subject:From:Message-Id:Date; b=YUy1G5+qHhKMuPuQHNNYUWIZvM48b+u/Y0Y9TnDcFEPqU/+vTX3rlGfIo2ZUiw6gXz4UNashm+gyno+Vs3lRAJpoUwUIzLyfcWtDBjLsfSvxUbH7qFIPxu6fi0PYRtrUh2AoV/5P00GHC2LIw8dWgCVuqPQbzHHEQOUeg/DGi98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=of7JaV2w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="of7JaV2w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C1DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757160593;
	bh=vgTdsvO1wuzzet3jb4WqLceAjIsHYywCYNFuaUuUmUY=;
	h=To:Subject:From:Date:From;
	b=of7JaV2wzEmpj6sUnkFMBYJ8MNkTuhU2F/Gi0ij67ke7A58sFNLEJ0MV0D01Lu1Y6
	 VeO3qQs6TFVVmP34eB5iH3AH0HikELWmiyzrsgn1k1Lxvc9HfAKKuGVpcg2l000B7u
	 vgCMts9WQNW16w0XjtBpg6f8LfsINanDnbamwhOM9w43OZX+IOV5j/KpfAW8ACZ4Dw
	 LuNmIK8f1nG6cjtB9pgvf+g+n4pV5lYDGbm0kC6IKQGem05He8RDSPfso2vEHkHzRL
	 vP6XLeyPhb0ppUuQm/KKeMo69SE3ont9R1orHCzI3ajkeb0WLVJAHLfsTtFMkP1oIl
	 bylx13eLe0wcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA36CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175716059357.28775.5914704543867815784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b881f91040deee2c17d7ed37c8770372b8dfe2c48f7d9b708f7e856072a6540
Date: Sat, 06 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757160593
