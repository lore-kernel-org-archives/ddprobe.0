Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67A8E13959D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 03:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782099994; cv=none; b=A7Fx/t8/pJcvwNft8YJMuIxpdxV/Ks4DNyTW8kXxzDbxl0ZIqhuXye3iqtRy++ae0MWQW2FNgpP5IHHhhVfIx7C843fzKAw863wHzciT9wRcCvA42XIki6pRAmb0Oj0sdLhWFlytCA81bNAlnBDrhqvhGnfUN6Im+iGn7Tls96k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782099994; c=relaxed/simple;
	bh=T6W8CAquYRpA+iWrcpecXZN1HUWcRXnlwSnvqNQujVg=;
	h=To:Subject:From:Message-Id:Date; b=ozzHQ0GmDWf3IrLrUsfxOFmuV+ovOjKhqlrDWkMIX5Pjo23xXAWIgx+IihC60iExD1Tsc4TR0ybAIJqY1kz7pnvU/iP1+KzNreRhC37xsJ4aRUiLSEN0m+ZVevrUeMET3pBWBobXl8azTKYms1xSB7Ej1fscYb+IfpkFWE7fKhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lP2a0o9I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lP2a0o9I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CA5C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 03:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782099993;
	bh=T6W8CAquYRpA+iWrcpecXZN1HUWcRXnlwSnvqNQujVg=;
	h=To:Subject:From:Date:From;
	b=lP2a0o9IdoDNiL+i93t08t6qDCxB8Vz+R+6M+Qk8SoIAz19w9ZXdNHWSWta+jmZi8
	 A05sJu0vOKVkt5dNUGu6HvweXMLpfxWjYZwdi+EwXzPmCuuTEdgUEhUauNjZNIGR2e
	 7UPdxQBbS+n68m//GG+hyzzmGKhKSzQ4mbDzJqqhCUaSIhmCbdgH5CYVJke2o+MiyZ
	 95+UKTryzEtWe3o+wXFZeWJZMSoltzsvzbTKxUAPrFrRM7Xz3tPc8JVeiaWBQ3gXK4
	 6nulAW5fX4xLEy66fw7mwM6Uh5sXIDMi4/bNywPCh+hCPTskw94NEW4vE7F4hrm1DZ
	 zhwpvDy13rNIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDC5CD98F6
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 03:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178209999369.10864.6093780538258891831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7edd0a19f7447bc8ea58f627314b4396a91e7bb6ca718ff8b4789f1f2db5c50e
Date: Mon, 22 Jun 2026 03:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782099993
