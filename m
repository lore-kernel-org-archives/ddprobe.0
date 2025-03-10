Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 399B222576C
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 13:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741612135; cv=none; b=AyzbIN6ZEHzRzC0Ygk1KBJKqoFKExkAROx59vlm6kUOU3Kvf7xsfUQ97YKNbpGatBX5SmxmWnbhMAJeAyHMI5p8y7zIXfRduB1OunlsYhMs0S1ZrwbEHvsA48f3N6tJE7a1zaTHzy0slBdcmwtL2IHmWAYASxE+crCX9I1r35Kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741612135; c=relaxed/simple;
	bh=iVbEgjVTFGTZE0F9hixWBhL59YEeXUYXmeJlIKnpuvw=;
	h=To:Subject:From:Message-Id:Date; b=cnC8SlLuVAmSlK/7jyM/2CP1JhXX6/cCgrofMxzkL2Y1lJKaHZIdWCX6RZIoPhyapMbOZsETaQ+KoIyI9e6Wp0CsDStvCbfoYJm5ceyRSD0HUn00n4oeeSCMC4CbHrswIEqDnpUqtEfPjVXY0kr9hQcduSDFj2VUf3Zphq0Vljg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHE8S0se; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHE8S0se"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2FDC4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 13:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741612133;
	bh=iVbEgjVTFGTZE0F9hixWBhL59YEeXUYXmeJlIKnpuvw=;
	h=To:Subject:From:Date:From;
	b=KHE8S0senpG6oI6sUTF7pFJqwjar4aQLdLry/BGhvKQP9Y9BvkoOBsVG9biQTWCyp
	 ClD3oY82xnwsmdXng81X6RrNYOikUsC9Do6lpxTP5TtyGsPDWYTQjXuHV8XN0Ixo2s
	 wbJo9sQUwPwsPP7aN4pO+veWhOAYcAcrk7RrSX8vc9VX8jSv/7K33/l6YCRuYmt6z5
	 gGze6A4IJyNDqqHCoNuxu+U+3yGaLZG6omIeG1rf5Jii+zyidfjgSWMV7cXXMMYVgV
	 qW+58l79grnQ7EmBtm47nV4dXtNMA7UEgojZwD3o56y0NBWYCdYHSHS3QjBNhID9jd
	 r0niqpXO9cG0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947FAC282DE
	for <ddprobe@lists.linux.dev>; Mon, 10 Mar 2025 13:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174161213359.2259.13926445472546821271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c57e78255f201774e2531fafa159d6562c1b4967f69bf4f04e8db8ed528e68f6
Date: Mon, 10 Mar 2025 13:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741612133
