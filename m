Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3CA1F4C8C
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754947194; cv=none; b=d+IUI8kWRwc2vycZYX0HqwrOGu9z/JFe8rry8o5xpINX+AbgZ72c0++CjllzH/OLcW/0BM087nbrJwELA98KhLz+HnkEH6ou0/K9zEjhmsJNCn4r+GPGr9+daOQjKyzCcP8JmsEN0lf/xLTz1W05S7cmFyHxGWUIqTnzipJt8GM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754947194; c=relaxed/simple;
	bh=l8naNqc9MCXXgg8lM6835M/WuB3AjZ0uywQSBzHbplc=;
	h=To:Subject:From:Message-Id:Date; b=stuWzjuHL9DymGLjjMjlOzWTk+uRuAADzKYV8N3X5HomhySVF2ikcjSPzeQqXWRbl8+m8JXSQ2E8EFV1pHz61PY9tFcwIOLqXlu05o6JYx+3tgAexbQOE6hJzyrPOAjUk6JRz1lt2VU+35sj7RtWrZAUf6vvTxqJONW+cGPsroc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kseEd6hr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kseEd6hr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A404EC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754947193;
	bh=l8naNqc9MCXXgg8lM6835M/WuB3AjZ0uywQSBzHbplc=;
	h=To:Subject:From:Date:From;
	b=kseEd6hr88MW6ZygL5IY4ecobyFW3oqKLzzKYmE+I0EJ06Zj6PpvK51tp2Amj1+EH
	 jLuBIKCvsw5buQZS8E3CX3x/yw38Wx4oRi4IWADGbzQv8zr8Fm4lzhX34kQXhxvEEK
	 wqW/stZ5OxWUa2rXRKrF6KyeCEGrc5CYlsCzBU8keJ0gFXMBJIQQ9wxuGvSR6rrxSl
	 DCsWgSkllHTKvOYWvxtXjyka/oFrcG+OjB0qPit+TiWLga3IlK69EJrj6Ba11q/YHd
	 wzy7eGI1HeW8xbO8hOL+0tvWNeRdhl9n35LGomayJxhtTvl7qQ5W1QwQl1KBitU668
	 wGGNIxrtHw85Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92963CA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175494719358.7509.5869229638207127673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96352efcf83a1f22a8a1f8b48e007fada40170c3c04c053cd62279924eab8573
Date: Mon, 11 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754947193
