Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C5A19D89E
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770453234; cv=none; b=SsO2rqRHBayKq55AJiwiANXskSugyvqO9jUglWQEtZUn7fRhJGrUlYc2gZ87LOe0ojRiRY4IRtvKBmbho/6QZTjVoTG4budHiWZjrKRM8ZsoIwHeMRdfkBKiW2wSK+48N3DeAwET/fJ3KK3n32Knj7JCqX69ekMS3YJ3laZ6/9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770453234; c=relaxed/simple;
	bh=/KO1dvsDlwCw2ek8uVQLqIRV02Zkk+C9C2Dhug56TDQ=;
	h=To:Subject:From:Message-Id:Date; b=NpismUAamaVP8WMJ4zyx1KPjCg980yZrjBKBtVCqXpsyDaO68hnKUxNWP7CvLQUB1fikw39Z3Rx6iqsbiq0P3wn/0BM5n2b1RLOe59WbPdPyH0DlB/dJd6U+TyFoTSIb9kB/2dDOPVcVRgVKX23XbVxXxA90OL0kX0rMoNGcIPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e7kFenjE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e7kFenjE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2CDC116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770453233;
	bh=/KO1dvsDlwCw2ek8uVQLqIRV02Zkk+C9C2Dhug56TDQ=;
	h=To:Subject:From:Date:From;
	b=e7kFenjEW0MmlZryw7D4zZruzyz07FShzsyqWBOMsYJaE0Cc5YHexUuSRgKVmkMWk
	 iOOFTK4MZPUtbKy2iGXcfCp4DJb6xYF098XN+qscqrmvFEElCyFJGoZAeLDpdrVG+u
	 G6pgiw6p+zKOLEkkytF6gT2BGJiIOSCUPitjKoLGyXXmQyGSw5trTH2wkLWJ4duWfy
	 dZ/tmS5/23tewHiqJbUANGuA6dPzWaqt2ZW5LmYv86Hpo3DIjb1OJ8kEcIuFGuxsDn
	 AdztXGhkBtsaku8TnLSDHYuy2DBAOiT2FaXYf+MXkQZshnvPEX/ibYDHqzmfxx8yNr
	 xpsVkv0GY6JGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E2FEE6B76
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177045323358.10090.631544145736526927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72a71edeb520fb8507b0e2eb4c2334f29cc58dc3401931c220e69eafee6bf772
Date: Sat, 07 Feb 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770453233
