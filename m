Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9321A17DFE7
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753571394; cv=none; b=N80sP0R7qUBMsZErHQCAcGDBUfc/ndY+RFBMJ7p1/CZzeqP4o+b2BC2+3kdm+GkXJEsQZXZA/+38MXxlcPM8DXUp8ZWKL0pFVWX1+H6JGgOPIkinVQfkVJldYk32DR3rSdn5HdtkyKlDc5cTtjLZAJesvV8nGnp9BWG3JbQZpAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753571394; c=relaxed/simple;
	bh=zTKaipb+GMLMv9TabCWAyM7f3vGikfLFHTl7oRMxidg=;
	h=To:Subject:From:Message-Id:Date; b=X9yvs4wjUeZsHYO2ecrKHmn7/TIrsAEufUxyDJldYLbr3CyqfNDezejObwM9Nt/sOQfVHgWChrOqfzeWDHqxKyBghWphi+0gxepd4yuL+Wwl2gtMVc+y0i1SqHpWVXOLwvXhufV3haQF1wafg0KZEs8NbfSGA+8P6M38eUGFlJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bz5SiysC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bz5SiysC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7691C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753571393;
	bh=zTKaipb+GMLMv9TabCWAyM7f3vGikfLFHTl7oRMxidg=;
	h=To:Subject:From:Date:From;
	b=bz5SiysC759hAKlKGfMJXGdyxeRUkT9LAbMmA1F8JgYj+wq4y2+YOPwt1qNR9WGa7
	 mXu37MLBzLzI4jke+VyN2KrbPwu0U9pNM0sN/RvWxXvWMv2qmMVPeqPopPQmoTbaoH
	 26K7d6MfUtJ6ZFFFsEHXspeSUwV0L4Ok24ojVE/0yy2/Vr7C4yEIffBixSV9Gaq4Es
	 UNklbweaPIlMNx6zIn74/Kuq8ilxhUYi2BKQOmBE3DxEQQdqx2L77QidNXGyJk+Daq
	 rlUjWxPavP95tyt97FqQnJLTXwXMNNbYhWpuC/m6q0IpZZc0plN2tNe/UYBK/rqJtu
	 fGHOh2br1lkEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91858C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175357139357.13747.6872565250640401391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5cf049506b7d43045b68736e4f2426976c02689554002554369be7607b95ebe
Date: Sat, 26 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753571393
