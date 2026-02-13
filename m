Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239644A32
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770957894; cv=none; b=bn0pryffoQv0TiLwvROUmL9LEmYfdB/GfQuUcb7qF/uXgxJfntKNEdAIP2+5CAYRrdqxIO5l1RM3iobWlmKbS9kvJ8ujsGDSJ3uToH6V14U3n2hJsXSbJh/b5Dde2hCNvJQnYh/48Yu58efT1vNwj5k+SBo9k2gWBSgWCUSMWwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770957894; c=relaxed/simple;
	bh=+9HA/X6dMX6rUbqOWnrNFuY/6EXBs1VTuzTEqUk6uKU=;
	h=To:Subject:From:Message-Id:Date; b=DhSMPp4s7TS75C2I1TBRV1JdAt9WqtQvqW3W2GXEzUzOGLM39uQEcl0qM+B4NypPLYIKbpEZIlWKar8DQqzhIhf+FUeuxZYeYWIC7lwXZoNjOHhbDVmihEqZBsp0ZOSwh51lRsIFmF8CbNQsfbE89zmoPBTpbSOhmihp6TguO68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t+Zhg6tA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t+Zhg6tA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B324DC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770957893;
	bh=+9HA/X6dMX6rUbqOWnrNFuY/6EXBs1VTuzTEqUk6uKU=;
	h=To:Subject:From:Date:From;
	b=t+Zhg6tAMAJsAARA4yQObn8oxLtvhveg4La9cKjLQyDBes/PmyKiyYGVoea0iFIN1
	 7NUcv3ob7qYo6lBjo/jOKhA9spmQ2xNXHgN+SI/OJXtS70Zo1xDXC4FaLy5cZvPNFu
	 F1LykHI3ifwq8CCUaelc5FmjAtNKbJLkgg7VRjJ5AR9h4eZxXnHjRsWwk0bwNos1a8
	 qZ5oEWD0a7JXLj9RA/SBe0Uij+mgrjRmUFiP8ejmkYx7YfeMNYXPBFlKtIa8GLsnBS
	 Xi/EC4KyplHkXafOK0bMWZTkLklQ1rmYX596C9lMo9aQpyXeVrKeq2vstrW6rxx2yn
	 dC8Df5/eY7yDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E31DEF48CD
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177095789363.30082.11672213778670588482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1724cb0f96f8f1d4b349eb360874157f1f3f3ea8ba8ccf09487934d33638f2e
Date: Fri, 13 Feb 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770957893
