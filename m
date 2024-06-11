Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C71211720
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 17:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718126303; cv=none; b=oLz0hvOw86KKEOdiFtt3sCXgNU8i5JZMcShCf1hyYjlk7G7KqKkfErEAH5LUWpjFHMzTiZ1fmfe+uNfRLir8wnmW1U/8zxgKUUMTCKsy4whK8xVH+4JctoKMwrhm0HATi15F+pL/1MWw0TYbu9Lur82GQX4pwNFdk+YDVu3EjQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718126303; c=relaxed/simple;
	bh=f0gDRRv0Al3K8F+/f3sosgBJm5w8CVkh1diyKDcCJwE=;
	h=To:Subject:From:Message-Id:Date; b=k5lObUCI5QN1YmmSKsM6veOE+I93r37uiNuQEAk9Hf52IbO6p6WFeR/E79m56vUwnldJQxsZkL3oLTClW8KsnIfrV8BNLo7bkyxJkTa0zSNwnJYukcth1D8hlVE7SHYonWi7T+eohXHHpvBRpHuzTjtUBb/dz0p2zqd3xAk4Gf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TkGFoG2h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TkGFoG2h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1209C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 17:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718126302;
	bh=f0gDRRv0Al3K8F+/f3sosgBJm5w8CVkh1diyKDcCJwE=;
	h=To:Subject:From:Date:From;
	b=TkGFoG2hrpD/S8oAjFRIjyZYmuVQYqs1vwhA39O2ZMxvfDPFWTtGCNk0uR/cGgPJB
	 xj4wN7PQzhzHKF98p0viH2V0BjlA+TCKZUxrrU1JEVppzwVuXh1KLzMm1fOZlnDiDD
	 Qw9ztv1xapiAr82MqHWjAHUjv4A+5SRkx4svrvAg3n0mGBnzdKDdNc8TZw/ITi8eli
	 iinpY0R8TWSVbiGxlNKkTrBlYYAB9WqYH1egPDOAm5sU7kYDhj9GaM68IGXBjkBFSL
	 /WzpjGK9Hg+8OCZzjEgHJKguN8fb5Mdyzm8S+kmwecd4fbNjNd1sO3A8qMeYfYcHyA
	 j82zwm+2Hstaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CE4C27C65
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 17:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171812630278.11902.4315224561761647128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18e0a69102d0982e7dab8439e055d17441087f3300e8b93fef2b8bbcd4e3402f
Date: Tue, 11 Jun 2024 17:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718126302
