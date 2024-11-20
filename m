Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BCEA1474A7
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732119354; cv=none; b=UFEyw2c48hJxB+D+RKj2HTDqe+vDVGh+Nn6ZCEwfRZycoyp282n+24bf4KpRbBrS9ilt1bSeFc/A56IM1cQHEdBOzNfH4IJaBxmoXpaG+an+NcjGsDn+Pxl8FYujk89yLwDmGyiWP5FPrRl90sGc6aMM1RWVBsSoen0YB3eoOlk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732119354; c=relaxed/simple;
	bh=aQiO5I8eVYIhr5ixmA5OLMUquSwmHdiKZib9/Jun1pQ=;
	h=To:Subject:From:Message-Id:Date; b=PDKM7RndvjQhs4LH/ghmAeltYk5nepTbGirZD11lH1MoUWxfyTX23Htay+BS5ZjIdOiHW2j7hWpj5J+ch0okGFJ6Q9DPcZ7H4br8siOUUqMV91XxcdBZG/azRINgmM0vX3/9fLIVexUzgovZkUtbKQ+O/vsf2H6NZ2NlXZI8cPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2s9fi7R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2s9fi7R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1B43C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732119353;
	bh=aQiO5I8eVYIhr5ixmA5OLMUquSwmHdiKZib9/Jun1pQ=;
	h=To:Subject:From:Date:From;
	b=X2s9fi7RwOjZIVi9nY/ro0en0N6oDLW17G/4ddoDVH/ZirJ21RsakZAnDDH2r25dc
	 3kIyPHhtXkc9E4MSfcam0x4jz9B220vjmiE26AB3ldxG67RrK9kH1Xt6jCdpYYT34s
	 UFW0g0WSuy8+qg5Y287FtZH+r5smB+Lak0qo7jhuUTO8GZgosPsiZcBnErSZ/hQZHT
	 Ufo/IOfAAOc5UQ7nAhemu76/GHfMSRd9dLqGM6wbdbJxBqSQZyt9ZWrkLSHmlsmKLR
	 rTed6LRNhA59RUYZ6q3208Rus4RpODtEiRkiG1UpoyclKGDOEYZIY+5dF254Vmj5SK
	 VnkpEgt/sVd/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A86D711BF
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173211935360.22889.8269267883634753572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42a32c29b390482dd2c3fdfd9b1e28fef32415318f1d74577678c8cca8136085
Date: Wed, 20 Nov 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732119353
