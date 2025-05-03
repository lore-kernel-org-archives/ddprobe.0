Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6F588635B
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746274193; cv=none; b=K94yILNbA68Ru0klhhgvGra+9FTbuSBYzuhZHER1z6IgFhr/l8iRzHBx0LfFOW0QUKQ+s1j34JcN5HS2oOAODpXqhqn957xy2tUiqepx04pTi30x/ysfrpAJtBcQfdkDeFyrm6C/LueYJYR3RGyXMz/QdqYZLBQYQRDKkrmLkJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746274193; c=relaxed/simple;
	bh=3LDx0wYkqUVo/B7a1YIw+WaWK+3fnykTPRxtslUsRVU=;
	h=To:Subject:From:Message-Id:Date; b=K78cw+JsTTHzPd9o8EHkJnTJA5IVboP0nMYVItQyzutXvqsrN+P6fT5fhy3F9m5OKmJydWKGW4w2lT6xPOiwiMCGcPmeqlVISRLFrbTOv+Duz63/g68ekQXZki8qq4hLkL5nhZLH/TnerykNydKmpDtjkcSGE4mW5QJ4/KpyOUE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTMmeaSR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTMmeaSR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A110C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746274193;
	bh=3LDx0wYkqUVo/B7a1YIw+WaWK+3fnykTPRxtslUsRVU=;
	h=To:Subject:From:Date:From;
	b=FTMmeaSRoOyF7sfmDepzmcwNuPEKYX6IEvqSJrpu+MDo8pOjkksZd2dRCnAI6qW7z
	 J4Yago2q2wui3nELEdgkUf9omMO+GRr6y6YDj4voL5ob5bXUJMGoMDsw/S/1fgTV/K
	 9Tu+hSxcUNKXfBwRlw91iMMAHKNm5t+93YFZCMNwjKD+GYNud+RUWCeh2+4Xfp3Ft1
	 I5odOYdyfCmqEE5Mw9rhIR2Gffftw5MMjZ/PtmTHaR4fEpjncm3jGXn180nh5ZzJ3o
	 1EFo6a+inGY5p/f8IeUFqDatYRZGXROF2ccGfdmVFf0Kaduxw0TKJUUOMFDbhlaHlm
	 WAhv+eUAicm/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0AAC369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174627419357.16537.15444830740157993640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffc413b03e5d3e1c106b986810b3f20de445fee8609a67b2bd75ee00511e88f0
Date: Sat, 03 May 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746274193
