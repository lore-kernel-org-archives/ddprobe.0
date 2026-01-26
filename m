Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7FA1C4A20
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769391834; cv=none; b=P2eaa+E2gOoeJvUffhJGr/neyG6h+bcJh7XiKtQIFsYn4rNqRaFOYlemB4WkyMiIviB2Qu5vH1lz9zpiCfkHC5sykQJUiNHAct8Vx1iDX0Ac9e6xQKKBww+Hz6W3vuUJI1/yZuoFmjqwhz0ZPbiYPTEKHBZVtuyKtBzYefpVpD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769391834; c=relaxed/simple;
	bh=3RvIC9hk7E/gHGS3gdloVyBp0NX2qjN7gS4NeTHht58=;
	h=To:Subject:From:Message-Id:Date; b=XwNJLENfZk+r3hWU+ju9K1LEYbYJ4N6HfWmXNbTwswrxAPkY62HcoHBJCsPcReX+2rEJrdXXd4yKCQsY1RcoXGJUF0TS1e+YBM/6zJI27KHmtWPh1e6rwv5fZmykceZVwyXBxP7lm5UsgTduwadgXeBOMNpzvASo6LpT47WKvO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mysa/DWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mysa/DWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE59C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769391833;
	bh=3RvIC9hk7E/gHGS3gdloVyBp0NX2qjN7gS4NeTHht58=;
	h=To:Subject:From:Date:From;
	b=mysa/DWLIIHFIybyHCdJw5VBBD3eoes12x6njySSa0VuzcQyWKIGdZoEvmtwha4zC
	 J8H90IBBYriRxKfRq5DfKid5RKaDNNu4XGU3RWGgOzgc5JvF17qZsJ9NuiWB8uDRIZ
	 MinO1Xwh0HYCS7ewH8wVBxdaFavJCjGynTgXI3DxF+WmY62ii1lMkJ6lbZ/3dRPljp
	 YdLWgCdYIFCXXS5+0bq5Ob4fVeN+CDIMU74oe73L7VgzH7HB+D2AMy0seBxUCNqS48
	 45fzL7X/nyxl54jfcsv+qHT8Dh/SAZm4LwnbLPPrsP1gmhn63yw932A6Befph8hkjR
	 KvsY6bRxQdEQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908F3C88E40
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176939183358.30831.1390256225342737487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f0df047a4214eee0fc13bcb6a7e8645ea122a1c637bca2122445ca663bf75b1
Date: Mon, 26 Jan 2026 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769391833
