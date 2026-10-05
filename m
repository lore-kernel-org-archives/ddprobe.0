Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462AE384CC6
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791241234; cv=none; b=BfmpIClrbh+mPTXj1fc4/nsQryvDfRlIhj89YqjEDA9TL6xJ9SFClAdnndMu2fQvPWYHcFjC44vQKcdjAQStWsxIsX1blSbQ3dCFtNMs2XsT4yjdYi+kBFRu46F+VvNCKKMu8lmN6pkLkQKEj0m+1mJUkebkrNpInwAAcZnBKJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791241234; c=relaxed/simple;
	bh=cwavNqfYydfuMndTnnalqe7EtBtElVI7eKJswPBB1rg=;
	h=To:Subject:From:Message-Id:Date; b=SOeUxLRHAPj9t+Wv1tfuAcAQj8M03IS4eJhA1pxtW0s+w4gg3p2bmCA4WNSRFOv9RnMe4hbjl1X7SQDz03SGfw1+skPfEDpgc6s8qUs59/5nvHrDSv9xbYZQj++/BOK4mBdDezChK5jS8Tp2XWyNTH9e+7EcZ4W6iuvZdnOXaR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XlP0Mo5g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XlP0Mo5g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA8CC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791241233;
	bh=cwavNqfYydfuMndTnnalqe7EtBtElVI7eKJswPBB1rg=;
	h=To:Subject:From:Date:From;
	b=XlP0Mo5gU/zhkJ5TnZWVlzFU19a7x9kldkMwfMrnBJRpgptOH5GLjjC/3tgMDLDRT
	 lxnd3TMM8p8VVmxlRmYuYAxv4QgDIjMV9BHOZll7a487N+NEc0Tc49JKzVEdKHJNxu
	 1LzPC5hQOlCubpyahfyH5az/ZyVi/MbbEpbU0lViPdPr11J+9uPC0z+tJbIOsYIyhD
	 +j8oLMXE9vC0VdJz2jkjA55aP+LUZeaGZW2vHHbEBau3Id1aihyyaFRf9Kn5jogIVd
	 8qwxFs2NVJsktU9OdG+s7BNq9FAV+TOkAqElOkY3Gv1yrh3Sk60OUMfw0+SQwN48m4
	 dF17Pet3i9FvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9142CA5FF5
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179124123374.19144.8280324732306933248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4ee5b3e8dbac1499df07e53e3aaa626bb5b3d156261aee626537295b92880f5
Date: Mon, 05 Oct 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791241233
