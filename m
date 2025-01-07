Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB551E260D
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736289954; cv=none; b=DmRZDTzagzjXiIX8gWel8ZLnVjnYMQB1wbXeKI7c2Z90mkXps6PMd9pBUWho6OUL7ZQZfmAJMcaa4/Pq33Eomcl+hGIZeStthr/K3fUXghzGUXPwVOMhSAT3K7x4z9ywY9moxa7Bo3XudGs61AWJKBd1y20gDfcjERwqDAq42gI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736289954; c=relaxed/simple;
	bh=nQeXKAFuc2+amkN1zXyHPnObG/1g/hXHMr/9r0Xaj0Q=;
	h=To:Subject:From:Message-Id:Date; b=LMNb7xPoUi8TMDr7An77trV5V8aFBPOeTek47AZTKtEXA3vecKXfxnhX/tNKWxoUkyD9RnFY6MhhGNOh0O1nrA/fcCprzTJ9PDJG+eB3N9skcje5K3YMzino23oEvLjS11qTQrh0A9Oc+bem3dCkqVjJHXTKImgZbVMs1KXVSv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOaUICr6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOaUICr6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FA9C4CEDF
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736289953;
	bh=nQeXKAFuc2+amkN1zXyHPnObG/1g/hXHMr/9r0Xaj0Q=;
	h=To:Subject:From:Date:From;
	b=BOaUICr6mGI6qgZk6FqB9kJ1w/KBHo6f3LrmSL+UJodH/Es5OD/DSwhmzyf9C6UdD
	 g1RR1HqBmggeWCZ8lTItty1SNCiTYh9QabeyxI00FAswErJd6Vzl0QW/WL5ZMXSJoD
	 +NRT0yPsNQEXgX7BzidCQHSsHDWeCtxeYe1aPxxz8EaYsI2B48AHeY5gYnLBOCJAds
	 pl/Ony5RPP4UjFsB4XrcLE2qFrXUPqPbuNivIs+ECuNiF0zxIIUCywRL9JC9OzCc1C
	 YgcMkS+Kw8RqoFRMihmD1WwjUj3Ajibzkh8dYho1ReoRAcNlb6rtGOr/Fkpwc1i+Xf
	 /UIGimJJ683cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91534E77198
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173628995358.6507.2952089065269909212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e43c96c26f47a8a8aa6c21092c33fb93efae26af3c0f746dfdc94b74f797366b
Date: Tue, 07 Jan 2025 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736289953
