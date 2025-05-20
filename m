Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8F110E4
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747727994; cv=none; b=L9+YJlVE+4lpRW7P7MfaY679nHiQma+vJYTQKJPxmpxwIh1VtNLxssE/e2jYvslISSp3UGEmbnvBsDKUD2avuaiNmIHYUmLzHw4d5UqWK6HKDIVryl8PG8gnVJ5sql/w6Z8Sm0r4bZ0NxIZE3I6VixVQxCVD4A31V/K2Q93/r34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747727994; c=relaxed/simple;
	bh=gQaTlH0E79Svrf5aBTiaeiFyw6W4BFwbiazSjBcpkj8=;
	h=To:Subject:From:Message-Id:Date; b=Ji/6AEQVn0WEIKaUI/9QtV41qC9NjRMrLTxjzVUOf157OlsG/S4kO+bteTgYcnsaaDrib45lLmIT1MgglAaCo08IlSJWyQeT/qV9gz6UP9AV7qw+JiMFr7cny6/0lxgbKNrooVkZJipFgbCYOyMI5pFmYeGi8+X6JeR3yVge/K8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ai2H2JV5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ai2H2JV5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A417CC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747727993;
	bh=gQaTlH0E79Svrf5aBTiaeiFyw6W4BFwbiazSjBcpkj8=;
	h=To:Subject:From:Date:From;
	b=Ai2H2JV5pPdw5fIKE/rQZW1i4Tmz5exPnv7TX0KI+lVMkUopGxy3NylbN7clDqIQL
	 VqNJXCaVty+HDaujFKEyHwzw90kgohXfuNKMn2jn+FDLHHYMd5CT0JhB5G9Ksl4jnc
	 rZa9fwKRMPkmGL8ZJy7sagNTis2wu8B0IrhWV7LJaT7UkLYaF+ncZcz76QIIlJM+q8
	 1eQJxbN9Iuh1dELQmqXS4a38GHFkzWEavE319FAu13EM7xGWnOZMY29c8z3v8Sri5R
	 l7zFpdROycygB9RdmO1AWXkLKzNj3WAMA+7IHUE5NBmmAurRFX+w/zgOv3swA343FC
	 /E4QgsgYky/cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF8EC3ABDD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174772799357.22590.17185643945526577612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93396f660ed85114cd6565ab5c87d12e54a7de3a98c7e3fea14153487c37e68c
Date: Tue, 20 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747727993
