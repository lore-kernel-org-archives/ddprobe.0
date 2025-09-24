Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263E231327A
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758728394; cv=none; b=GZ5EMv6tEgjxqkuyi7agmcJCm/8G8DDD5UbQFZPQqR5SJ+iAepiB1ZUKC661o3zQTniEHcT43cNJUW8lWAeqDJ0zkoTjzy7gBmt0LfMYUT5SzgQAcO84TS+YsqBdVJdeWRArU+RdtQIDEqGzN6fvX7EeBCgeGJ/FOqc87OBJf5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758728394; c=relaxed/simple;
	bh=4HWNsEjq0MXTYm4GfFrurZqIkPChhb3ou+yuBZpN6Z4=;
	h=To:Subject:From:Message-Id:Date; b=dBipsyg9lI9OTNtY2jJ0pBSlS9dIT/eQ1EcjZAe7ZDM+ziXmiwuyaCm0dRItzgKyGSefTimciZjHuT8RqMW5YreYr5wgt7DtX84NTr7GEJN9+NnIFfAYzN89uAXDi4vXiem1QBq/HB89oCDyPp5jjWu19nvq13XdmF+jvQJ9EwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHVsynJz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHVsynJz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07F6C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758728393;
	bh=4HWNsEjq0MXTYm4GfFrurZqIkPChhb3ou+yuBZpN6Z4=;
	h=To:Subject:From:Date:From;
	b=KHVsynJz9L9uASK7Bc7zlX3mxdNC5QJ6AR7rNhD87tBikabvlUBCuPwcjUs6X6ptk
	 8KG+DxXiQO6oUFnQ4MnR4RqGqV96kwrc5FYDprTq68G7YwiACwismv5kjjWa3Mw6Vx
	 BIvuz1ZfhTdgbdGOVAhctxnm3KPxIbDKryv6ZV41+4GXy3VmUm/SYg0WhApNTnZYRg
	 rT0C1gZXsNn5jyHRDtS14/wmoAoT5RSaxapuKNIp4qW1Rzxp5ZSFJ9TjwVsDn2t4Nr
	 Fe3aGObOasVO0RoP+WY6vkSIH+S4QPfWmHjcbQkL5yOArXSca+MaCepwT7eO927ugo
	 XEkVj9mRJHlww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF9FCAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175872839362.20410.16021410394303371981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e970183f47751a354750033a38bfa2caa5a8b829450985fb19d7cc542678542f
Date: Wed, 24 Sep 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758728393
