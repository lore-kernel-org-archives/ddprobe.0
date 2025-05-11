Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F42D79D2
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746995394; cv=none; b=W7AJxzQNhdvdsbKDcBLua7eL/dvAKhSspACXh+ZZrp3hpVXTo3YjOJ8GdsRs6hlEfYDm2g6UJgkf4gv5jj25DBgdImTGb8gyrHwox9ZcTPjDXJUAe+3yeTF+lQgQ0Ngyt+yXgTBm1JLH87K0hn5yoDpMDLtJyz0M6mrcFNxYjLM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746995394; c=relaxed/simple;
	bh=7jdZJCb3wPMfERR23YptCGjf4jmiTAa7IEojqkPLB10=;
	h=To:Subject:From:Message-Id:Date; b=GFWB4PDnODLx2uFy0tLt/blxi9x06bWwtT8pCAYuQvVg5cxWIV7rcDYjNuuKlOKWoc8P2YA4w012ga1puVfIe37k62HZ9Qp9wpoXR27g5zBvKhpVeNyuvF70peghqOE2WG+gJOcRmt4+KelGqqL6+nKH+/SbLX5Eb76Tkb83b3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XEwZFBib; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XEwZFBib"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D4EC4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746995393;
	bh=7jdZJCb3wPMfERR23YptCGjf4jmiTAa7IEojqkPLB10=;
	h=To:Subject:From:Date:From;
	b=XEwZFBib3ct3/lF9SJ7KwqFYxhVMOdqXGu/otJ4rpxPyy8gpl0KW8HW52ClrEuvSi
	 Bkh4t/KPo6o4RCewuh83G9gJzm480754aBJxdJZLNt4paDEV3AweGYbFtdC4yh6TAi
	 PqWOmfTyltjq1NGkO9unGgy+tVA3cHEMTMLwWhXr5fLQzNCRuM/oMsISPsjCRLNZLV
	 9tXI4eaZMvxDP74vleU7H3IlyKel9MoSA0Xt6Adp5dJbPpDcMe7cedO/5/nX4ZHmDZ
	 9OcNzW4VOr5A+Hz22zgjkR7PSNYJSVMNM/QvcTcd+SCA/YJm+fPcUAIfI0ZEMIXXOL
	 w6PmUixbofxDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FBC3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174699539357.6728.7269897297828505770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7d0165bad662e1cdd954185331cd4a1037a8b497dfb2a581368ea5031b0bef8
Date: Sun, 11 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746995393
