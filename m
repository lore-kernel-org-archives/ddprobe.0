Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0E726CE05
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776743854; cv=none; b=Fp1Qlq6E2qSrth/zUi3LS2UZkv4jAzD0bzzknfflciZggx7TERRuejmVou9ThpMh0+27c7/iNCU6HMbm803UXLOyVcrNSUegYOa7NnnViTyAu5gHdSI5gCv5NhkvYdy+SlBMmwfthtoqK1rLDPE71Ofas9+qKzwlyJk+apFdWMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776743854; c=relaxed/simple;
	bh=718mxO446ZEpmvwaJrVmYVawAiBw7YRbikTsaVQKw6U=;
	h=To:Subject:From:Message-Id:Date; b=UUvxTWGdowMNiwsCSh1JAhKaVE7zRHyb0QE4OrP1FHb7ZVvWp/UEnyZhbTqvprUkpMj+j8gE80zjP/uvQjArvGgfEgxe7MaLpvLy3oM7jZjb97CfchLzjuQGGAiyrE0HmPH7QoKLmvQAZmF0YTaH+KAdywQTO+6LKQz8JR0r35U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jwabh052; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jwabh052"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD3FEC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776743853;
	bh=718mxO446ZEpmvwaJrVmYVawAiBw7YRbikTsaVQKw6U=;
	h=To:Subject:From:Date:From;
	b=jwabh052LXuTfe1oypW/zfwVdMu/KDuxX49sObGao+skmFvDZ61UuNPueb2eWkrVZ
	 Wyrl8DhpSKKN/ljugsaGeSJNPeTeMDDO83Yk7bGoVPEyXOobexNkPx3Hyc3d2GizOp
	 2k3Yi2h9J83FK9TtnXwHGG7tgRfLXu4k2lb53WYLskV03QvznvZiINp+3S4kX9qaDA
	 uGhah6CdCwysrq/cO00M33DR5qyt1OrJcXlPE9jAv0lqsW1r3le7w2IkA7f/vahrTQ
	 4VAO+OrTQkSCtRlVN2X6/U1W+67Y3aY1yW5hbG0oo6IUgrAUmkG2SQd2C0caUu9ovs
	 Wwsb+V2YVqckw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF586F5A8DF
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177674385369.2829.11737632527230109353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8332bbfb23511fa6e515c87a639e92cb35040395bd9084b03702cfb99d250017
Date: Tue, 21 Apr 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776743853
