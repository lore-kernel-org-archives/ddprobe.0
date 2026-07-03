Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B99E370AE2
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 07:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783065514; cv=none; b=C8brzjtJTtpoVCP29yp7Kv9wTxBuX4o2UVoRpxOkl7zldJ/QrZSCO245tNHeWS2AlT9Qz0p722RTxlPm8wj4g0NuFQduY4Dlb+slhyljCXvKaTL5Umy5tJLoU4u+a1SeAjEIuYNMxHHkQAPF2uEmzDg6zz+hL50IWFXe22Z4EcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783065514; c=relaxed/simple;
	bh=hQVmXXsbajQTSGzeaiVi8ze/9ycg4uaXykMiSJ0o+FI=;
	h=To:Subject:From:Message-Id:Date; b=gYxiesPuezCH3RjOOJHsY65bow2RrBMwKICjAxp9JmmaXPcCekJITN5wf7fQpvehleVpTrK9EWbc+pevjisU3J4FhGD+yj95hjFBWm3GNsf60AkUIlOJVFjtDr4Bu6VtyDSEAjhJo+hNMZJWPV8Vh70VIsZoeYvcPX5zAtttG30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UEUjEzd0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UEUjEzd0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA9F1C2BCB9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783065513;
	bh=hQVmXXsbajQTSGzeaiVi8ze/9ycg4uaXykMiSJ0o+FI=;
	h=To:Subject:From:Date:From;
	b=UEUjEzd0T8JvgcBZPWxRywh7noSUSdreMXXSN3jR8m9OGfg9OuELaVOda85775y6M
	 IEJyF7rDtdSDtT/nYBBhi6mU1AeR6t2r38HmbVb6hXiH8uuWG1T5Muy2os8RbcPxJ0
	 mh/cYhX52n/QpJfXjId+aUyyrDcB6wpuKxBBP4H6FRNngR7Go2V/J//bOjgYv2CeY4
	 GsJzqpotrafqH7Jy7GK13moviUQ6A1Z/2dfo38Vj+/BRG+6V+d4WJFotrnvZ1GRC1D
	 1Yv8JC+PkIItvut5tiF5eYlUskeiJkw789zOpdGrqc1Gh05gwTf2J0BbdyOTn84jkm
	 JUKnePXavWQaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9834C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178306551368.24031.16949382766809352464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc875038dbc7a1ab099790142f80d997240cf22a823279b96e476b76aab839bc
Date: Fri, 03 Jul 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783065513
