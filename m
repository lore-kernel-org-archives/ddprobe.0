Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FCA64404
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 06:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719037943; cv=none; b=Q6GloAaT71eHGBpBTGMQCcR9jSZQkDCBUFVk3agYWk0+B6k7qChl3qMI6+ENBXsOfpT1MWco0h5c1boejs4rS9vJQlP5Pkannhh3ZlBmyhpbAus1Gap1JfR7P3FU/NABVivotBB4NLWQMdFqweZaxSCz0K4sF1AsqWNTge8o0n8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719037943; c=relaxed/simple;
	bh=jstCSTtWYk3iS+1ADZkPk80usD/l7fPHjIM8vFhfVvU=;
	h=To:Subject:From:Message-Id:Date; b=A1cztMOeqHrhKhYXpxjGXQQkiSEeKHgpRlgcHdmq3opmHUNUXq64t/dWZhCA+/4k8T+2HNhtmfZaPBW22i2jDYLNx7ChajuLhDF/CT9wTdk/mYCTcDZYhjtemhRubpTuMDhhpM/T86azoKbW2hbwUnGxiyURBbj+533am1aiNbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IJi4xOIE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IJi4xOIE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E080AC32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 06:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719037942;
	bh=jstCSTtWYk3iS+1ADZkPk80usD/l7fPHjIM8vFhfVvU=;
	h=To:Subject:From:Date:From;
	b=IJi4xOIEFoAzwJkcLVlM2XgGnaX68xA+qL5kM1gOnNpoXYnEln1zu0H8FzW5y9NhV
	 6ZFxxwDj8SNPRiqwy7N6/BkNpJo6Pt+epsJTIsWo1C0wXQ0fnGWR9Ir8krVmwfdeGe
	 n2g8O6/webKETigH7nrwAbxwG7BWQlnBDy2DCgIzEr6gQAW0XUnOG3wOEA8/Q314uC
	 ytZeqOQU0hSYnY/Gznlr7uTiIHpr/I94v7nEY39Xx3S5ai0sCx7ylI/MYTd43bUHzJ
	 Voz1HCwERmJMrqlhM+YQ8emrr1KPuzvFA/v0liBGnvPSTozoWBAxHOrbVHEV9wxV7b
	 tzadP9ghuyuBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C558CC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 06:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171903794277.5944.11277263681845285727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f6896af88a8997498b57a57952b996794ec890811c4b6725eacda18313d9553
Date: Sat, 22 Jun 2024 06:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719037942
