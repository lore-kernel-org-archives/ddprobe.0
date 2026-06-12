Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5018338656D
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 12:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781268994; cv=none; b=EAGe155Ouvn96KjGsML/2TmfrD8j9TcIlHvI1AO6YQ5T2jAKjqvVgYfENIfgKg6MNE+dGryl4hGckUcmlw79Xh5zdpLxQ5biKR9yD5bi9ZhOoA5tb8wvzyBojZGQ1wJp8PLwzXEJsaY1Xz2kU02fTwsljxwoS5pOMVTvLBgv1Q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781268994; c=relaxed/simple;
	bh=DkZaiTfQDQfUVursvhOinjGQVEAu0gAATQcG+9Chi4c=;
	h=To:Subject:From:Message-Id:Date; b=I6m+2/4uKvLWjLhT5qNIMZOczaEDboYYm4KX29RmZfUAcNzpH9UgIaqiaaYIsqRpFe4GAlLb3mM3JW7LFOx/ZsK4iZkZBM+uYt3yMLXjCVymKnYhTJyN37FMLCdXTVpc5Hm68sMDWVtGIzPs/aAl9WG89+7E+SopBoBXXAMkNZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPdCTDDF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPdCTDDF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04A5C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 12:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781268993;
	bh=DkZaiTfQDQfUVursvhOinjGQVEAu0gAATQcG+9Chi4c=;
	h=To:Subject:From:Date:From;
	b=EPdCTDDFWO9gtBYWHNUtxBzxOeug0NLwPWo3rAC/U9zOvCJ7NRSv/s6TuNU92nCR1
	 tIsPo4In6Vyd+IgUlxOvQFn8iJiuhtfaz1kyUd5Nl9OpgZ5Eci9I7SF3aWlFSPVN8g
	 8KMnJNVs+9UoNh79qW1uzWsf9W2+uCX0eRkM93VYEzHoJazWA/kUZ+y1leNRe7TPe8
	 JDLpQgXboWLeT1UAdk/EFJrY3WpHumnCakYYW1woRCmKdtEHG5AgORg9KgfMAuyufx
	 xKHgaCjFGxQUJcGNuYTIdCT5Nl0XIJvxjjapwS1QGNMIRbDPxfR4l5RZC+R6G8876z
	 dUAjGGr1XIaXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01B5CD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 12:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178126899371.22109.11054532019104572139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7a81e607f36829947f20ba295e7c2493c1a27809fc7631811e62d56d65fd939
Date: Fri, 12 Jun 2026 12:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781268993
