Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAD122D4DE
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759890594; cv=none; b=Xwh43qULTQhNw95d9NSsM1UDZ1VZtV7xPq3bkuvmGhKqJQXFxyawJo9cdtpCRJpNSCnUokV89NFKvxhWMY89F29PLXutp+dJc+DtcAmj7+XuCgz8MysDiujoGcBG5bexXzqHBQS/p4dog9/S1/Pvx4fVjE6Z+Ur/iGcSJYNBHmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759890594; c=relaxed/simple;
	bh=IkOAZXAIdVDbEDAH7vk5klCsXRgBfruJ+Cf7AvbWSQo=;
	h=To:Subject:From:Message-Id:Date; b=tWjuTDPlyXP5DBhTDUhwZPqC/FH668F7Edox3wvjIHPB4nlidI9XUtFZVSKKWZjUjb+xFcPmZj9KXc51LHFJwhKtLUEPYUNUTohc6oIq7V9ueHuoUqaUbUdTWosMb5zUe0p+54MnYTBnhJc+xp+I82ojteybwgMx0EigDA2N8Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kQy6R2oq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kQy6R2oq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87E3C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759890593;
	bh=IkOAZXAIdVDbEDAH7vk5klCsXRgBfruJ+Cf7AvbWSQo=;
	h=To:Subject:From:Date:From;
	b=kQy6R2oqZRQqWOP5KFUnnrK6DGvT/FTS0SaFqLw1xjhuOuHWM+zdSVw2xic4l+wnI
	 1pEQDqYYLSZ7J/HEAmBk5V2FiFhQHIThVSt84fB1S1uu8HSFOgoYtQoXwWpZ8uU+IN
	 z6/rLmTGQsaj9vrrxkusY6fvZLoR3jnD9z2a/h3kTmI024E1FH894WHeF+D+4ucxD/
	 b6JUscAqrlYQmuCZtJPNklbIFsjsbvO7xUkgV00yWecMAu5VaLA4LDBwO4ZEAjra3T
	 nJUt+TpSGS1sxdOB/tYUnxwZB5phugW+WJUXpLpQDOJz8OEOseXW6eXKI2HMmuXUvW
	 zPSXKk78iI93w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96870CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175989059358.31282.17475076131187690749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77833a855ca4d0c47205d5d95889602a57015fa9053de7b08ceaa03e6f5b6da7
Date: Wed, 08 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759890593
