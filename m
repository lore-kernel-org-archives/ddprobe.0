Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C58314A86
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790791234; cv=none; b=mMBY3jna7W6NizzQQ5Qn0H/lMlLa6/CmACJEa+QcZ/p6bxLnfAgpzrAiyJTa/R5eH4nVEKZvqGg2Z1TYEfBhi33h7Vh+shVYe0UIW6OnQS0dBaGyL/Azr3XKMV+NCniorBOiplkEyQEVXI1bdVUDvEseHeMSuVhB5nPMXJVE89c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790791234; c=relaxed/simple;
	bh=1VV6BYF9waXTV7A6xMPCqGrNNx4M4FxY25Bfxsd0rCA=;
	h=To:Subject:From:Message-Id:Date; b=hd9j90gap50yy7WebNFBVBqXTm6Zr2FS5NpbWpYsLDAWCl4Rfb5lfZ5uJjV0vyy4JtYDoTayTo7bSML6JeNX2wP/dHcpAwA/9qBuvKnSCFqKIj0vN2cfpy9U4Vj+bnVc4EJ3klrCTBzmit1OlsUcUDma3EogtmjSVXYDUwEspSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6DgM3aj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6DgM3aj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EC8C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790791233;
	bh=1VV6BYF9waXTV7A6xMPCqGrNNx4M4FxY25Bfxsd0rCA=;
	h=To:Subject:From:Date:From;
	b=f6DgM3ajQqYCtC4JusJ5Q47u6rpwNa+XeqESmpSvEEiWAFPru4lm5FQI+616UiNQZ
	 RG/EozZrWoHp1y04vpzZEbe0stdIkWoTL7VouFe4o8+78TDtRnIUFxBNEKrwaRGktg
	 3uRLrgYQuNNfptCBlR7BqGkamP1iJ7QMhkuujI77Cy696Qw03vREaAeTRFcwLK2Nay
	 YkHc2wC01lW+l+ZqU7u+yvIfBC2N+9+dx3q0Aze/d1+ZUXGXieVKCNqmcD2lkqlG5m
	 giPc+mQ5rpMJJd/BUJPnOpmCwI/Y7DcxIN3kiFApYwBlhgHM8UcRF6PsuVpWTv30Qf
	 vnmYZbQatBV7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAF1CA5FC1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179079123369.26919.653268965154444922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c4732bfc68fb30c806d80638bc6c3ae8fba1e0be0f8f85a415795f8918a6e92
Date: Wed, 30 Sep 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790791233
