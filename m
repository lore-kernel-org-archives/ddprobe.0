Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D1004086A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 05:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783747114; cv=none; b=hhzKibSyjOGMRrqRZDKLERsRtdSYQGnJKPGhFd6msCPqlG86vsaD/5bIRyPrmNz9YOgGViFm7g4krMVmbF2L++cYOnupzVOJrZPZymPeQMxKUXjMEXKksvCyNmVJsOQb0mRXINZ+yU0M35Nx5yn+Y3S5W9+nsjQnEwWGyOEM8Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783747114; c=relaxed/simple;
	bh=vWepyVxYlXinwKFUyxUJQVAmc7eVtjav3GL2c8r+W+w=;
	h=To:Subject:From:Message-Id:Date; b=IRUGBR5QEa3MLmmS3a0E5LZI127QKqfZVa35n9WwEFhMeIYoRp/XQgmSpH2fRAyeeOJRIU7REEvuCvqHvwRTQOFlpw2lrBFj21rHbSAzCmf9Cpw2lfCLgABhK1ZDDQap3q2Hmoid5V0dZcBuXVvoHN0oFU8rEroVWUyCh0VRbv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qn8bWbAa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qn8bWbAa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3016C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 05:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783747113;
	bh=vWepyVxYlXinwKFUyxUJQVAmc7eVtjav3GL2c8r+W+w=;
	h=To:Subject:From:Date:From;
	b=Qn8bWbAaOBa0jP8EGOy8rWrbhoBrsKWjyrcQslx7eTArq2KfE2sVp61PXb46tpF/A
	 q23Ymi8cTP4fU4gJ2v+r5HDYrBHmFIaGwk1LJnDWDPiSoMXhBgemRkKSSfIPLLizWR
	 TOfDIzWXtQ+6XpHv3hRLE8gr++xAFycHWKPCnn4EeFBeF5/jgYyoqkQ7WrPgD2L+9A
	 YTNaqv2ewGLNadhtEOUjI+V1Q9CVl7YA2xVnIza3z0RgYW12o8my+WjoMPhy0opLVz
	 Mh2LnJ0b4fWBIyBqWlSzmssL/PjC9sbnaVxOiKQdOt+IG5oqg5ind7pWEbmyLKsXOE
	 0Vyo5GJCmGhiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD76CC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 05:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178374711368.26949.12015923058792594317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6d4893f5e7fb9d3b0f3a0baa0dfdecac24e569c037bfce861991bf5c836d6e9
Date: Sat, 11 Jul 2026 05:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783747113
