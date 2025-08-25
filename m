Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EC61F3FF8
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756148394; cv=none; b=JoAU+nxf15cGp7D61S/QJp5zGZ4J0trlUCV6J2U296zPucQwFB01loUIr2f0tIC/EXNePLyxIbNzLUO7ComUNyonLoaVdcb9aJka0CNwvdEEqnxt/00GbXdkD66MujVu1s0RR5Q4DdRT3i8DLB3wefUctY5zf4OrJaoOvhF1kHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756148394; c=relaxed/simple;
	bh=BSLXRr7xpHJosMQOY5sJ7nSUaIg5bUnUq5vsEguU9dM=;
	h=To:Subject:From:Message-Id:Date; b=MCEp3XaMDxn5Pj1EABzCvXOS+rwpAmAkLHhFyI7/j6LJZPDmndNDq4uMSSRc6sBgTv3ZW+urnzFfNH9jXaLyG0w+h/Vz0fcoCxglctxvGD7YrfktWyNCYqVnqp0GuXyR/ik8bSE7dGASWzUZbuM2Xo4DWBn/evHtjpvUtc0N/eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LzvczE8Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LzvczE8Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A365EC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756148393;
	bh=BSLXRr7xpHJosMQOY5sJ7nSUaIg5bUnUq5vsEguU9dM=;
	h=To:Subject:From:Date:From;
	b=LzvczE8ZiutbMEt53X7d6xG0hL9zCUlGaznbvmsnMLJZuSAVOIOCN4NEYOQRRnfVi
	 bmRpNnAgOSxE1toRc3mW8g6Xl/6yZvM/fWM+xuvJMuwxuw1yw8ZzEZpJYX8zG/o0fj
	 6b/qhodiAf/LFndS20TaFPd7wpEnfdcFSg/u+SJxcmzWmX0Nvhai/c8VvHHgBksaNS
	 j48HRTtbfHqra1WCQ11X8mposqMnPu5cU+K1zJ2mFA2dzY284S23zIu/tTjtBUytZg
	 cXGjoPNhby9EDC3cAaMtqeVm8L7aYI8XXoitE8a70202dVH1y47WjIbnVaVimoQfT/
	 vW9/rJITXxsVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9132AC8303F
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175614839357.930.13419380045843191563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 657ee35b857563c75c9c937d3cd48f32b301eb895d700b50456aa6ca4a5a87c6
Date: Mon, 25 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756148393
