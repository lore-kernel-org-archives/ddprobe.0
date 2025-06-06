Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C307FD
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749241193; cv=none; b=I5gR0+d0jh/MiuPfGsO4fAnwySrkPtbfv6hpwx4u7IjFlC3+ujJ6z1D7heUFM6zcCbiAbJA2HOsd2FNWOnlx6zJK/Zo3MKYsV8AQUy7Ns1Nu8JWK7O5dVyvXpON5BmVZfQclGxFOo0jxHSHFjyH7/COOdbj4PfTbVAcgIMjD4Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749241193; c=relaxed/simple;
	bh=v8maTA5brXZvryXhM0Dz8dTOs3CJaTpBwGl4bJdTnXg=;
	h=To:Subject:From:Message-Id:Date; b=maMJadwrw5BBGOc8qkpxBQNHWoPUNFvkZ3OtXmmVJE5Q3flP6p7ldHFoQFvLTC01Jw4S97+IwNs4UUuglNTdOK0y4Ig7KjxOg5lSrTJfnKCE5xujI3FodTdfzP8w2FD65RI9eGlVAfjnYGnT9QGqBYEaVP5CMXsUM5wQynJOdC0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVOilkLj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVOilkLj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A218DC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749241193;
	bh=v8maTA5brXZvryXhM0Dz8dTOs3CJaTpBwGl4bJdTnXg=;
	h=To:Subject:From:Date:From;
	b=CVOilkLj5rd47g/iDJ6pHqNSGIeQmpZ/ZGa4LOwTVw0nKOstfyBz0bGppm5+Pb1d7
	 8PxXyYO+K+NaqkqwQz75fSeTJ20fOwW/AG0NRGHw2YeTagj+0Sjda5Q/qJfMVxRlO6
	 GAcXRO7fCKtOrH6utntxNalhJLnP7xo5VFQ1Dh5tY9wg6zkGtocZt5fQDdNWmbt9kA
	 sjnb6dC18w3y+L8zu1VfylsTjnkGtXsRjegHg/UxzUjfZSfTQwAS4YZouqAJGtInRD
	 8EzoEWXDnVg7mNvN+LuerKOZYxqskzELW2AUz4rCAcYmuouYfOdnDP7+jUjPIv3AJT
	 UJkmjaOiC5EjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E824C61CE7
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174924119357.18851.14373963046738145629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1f5a9a812e27b2da683ee7e4f8cbfe7c2cd2fc1f7f4484561cf62d8f9031024
Date: Fri, 06 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749241193
