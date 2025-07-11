Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEBD1E32D3
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752217794; cv=none; b=lTkzNlqWqzQWA4/qigj8J8N56RTOgAsTlxbhJRiJ/cYH5NsRpDKKOKUsAPnWRABVcHoGPrWgdgZqpBqbMkeLDetZqaG2leXi703SfVliGK2ClgNMtEXkf4FdXjBj3WoigF09crBfAd0vVkonyP2oS4wOkYLgDQpBMMgC4q1QsTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752217794; c=relaxed/simple;
	bh=SpK5gEeGkJH+mycy+ECByQmZl7RAW1+wYsCEwCgH9RM=;
	h=To:Subject:From:Message-Id:Date; b=k921YCKJPKvS9v/wllkdNwVI2xVARBQZjIeCU+0jkZIW9tIXNJz9sP2/dq2OlHuPdOoxf+ZNjw4sLhbmcppMvxLR6zy64BtvNIRXoBFM7R++rMYpfQdanwzz4RlHUxG1q+CilMsGtM7hW1lpjiKO0XQXs47o3uWzRAb09Yj3pGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DaU04p0j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DaU04p0j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F28C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752217793;
	bh=SpK5gEeGkJH+mycy+ECByQmZl7RAW1+wYsCEwCgH9RM=;
	h=To:Subject:From:Date:From;
	b=DaU04p0jhn0M9sX01IlYYWKZcGPhk/mKpP15x6hvSy3zTETQxw+BxNbFgRACLqfoe
	 eUyHLpHzJhnhGGOstlKlIPmOe/exo5kExA9No4tN72EpayJWeRsfHoG7zA+vKIueZm
	 +KjridAD49hvbhyVKndKqwcMabIF2TSLNKQvYNKupt1X3INsXCioaYuVndt5DyCrqN
	 o0aMzu1zuAGFMtaqG0VGYnqm6fBbVnbKKftRQeSRPMd7Hshyu+nRKqFKDAiSTsOoyy
	 OzFMJR5GpOwvP+Qb1PZ6Nw3UQZ7A7NO+wtWud5U+SYaj8674hrNumwQV7oRMwdbAYL
	 Ix8cLH4qpKXhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA04C8303C
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175221779357.6111.13228132792318139515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1486540137215fbbae6eaa9d7f005fc0e6428f20d3ba9863ebbcd3589c78fbf
Date: Fri, 11 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752217793
