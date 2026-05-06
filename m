Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D9548C403
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 15:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778080654; cv=none; b=Ckj3xt5AfkeaYriN6DvJCz6LVx2LguLWaw2+GOuG+0cJGyJpPpxzrQs9PNQF2IH538dRya1jCCcECXUReznHfmlnol0OsombDKz7JOijuI5zqgHoKcvDTZczo2GiYM7DNbU5rHkd/Zr3UchqVM7IelLg9CdX6Cl53kUsEcnowoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778080654; c=relaxed/simple;
	bh=vpw62gecNKtAUUjkwQJ1M5n2k+Olm1oo2QdGhxCY9F8=;
	h=To:Subject:From:Message-Id:Date; b=cUTkOi/Ne1Z8/pIP6QAWGW1NeulKwAkH+oIoa7oPaI4/pjjN2qEwaPu1yLTRDwqFROoqS91nMLA4+UTxVroQJMkWCyTfY2/Uf9v02Mfb6wD09WOpZXs9mt2fI+FLibswxPQ/eshAflKL7OHmFiYphH+MaHS7MQMNPXpKT91R9u0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnI4Tohx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnI4Tohx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85ECC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 15:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778080653;
	bh=vpw62gecNKtAUUjkwQJ1M5n2k+Olm1oo2QdGhxCY9F8=;
	h=To:Subject:From:Date:From;
	b=dnI4TohxVRuFKEE/wDiNIxOGV1iz05KLxOk3Z3uhMlewOjnYqBESLREgwWD1Sk+Cc
	 OaEItZIWXCPyMpSqN5gdmrQNqY++5xXGO6O8aW2Zw/97gBhLrxHKBLNxuNG6sdB2x6
	 Ul20wTkNRNC/wmuVe501WTYxZQW0VRy4DZShTdE9V2Xv7N4OgsOLXDLT/dI1WLsL/0
	 9z5547zsuaDxXRZoK0KRksynKUMGpH8NzlYDDbFZfvOU8Rwez5Ga5VojbeJEm081W7
	 0N/0zQkfmuapizGsvvXleX/wGQ0ylmuUT3/BdNpS3+nKqiiGCvQMi1JhinrpLdlTyo
	 ye56Xo0aduFXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB089CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 15:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177808065369.25416.3089260223663045474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 577ad70e318ae7233d2d78cc6653851c86f88e93a24a66fa375cf8a8d692a097
Date: Wed, 06 May 2026 15:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778080653
