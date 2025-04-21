Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD6128FF
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745195994; cv=none; b=XtdYUx43J4njV9xla2BdDF02XOOt3aV3CShdwHqT/m1V3J8JKMMtAjFNoEAeXZrecexDoEh1nMYmGC54LC7HEPsJ9Nld/bhPMt9wkwxacz3KjJzBnerUYJ0llG0qvRJRkPnTMTLdsSl5vDJsti3TU40xeR6B8iUX3VucIkYrwrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745195994; c=relaxed/simple;
	bh=sXafIcFMlXzHfVe3+WBmwU7WcRx+2EOTArxAVGLxmmQ=;
	h=To:Subject:From:Message-Id:Date; b=OOoRClZzMSy56ZxkEmZoYkdxHtIuDcTkSrOiiHyk6gPiEzjYLlII+9XOnOaznVATcfw1AcHbMFzDd4vYS2VUT1CKbAqp+0zgf4VTVV65a8Kn8R1F4T9e3UmQCjQaNCdeviTLCUt0vk1Cy6YK/Ylb86IrGb1fDZyl+5cxQqz5XKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G6GPh3W+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G6GPh3W+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD617C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745195993;
	bh=sXafIcFMlXzHfVe3+WBmwU7WcRx+2EOTArxAVGLxmmQ=;
	h=To:Subject:From:Date:From;
	b=G6GPh3W+HR6mYvEsAbgcP7b4LDrmY6ZuY6iGiVUljqTFQEm+chn7kqDE1Pd76aoaV
	 sXgfuVZA72FP5pHNqccpdcJvhvZxojUqHXkF9xarPJHZMvI9OTb5RgOUHFUsX6DBWv
	 ZixPvwPCzjRAxkMcIlj7VQ9Rzbfm2LKuSRBmDdfZoavVphp4TsDQVvwa/aZkpGa9xo
	 rlXZSyTRl/gKJa3eLII2dJLuusQt1HKfIf3yW2Wm0bEibrQnJXZRKzKZ3PFMaH7Vel
	 trQwxSl6HM+2eOvNJJ9GB3ItUCAkqXq+k35ir4uYDc2W2njsF5kXQc0pz+oXnz0KZj
	 jI2NpPfQ3Tsbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962EEC369C2
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174519599359.28064.6312770523056407894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7e5d5775377aa50a5cabf29cb4f8e6ecdab2c315a1ea73cd0ad5c77cd57129a
Date: Mon, 21 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745195993
