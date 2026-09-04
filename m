Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FCD4078E6
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788565834; cv=none; b=RcWFA6tGBnGZqsWtY3m9+JsLFooJcIqFm29KFWKFal+9dK3iVg4PxLcD2bOUjglhFyiLdJGQLciYCK38zGR/oXUaWjdXdrCFEOPMR9FOk8P45icYbLntPH3nx0GJK3It5wx7oy2gW9ngutsd9XbwH/RnapHzP+i2H17IJ0nyVGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788565834; c=relaxed/simple;
	bh=9P8RfqWrTb+1METhMDM3xCA/u2LGT8SSa7Vqvm0Dx1c=;
	h=To:Subject:From:Message-Id:Date; b=je1ZmubWzEVDgiC7ba31TMeIBSjJeq75/2E7U2RF9eWG9njTgZp9ADDNpzwC6KRvCofS7RZMBnB//klVXTaJzCj+kF8aBjalanCl3Cp1wzq+zJ6RC2etUfYL8l4SNITE6nVrRcKKbscAB3FVE4S3iH3hGzbqodWMhHrdXBLhXFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUo8RwE7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUo8RwE7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA4DC2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788565833;
	bh=9P8RfqWrTb+1METhMDM3xCA/u2LGT8SSa7Vqvm0Dx1c=;
	h=To:Subject:From:Date:From;
	b=YUo8RwE7R8zo3mobHiU9V6OI6S9MkFPjOf+Zz8mKgLq37T1yf+CdGQTON0cqOeImv
	 Pr6QFELMEvCPZnV/ZBr4reYp3vo6jYXdtneKrsM12vfvkwNCsNnx3ytzefbAbjGaaC
	 LOhep+D0fKuo1M0xvH/Bct+aenfRs2nv83gafsm/JCiYFikRIjnbcgNV76MPBeC/Kk
	 Bkch8PcKyAV/oxjQme3n2CmqUlO9F03mxdvjq/b9Z3TF+FsbuPI15iaOQHzmoN0tBW
	 sCbQ13gGvc5Zd1XIija2X9reFg9GrXy2UaZwsV2kVbpKG7vvYVq+xG9CeBLDWtekUm
	 iVDzjSK+f43xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6CFC624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178856583368.13929.2582281919277596742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79637dfa4a1500376457a2e8344e71181697b58012bb78f06376a9c666fe0cef
Date: Fri, 04 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788565833
