Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D8092652A2
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 11:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787310034; cv=none; b=LDH1Ez6K+kpTdImHLANqJP+UHxkkhO10RzpXRf06tTEIX0inYx/dmbeRZGzKKj5fJbj3AA4BnNaBeKj8WD5ooPYUBP168ys8vyRozrzepJnFRp698V2lxW9lfmuPxZjj89VeqlG53XBk9MxmkjrLDOOv7DLiLqvjL5HZgzrdsTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787310034; c=relaxed/simple;
	bh=M0exnyUzGLth93h/uzUtQ8f/x16iulQIscsky8R+WiE=;
	h=To:Subject:From:Message-Id:Date; b=mis8XUlR9JqlfIJJmI9UygIZoD+Z3xnZ7bda/Y3t6x4kgLWDejB5FpYmGtfGyWcNpU4ojavgHfRyxfbnUvyolwncXfOW7NxXW3/wGXwFqnZqBmlBKEdpJvuPWxP4OYm2obc0yHGIoOSGjciRg/g+7ZkJuOPUxmjsPnPg4zUcs7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BWvoCVQz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BWvoCVQz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF9A7C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 11:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787310033;
	bh=M0exnyUzGLth93h/uzUtQ8f/x16iulQIscsky8R+WiE=;
	h=To:Subject:From:Date:From;
	b=BWvoCVQz1ap8Z5lyMYGy9EIwCezHlKBTJgkoEBURDnLNL4mzSVc/5GdG9IG6/OhJ+
	 2QyREtDW0YYmaFMIEuTHcYSiLfYLDTqXrRXJWPOMNVl988dnb+AlihYR/K5xD7wC3Q
	 NDEG7/OjEQPg2jEYtrPTw+Bbs8MaxVCU0OhM6+aJkduEm519DK34jtt2IHuCEDiitA
	 HeQzGLnPYMGISPC5x3Ls9sSBd0rzgnhKLSlnoKX8YSSh5yi1GD+vTGN/pwJz3VFiDU
	 UeuO/jRMCydjblJewz4TdF/gTLUaELvjILPzIG7vyBjWK4hn5e+Q9ezfy+4P8njUNg
	 fa4KX8+yKCiTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B82D0C5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 11:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178731003374.27598.12114132423296637240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc54f65b65310a44b35253ad5482e22fd11c0ba9f76fe8fcfd82cf9d9b44df59
Date: Fri, 21 Aug 2026 11:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787310033
