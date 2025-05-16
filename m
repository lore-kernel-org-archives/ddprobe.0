Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C820280A2F
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747438194; cv=none; b=EzAMwBbp0mUvGRirrtR+eSwra7hhch74PhBs7aWkp6HHBnI15kdKfiL7tNk50DW4UNtu4Rr6guNmwVvHPZEaqlEpXid+QkcinP9tj3JkBeiu0sV/rx2bzlAoSoNxzEPzw9g88G1xW/x1BYmqmGJmuDssWgOdQD9QN+m7NuctNHI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747438194; c=relaxed/simple;
	bh=uyWSrL2j9KifvAgEjMFfC1NOyGNgXqMi7+KxDVoKfNo=;
	h=To:Subject:From:Message-Id:Date; b=snhtKZPu9yDqlYuLVnTo34rbo79v6Xo2814w6t1Hf6sKJu8+L/n8SQ3uK0/dAXVWVXnDjg2JEYUVQ/dFkyQbSSfyW7VjWXSxV03y1bwYKCvFAg3yX0b6D3/9aXvMOsHabaqhwJ5hgmTU6ejcAhdm2eZGKa1siU71+CJ6Hu1mc8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ko9KxvXP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ko9KxvXP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E89C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747438193;
	bh=uyWSrL2j9KifvAgEjMFfC1NOyGNgXqMi7+KxDVoKfNo=;
	h=To:Subject:From:Date:From;
	b=Ko9KxvXPbk7P3PRLwk/0K3gGLtNfdsj+zfBG7S2DtKFbqC/EcsRjkYg42sevZ9hqX
	 czJY0cgS/R5pG2w5vbL4lEBJ10PmHeks+pKaCXfS10QrwJF6NoH8sXHhPwX6q4P/Rf
	 /B5tvcLh+es3kJwAJeTdEoKoRDLYGKNOAxGFhoPJUNBhnKT5YUhpGs6ZKgpUF7B4Ck
	 xa08PIkZ4Se+Qbizbaa187vWfWgEhiRHBaF1iHMJO1XygWVtB1/V+oSHuyyK5ENnqb
	 igTXhOwzgpSH8phQVL12++6z9MFGOq8Tbysq+AZy2s2xNob2H/SXQ72bzCNE+Sw57z
	 k3Zxq1g/k5+ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9165BC3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174743819357.17352.9791690642837537795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f67fc00186905ecedcdb2e7b3d8df33b00cf2d66a3650bdb7b62040f6da5bb4d
Date: Fri, 16 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747438193
