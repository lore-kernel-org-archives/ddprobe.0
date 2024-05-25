Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CDCD2C69A
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 23:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716678263; cv=none; b=kHBsZlCiLAj6VIPTlrHe4lofTO/RUE+T31yHRVW03PkcqMcojkx6VJBzSO9XLWA96/R+saSWW5HtdvXYpQCQo6bykY3AWKzJ5KE0tBwWQQ175YENoyAONSkshpPPsAR5LGMRnJdRxW/K5dVKWr+I11mjjfxb9B9fdO3Av4ED7es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716678263; c=relaxed/simple;
	bh=Se76ECEOSps3FOtIwDuw15PKtVWF5t7hv0+3asCWpo0=;
	h=To:Subject:From:Message-Id:Date; b=YHtR49kCSxYTyqg/I7qYksks0klV3CQq0Rt3QethTWbdmOzsuIHqvbpH+vPosNkuY6HavpF3EV69V13/GflqYBVTqYecuwjeviee9AshQh7/DszXQB3vnL/W2N+2HZISeGGzhbks3Kl74u1djE6EUfcZ/4pyDzrNw2E4uVOGX38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+//hs4W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+//hs4W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 12250C3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 23:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716678263;
	bh=Se76ECEOSps3FOtIwDuw15PKtVWF5t7hv0+3asCWpo0=;
	h=To:Subject:From:Date:From;
	b=l+//hs4WgofAUTtX8J0ZVOO0NRFgmPQWYSaNCOpLLlQKbvOho4wgLDj3eEMHJK2P3
	 88fg9+DJixWGeTiG/LVjt43XquFPHivYJqIEVnoSz/L9EbIwpiDReS5aZHWES8vwZh
	 L3X38DrCEtMADwvQBVe3+54oEZwcsHyiSg84anekrHSAfSoAO1vFGY/MAgpiBO0ZzH
	 8a34MKh9c5wACbAbbCS9mztNUdgAcfChlh1dspdrxQVPx4/f54KA9jg0aWvdIZDtp4
	 klogpkVNejc6Wy1RCdSscm29YsP6V0XdeGoi2vPiteZWpvrJ4IFv6eBbuVb1WCz/jp
	 U0cB+bWdp0Llw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D29BCC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 23:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171667826285.13582.18235846893681354065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28c5afd2301d8da74c4187c2c4109840e89f02c809cff0fd138dd1a82c9f45e1
Date: Sat, 25 May 2024 23:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716678262
