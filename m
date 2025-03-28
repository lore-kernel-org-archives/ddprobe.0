Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D1D20E316
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743128994; cv=none; b=NxaAG6qy6GgIkuMebq0yAxt+4f64w4wUGJ2eVO927+BEK7NDbXjrO8l1Nwt3AqaUBR6TR2XkPiWU9jMM6dhz/3DivLJXgpcc+pwd2kejcxq+/JAMZjXcF1X3sPZy1VS+hF7KdzwIrwkvRAEMaPU2prLDpr3sfIidYHM2Z/JrCBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743128994; c=relaxed/simple;
	bh=XiCpX6GkqBQTkxiFhqXcb1D3OX82svKKhDYgv8d+1fo=;
	h=To:Subject:From:Message-Id:Date; b=jLn7ec9coREGYZ+nNEDvoaiNkM2zPH24thv0zPWCmw4Jrbj1oC+a9IQPNhECJEHt7d8S9T6ZWvt6/w6D+k3JvwwTDfpOKFxDYO+k57JSL0YBsEQ7k54N6FWMFdZRByNnVkirrQgsmcIJE4QKPVjMtn5fjvuGSW+/uDeOSjUlVM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8QkiuvP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8QkiuvP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4FFC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743128993;
	bh=XiCpX6GkqBQTkxiFhqXcb1D3OX82svKKhDYgv8d+1fo=;
	h=To:Subject:From:Date:From;
	b=B8QkiuvPQ1Bjo6rgzbczOQ9OjDiGXdhTm7I11hO+n5Y6vchotwMVGEmxfrK7mndPy
	 hBmI6hOInnaETwdcTnYCHo+Ip0TXYqeyTbzWlbiRX3wf6bpZ0oAI4jl6PeDa0Szpom
	 rAtV4ID+nkr79hH47NYxu1LoqrcoQ2GOP+VvsnEMKB8NPZjCF0eq/x1gNN3ftSD8qB
	 5k96LlIfLY82/++WU2QmzyC9kPAlkoT/DXhV/BBWTTbR0nKxbClqG0Ym4S7un5fYZ8
	 lyO7rbJQ0Qe/U3CwY90UFeKtm/PQw3hrqvQYtF9Pmg0Kv6bzyrjyDJwfxqJheLK4vU
	 3N4g5yMGLQ81A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99978C3600B
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174312899361.13192.3008536132997503952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95c6d14e63458dc66e9a30e6f760dfef1e8c2328c0dbe4b5e66e8aa5e8819884
Date: Fri, 28 Mar 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743128993
