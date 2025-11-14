Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A066339714
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763141394; cv=none; b=Oh5TgFCUalWbioJLZmaCxHjRffen1SuCY0/QqeKLUdwD8K0nIrFX8JoCuYqMdfcICbbD7Sd8N0DaVwpXk7ZyhyEHxPrKxRMqHADTyfzj3wuHyXgHEtGm8ysIIIUJzzdRoyCxa5wUJ+aOVlnkhBxhuO88dAqJ5u6Tv4/KQqMsPQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763141394; c=relaxed/simple;
	bh=O2wfx//Z/+zaecG1pxbafxKXI8aSWWeGiOD/AzWhepY=;
	h=To:Subject:From:Message-Id:Date; b=p5jSVe4tgRaAceJN+Ysdjp1ZOGVex/fFIcD6MViq8kPlXw/Hu4pC2O51I0HoWHdGBaiZKbsZKii+y2i9TUjQwbaWdYBLdIVuu+99srKtLo2S0rV6DF49r1bJvi1SMJzPf/+P1UxykF9ghk9N1AuNj5zMFdy4BD+YDzaCBgU2dco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdOpvw56; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdOpvw56"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E38C19421
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763141393;
	bh=O2wfx//Z/+zaecG1pxbafxKXI8aSWWeGiOD/AzWhepY=;
	h=To:Subject:From:Date:From;
	b=OdOpvw56E2kSZC0i5BIMRXd48szQsklcLA/+I6iqlBB9evuRHmw+RHt6gtsW/04to
	 8ia8xOiT4KfIxpThJahjt7a25JiFVgg4UcnjC7rOs3q+TMSFR16pRI+f+TkxR/CjWS
	 z8balMOL+u1YV3cZZI3jn2QmLABv6t+YCFvk9JmldCGDQmnMVxQNBpV2qUXwAfItdx
	 RrNy/i6SdGNp3+Qf4N0SLPUUUEmYKpF3OXUKKEZp3vMZv1yu1xytoTPuEgpaoCf4Wj
	 6Rfa5xYQRSIJezQomNRk/+a0EfhY5A95eOrpcIjuKQXlVGNQsUY8+UX1A08wOhpbjf
	 7E2bUOQG+rDqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE1FCE8D60
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176314139358.3006.15001811508308589948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a9e3c6294a02cfb08dec935661321038c386b9970c6d2971623bbc79dd778d5
Date: Fri, 14 Nov 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763141393
