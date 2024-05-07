Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 638A817BA1
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 18:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715106743; cv=none; b=ZO6YBurvGuIVdvoqHwX2lMZO83MguQr6X7BqMnlFFamQKN6CN63j1Z82uoiOiQPwP6qPfAEalsQ0NfJN+baEDzJXga0Ptgcfdht72vyCOEmJz0AHlT2oys7E9k1njdPHd+Kc5Lg81LagKnQs/pG1kjzDqIw4ZqR9Ue10ALbsK9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715106743; c=relaxed/simple;
	bh=Vsxjh8v/YrwBSjy5zQ5RE7ZEeo3360bc8h8cz/DoWFs=;
	h=To:Subject:From:Message-Id:Date; b=YmlLOA8lErXoBE4hJ8hP2bmF4GCt2Dt6mFeHgeG2XFdwSDzcou6yQtwVCnIV3M3P1xSxNpi9KuxtLzdwvIAotqfyeakeNcFyIc8Zysa/BcRINwxD8ecJbYFPhso72oDVDOvOxpvFX6qoP0cYdlnbcaQyG7SzVNP/vZRI9q4f7JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pj4V2t25; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pj4V2t25"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB58BC4AF18
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 18:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715106743;
	bh=Vsxjh8v/YrwBSjy5zQ5RE7ZEeo3360bc8h8cz/DoWFs=;
	h=To:Subject:From:Date:From;
	b=pj4V2t25jsMj2WOMRJu6uzSnBYUn01p8pSRGuIF72sk1ayiatyFEoPEsMmQZz/1un
	 jKGV2SVQaw6M1tO0XMDBlfkmIRQkTG9idIlWK+uGY+QelbEQ8yG6xdNuJ9ySgjyevb
	 lnB2RXsCvFFB38HRe6DzSekgqFj8GJuVSuUEDZQfrh1Q6cQj6/O9wXKpCX1pEfDTOg
	 0veHA24r2dEm7gq+j+Z6bnLC8vGx6JRaBmGMSBj5ITGB/rQAfqVGwN2zK8wG5CgutP
	 QDtieo5eSIenydJSWWfrImlhixLO0BsZzr/TG3lNygTcGC/SS+PzxFXW5AtZyTsfa6
	 8q01iTkODI/BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5DDDC10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 18:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171510674281.28730.15705968799355181428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01f77858b88b778768cf3980d4a3fd4f033f10b706c1bcf4efbc1e9c2bc7e93b
Date: Tue, 07 May 2024 18:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715106742
