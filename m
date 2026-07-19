Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3BB28B7EA
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 21:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784497714; cv=none; b=E2p17KAC687dxhs+jzh87TwQJ+mQXQPVTSI7gCZc9JCtNtGi9Hp5o0qhFjgitiuufIJFV/3+REITjWX/PHilzjZ35QoHoHn5aI3lgmRXpCu20trrNgVYIMix/FozuSb+zL1ZwqogMGzgZfkIzaOSfZ74q/dVhwpwYCCDDbptAhA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784497714; c=relaxed/simple;
	bh=FnWEhrLcKv+1dRroQEKxGFceF4qEdlaHNgGOD+Jnlns=;
	h=To:Subject:From:Message-Id:Date; b=Zb60V0aBw9ectk4qdC9QNeo6w56g4vGhLq2llep2WjFoRY030NMtRGir8O2maD3Ed/+2HuO8dHDUscutRMV0ICwCHiokYZbDXvtNbwy8p0sBjVoWHkD59FEyuC+U/RJvWNjlxQ/FLJEqxxVdOGBGUVuN0+rGyY6cp0s6e9p+eRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZC+cmVgx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZC+cmVgx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42A0C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784497713;
	bh=FnWEhrLcKv+1dRroQEKxGFceF4qEdlaHNgGOD+Jnlns=;
	h=To:Subject:From:Date:From;
	b=ZC+cmVgxI2c+sooWAQVNuh21UzKqjd3ZcPKxe1yn7mubpw+untUWjxGGdr6J5AjKa
	 5s4suylyioybD90S0TO+3acYZNLAUNcFYRcVemFEEhVAFsan7B+qWNgk7doHMGAPmm
	 JC1sQwAvhsIxSGR46UqXXr9I0GNYKFIfjMjkyCLPwSQ5eHPJo1YFdtoMWNdjGsDp1w
	 UdEnXzbVoQTjg8vGvGbGTHCpu6L8nzlZVWlb02VTJGh+CW1kyi8vaN2mkVEug501wB
	 IDE0qHP5xLjvGkO32CGv8tXjEFL+8Ad5c/y1YFmd8rDr16fb6xR3Gkw82Qwv8k3lPZ
	 0NBGnJYcwnilg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8B4C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178449771369.13799.13265744735827417772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6618af6dad9b1d70bb5987d0d0b5bf8532dce35f78483e0992663ecb3cf1722
Date: Sun, 19 Jul 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784497713
