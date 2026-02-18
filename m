Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA16B2D9EF3
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 12:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771418693; cv=none; b=oGiuz7QtIbARLTmCGGetAUgBqQxSs6RSqdKk+XoYJw8gudLNkWkGi3YRDop9JosASNAUMCnlPzFEwhWUWQo0yQ+Q9H+WzXoyw5yihxzco/zvorFhlk+tcv/13gEOtUMsuR/M94Ouij7a7RmMkpMJqc6toUx4LmUBmxD0qvjRmw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771418693; c=relaxed/simple;
	bh=A9duDS3zZTczn4IkrtEU9klOQ9HixnjJ5LDx/744GYs=;
	h=To:Subject:From:Message-Id:Date; b=o3bG3jwUQ9IlL8qLnE4E/GN/Vb+TxQdRCLoUgROYCmj3HCstVf8qIgkeuVXqS5YiHs9slgMW2XNohs4dWoC1aa+quUrJYqd4TMz0nNPZgwQa7I8ni+ZzbqG0u2gaMY2AaMv9+pw8OC6rL+T0Jp32boyZzNQ8In6+RPGkbovSNjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dl950Xgh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dl950Xgh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDBEC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771418693;
	bh=A9duDS3zZTczn4IkrtEU9klOQ9HixnjJ5LDx/744GYs=;
	h=To:Subject:From:Date:From;
	b=dl950XghIrhaGw5uwKzRmUY7iqv+/pztsSqfc60rbZdFHDT+1w5iwHlwJU2LwIDGs
	 AgBRWQxaw0+SN5YYxUGQ3++ba35jHWZ2zccbxo/3cONThyOaa03AxabUtNZJ6T2yS8
	 d5MGOT1Fa4TS/P9M2lBRLwm5H3DaOx8dzF60Yb3gMzOvkWGuxEs/FfMIKcQiOEoksD
	 VBn8jg25x+jicoFVBnJ2Ygd9fG4HXtzxVo+NE0j81/6fJF1/PJrKx51jdlj9qoi24l
	 c6qIydtDUNVcB7R09LKi8lQeLCh3dSamP3meS4CkQlxc7LE4VEKzUqFMaKb31TDkbm
	 BB7BOmxddAs9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E3DE9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177141869359.10519.2557049395824990728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 837b9b7da72a8ba4a00d1acc5b99415a28671af6b77f4541fa2c1c1deaa27bc8
Date: Wed, 18 Feb 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771418693
