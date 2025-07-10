Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BB118BC3D
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752191394; cv=none; b=cj2KfMdRYjNOWMHqLZ/8YkqOAuQcoDaCIyDVjveC0lSYo/iY+mOhkWVeHUcbW6sC0V15ORI9ywQl6Ok+CnlOcB+9M1oVIPZTWwW+vOvnPpdOm7waxuXi0/SIZ58wagGDvkSIqMY+4YVHsbxpZbUgzAHGYkAYQW18azwqrvgRqgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752191394; c=relaxed/simple;
	bh=VdpkZqGYIXryveXuUJuzvOWXit2TjO6eBAVpqhkAIYs=;
	h=To:Subject:From:Message-Id:Date; b=TUdcu3+kJRiyq0AoysFvtd3V4nimGwAsfCF1BCbxinvZcXxuE99LADa2hwkQdv26BSEu62AHHBJdxXt1umjrYdOYXxZ+HsaUQNj14WGCfRPeWN+oHySu863eF8bIH+Ou7tYgrNYXlpfk8irRdpT5/EmlahYvhZdxljx7AqOuZhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdxWWSUT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdxWWSUT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08EFC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752191393;
	bh=VdpkZqGYIXryveXuUJuzvOWXit2TjO6eBAVpqhkAIYs=;
	h=To:Subject:From:Date:From;
	b=tdxWWSUTjEMXVO9idndPKnJ3kX4a81zfHAfyZpw3f7BNqcNcbZeGqg2H0KxQycr7Y
	 sEK98os0PoeOT3Qb81IGWw7UL5Kb3vVYrGa4pMy92NNnsvrrJvlRmeWWp8pNkxbfYx
	 t6ZKfKqc0VqVSsblYnINyqSjtdYeFJP+r5q3TrhN/h26cVlThEB18TtKklPddlb8rA
	 /OK3nrvnr//Lb3VM8JCHqkh0Dd4JvEDceR7KUltJM3bttxPcXgGPHmzlfklt51Bd7M
	 s+87cKE5qC5oAgdx6W7XNNdANHw/RPCmGZ++ewMpcpoauD2sELI0r2l1lmqiIV0MqI
	 qDa5BQ9bjvtjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CFFC83F17
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175219139357.7181.11349177928192250157.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9abacecc25b781403f920afac07ee279bd350fd28ad70ea82fa7a2ed9e4571f
Date: Thu, 10 Jul 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752191393
