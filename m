Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C8929BD92
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756970993; cv=none; b=sMmpi985gjPIZ6CHw1oM/vk9/fU9tESxuLYckGXwrCDUyy9kmYhTYMPmOEAq6WV61CvcbSB/w3kdgxX4+N8svYRIOnelxfw+NlDC8+/t1UDU9HoLooJWXpamNYLSbHAWOXExnWTt+rBf5qbuZyiTU8SXRr26NhH8UN63GREXJdk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756970993; c=relaxed/simple;
	bh=lIlXRYPEJNstyCDKyL12zPd2kgZA55E7MIqQ6SMDSBA=;
	h=To:Subject:From:Message-Id:Date; b=ttMikpvhD/abz4Y9HbqtE2/a3+ypZIkIUjLlwaJx9rVxPahK46n5iNz0s5E/GvJhMhRQDqHoth20usPw+Y+We+hGSk6sTIzxpz5OHCJfsOz6GFNGh0r+Oofk1U9IfVEk+6CVQsqc/yRLl9bxwFBzfe+0+rqohaOFver2PHUB/9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wpugh3My; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wpugh3My"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE04C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756970993;
	bh=lIlXRYPEJNstyCDKyL12zPd2kgZA55E7MIqQ6SMDSBA=;
	h=To:Subject:From:Date:From;
	b=Wpugh3MyzwYrYgm0Ny1dz58pvmmyzeq6AimSzLBECJ4KrqEz59xDZBYTjDadII8Ve
	 31ky21ScK0/6RbVoLT0n2aHUifZQmVHA4SMJBnP+9F/9XuWCu7FTmI5cgXftbmsdts
	 jukXAyZqzurlPfga2t0d27Ss8/X7QVe1c6qYCA1BK7IEvkavHiUbavR8VD6smmMwVQ
	 GS51Xl3FhZAo5we74lVLUpbT75RJH3CnlnwpAhqSioLlaQ/TPCLV9NSxH57ox0gS5C
	 S/yXzVe3AVeyupkNZrvupvH4fTK6d8F93SdJtqSq6OTnmuqV0CIcC7LhbSzkTKnmod
	 ZhU2Az3uEsuwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBDCCA1012
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175697099358.26509.4636882703584526393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a9e0db384e626777db655393dfcd554a0670214cfd92438d19e60a25f7ab81b
Date: Thu, 04 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756970993
