Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43BB82AD33
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726253754; cv=none; b=O3L+BCwaw/25J6OyGHjRaquq9ZjlVpzz7x26vqGLUCrrJptshpswikrddraeQ2iNk63P1nXR7Nz4F6QicYmJ1lcN4Io5JnBq65DxYOXQ+R6w6FHyDbVmkuNTR+RT7KMv+OSSS5TDmJFetRCLvviGTc7hx8pwdgXx+PHW+kT+fMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726253754; c=relaxed/simple;
	bh=PacHm7AsBF5Iqg8gogvvfR9bsRfafyBjuP8wvCWLd9w=;
	h=To:Subject:From:Message-Id:Date; b=PwK3von1WOzQlM4NM0lsT6UEaNDhXAtVeRRuhupQy+cze46bTy9x3wMZexUgI4fZEs/4ZN6gfS0u2WA/rLUkTodFmSkX/AkDvYtM3fBOeBEcdOK/TH8ADX9Q0jbhk6bCcFiTmCd7rSWUFN+zuMwpikU8IBOhdDzWTEIL8ZiLAHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WoHTmpag; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WoHTmpag"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B94C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726253753;
	bh=PacHm7AsBF5Iqg8gogvvfR9bsRfafyBjuP8wvCWLd9w=;
	h=To:Subject:From:Date:From;
	b=WoHTmpagK3rWteNU9ise2eSTZ1raP/6PhSO5AlxA9S67zsFmMQA9OLxlARc++1cwe
	 BT+8nB7FAhsY+MWsK+SbDadns96a6a+g9hU/3/c4xeOxXDiTIbNDBH4tqYdHJCHepI
	 wspcnQ8wvRLLByYL3LVyYwNpT60Po71yVTUxC6pnGw4RSJk5DOz1LA3rkaEDIPMoSS
	 Ao8hlIyL5pNd4nNrdyAfb/Em0TNZr3Mg+PURpLk0gjxYPoxqTEtZNAEURxTNuWYyse
	 i9mhpHpH8dsuE+ZoiiMG7S+qVrokgm6+TkWTUbo//QhZpfz/zYG/46m56NIUK6fXRW
	 VeCukVj0JPP8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CB3FC6171
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172625375360.22262.15316924122532349674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cfd488959a71217ac35881123bbdd60eec24f9983bbd657aa3484fd43cabf2b
Date: Fri, 13 Sep 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726253753
