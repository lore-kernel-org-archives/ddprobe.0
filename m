Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F5635E936
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791437434; cv=none; b=VUnhVbHDY8JveoknuZgsvUxyTn+adm3C6NdiFFdja/aSs30BqBTHBxuHlM++LNkZ+vhhU4lrAbjq6OeVUoz8x0h/RANGRJ2VE8S0Sx/DB77MD+hOvEDSEjLmhcJdcp7yQyQpfbw7+rbFPeNrEgWGxoIrAvfQNgQJQ0ISsBmMdF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791437434; c=relaxed/simple;
	bh=cK8BC2oEzXrXWx5HwoJpk97JddHAMWtH16jFtkbmOlY=;
	h=To:Subject:From:Message-Id:Date; b=u6ZVdZ6bO4jQc/qH/abfHSwYpFvsnSxMofwDErxTFgI1ZYEadYu8IO2vdZaWrs+ddkDzDKcv2JSx7dCWsFJNCGgADhQBg6gpL+3qI0kPCfnvjD0zatQJcf9ghv9d0zPo3BbdedqjfK0lg4G2peyejPTt6PoIlQz1nVBqBFwBc8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Anmil0IP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Anmil0IP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E7CC2BCFA
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791437433;
	bh=cK8BC2oEzXrXWx5HwoJpk97JddHAMWtH16jFtkbmOlY=;
	h=To:Subject:From:Date:From;
	b=Anmil0IPRFExCYOhfiIKwuIlBNHabOJqPqnDZXak+dRh9+g6GFm+ETnNYujDCeoaP
	 ZYRlSdemOkdEJtZHXVrffBaLrQs401VUjbozIYNO4jX6mtYABiwqVRWBjo9uug8EDt
	 HZCgO7wGNFfNxWwK8TYJIKhR6Nfh6vb5B4QRU8tTexDUQpCmaWOtPxLz6UbfyDMbda
	 ztP7ldTk4TxCzblFSVIb+hSA4/2UFKv6+bHws5lQjH8bksOD0rOYCxF7fMNFBdId02
	 5H05EQ5iwCcRaq9YpEChhIU+tbjvYG+Q28c5uzBUqeH5+DGPJsZhWW5eFcVZAlbFuM
	 STg49cNJtyJPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BA1CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179143743368.25090.11252199080418917181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2eb75be1db06299681007243d4883228cc69299d8e6ac3a02d09ebc320d44dd
Date: Thu, 08 Oct 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791437433
