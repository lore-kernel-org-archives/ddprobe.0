Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F9AC1ABEB4
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723809354; cv=none; b=U+P6GN3vLlhKTqOLSVi+Kqn9mGIgfyXoD0c1ELWfspapx/KPmZdusIaED3ay+KfKLGfVv/UGfkeyU1WIfs/O6px93bAUj5ngCi4A9+D5vnwaztc4lLrUacRwHyOwoHwWGRwxULW8WJCbbZbpkAEGPVrxVRdvqlx7050iwSVclCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723809354; c=relaxed/simple;
	bh=RmiLF93UozDOVFjegGHOMjZwAu2X5hFw35Zkjv3Rp8k=;
	h=To:Subject:From:Message-Id:Date; b=QIp+x9IyTQIT1GkISajoeGVha9DP5di1madGzU20sekK9y4gthsmV53UJX1UnRLmv1CWdQF36AVEiSCqxfMmHWW0dAmazVLiPVH+Cvs9yJgacB3SH7dxWvQyTHyyEef5XnEsvUjqZXr6tlI9sooL2bh1eBmSkq2vgoCG+MBX8wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wy3BZe8J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wy3BZe8J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11E3C4AF09
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723809353;
	bh=RmiLF93UozDOVFjegGHOMjZwAu2X5hFw35Zkjv3Rp8k=;
	h=To:Subject:From:Date:From;
	b=Wy3BZe8Jl59AW+yJnLMycb8hTV30fhO+0SN1uw0HzUfmFUNSiG/uqXNd/sjr5HYfK
	 glZfFGGomtmguaLmktIapiLNdjrZqxF9jnz+XqywQ2TNUdEi2iDYVFXimaHxhW8tpZ
	 VCYoXpdFBB21hCL9GQMA9hOJtuNxcaXxQfQp0y7eHIMI66N7MdiqSdbxN4g4rgzPiV
	 37CUiNr0Miv5SWhDtFpN+4oZ++cXS641+fYtYr5sYfSJ++CTEgrEq2vLknuZfu5uNq
	 eGbCNxGthdecshud0/EgykbEj+CODZQ1CR8Y9rHC3QGvhcLDYleET9AGEHBuF6Hg65
	 7ZHMikmhfOq4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9391AC52D7D
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172380935359.8154.1018317248454226551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7076a045283724d3276a726a8e9a40dffe4308d5eea3ad2c9f09796c70fa3770
Date: Fri, 16 Aug 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723809353
