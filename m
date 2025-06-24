Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E53F50F
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750732194; cv=none; b=dFhOWLYpsPRqitATLlxcCHcUJL4Ga7E8av//LyEBv/m+SXJyaI4h7UqeRrdujljxor4pjrNf20tOwTiydDPEQO8qhA2bqHRIagATt+THLfxW8oalGHpvSzlyWLmsuxu2l40SMrHfv5ZYg4bHFyO6u+R4IV9s/E2ZXx6rtLkEfMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750732194; c=relaxed/simple;
	bh=8s6br5nIw+wW1YZRr9+MIPmils5A6PCbawDRNXkC+t4=;
	h=To:Subject:From:Message-Id:Date; b=VJuYYwcVtJIcJz4okm1i4xi7BVBcSDXpeV9mg3pycuQdHl9saeOYax4eB1iiJNX+xhQHM1IO4OW0k3LfWKDCFBkF5P57Y8YQaHlHlVMJLc8PPOWEahLAdKTUxAUyju3HESYKsAYY/LFZJkUn8IVk4odLiI5cWXP6r+V+q5KG6n0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoJoeF+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoJoeF+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6742C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750732193;
	bh=8s6br5nIw+wW1YZRr9+MIPmils5A6PCbawDRNXkC+t4=;
	h=To:Subject:From:Date:From;
	b=hoJoeF+MKS2cSG4xd8Yb+P13nRhSIx9iuxFBWDHBu/PfGBR2IDEjgaF/WrzeXaX0X
	 NMqW2Vy5ee6qYQVO10TXHTFLeREBJcwh1tEQpn5/sWlgxnWrgAaUmTIAMaaUe6FnKa
	 ls3TB2RMCqdmYTDAY8WrXI4D5h6GFHyD35WQ2OTqelHzaNgAeADjD6jehaGjXLReX/
	 OSh6tbH10rbQ978sEJkV/G/T9OO44iWL9QG7KnlkjlyOyYYv4IUdDNEntsfvDxh4yd
	 ud6so+40J7t/7l1TyV2bUWNVD656clCq22Xl2klv+k+lBMmt7KK62MVlxmmFfNGw9W
	 a09A2xa3ed7FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917BBC7115B
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175073219357.32450.15798880835610112022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9c150caa891e9e60f726eeac95bd5285a3a21357182b4e06bfdfeb346e0258c
Date: Tue, 24 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750732193
