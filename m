Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18EFD2192EE
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769974434; cv=none; b=BMnqFcIbL8gatsqF/eVe4AD3QF4/xCFVQLcwJ6KagJIFlj53ji6wQdrh/uqwuDH9HOV75fF8QwyNH9rhlYI2F7fPLhHi3fpJl9wSoNSPXpOpsV00rGK2X67BUTA7gJBzHsXDuS0SfAXGuVE9dFPM+qB4436t5sHq6DB+dniNAE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769974434; c=relaxed/simple;
	bh=WfzwmN3qbMES4Q19qXr/6qz/KIunScl1FEjn8dPoGSQ=;
	h=To:Subject:From:Message-Id:Date; b=N3P5UIvbLvVtcyQy3c/m6Ep28sgg+S4cESmTtAh+06vLXEL83OHQwS40bgXvisYca+L5K59FhAe3LCu4o7BRMnUTdL2I+ZG+uycAX53AU+ix37BsPAqz9n0WYC5Q475Ro0QWw9jQX5xCJcvBnu+7eOs7JJMhtxTcEWdahnETt5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHnJYRZQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHnJYRZQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF734C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769974433;
	bh=WfzwmN3qbMES4Q19qXr/6qz/KIunScl1FEjn8dPoGSQ=;
	h=To:Subject:From:Date:From;
	b=pHnJYRZQ2mykEJNNTvAVkN1Lvyu0MNBISdIBFwnevCqVLeB1nBHoef+oLr/0UsJ8R
	 MLCsxLT+VVcdYgUGgYrfx6ZbFaj860eN+1VaP4m831mgSojBvVOICYeAQ5E6VfeEH3
	 dg/snt56DAZivUWtwghmVde9+dUqXZ/99uBopxpCjgSKmgjKZw60xIA9VS9N9Qkq01
	 NNj+k5MKSyhxfDxCZIm+HFOTF9pka08yhV4vKI29HHUbMD7wSJqhSY9ANgbX5KNXjm
	 aQzA/Q67GpsLdiLkqAq8d7+5xH3J5wCNp7I4RedPLD7QvP8G4VN5eD/ChCPd7LSQXH
	 kgmUw98/1ruWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B6D9E6529D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176997443359.15212.16434822805535797207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3fe592c74342d0fc9b1ecb129447dd02e6ae7955bee20486fa54313a2cd5660
Date: Sun, 01 Feb 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769974433
