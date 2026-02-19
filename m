Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2159430B53B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771530894; cv=none; b=fYgvu3IKGFjTNK2ivrz91ID4D9xrmqFKm82Aj4C1z5drlVJwkZtMkXeisKlYfDP91oZ2QTi/r+VlF3M1cNLm/wGFHYwO4y9qHU2rHnz5SLc+SEao8QOyP0Is0U1kI5HY4m9j3tNfYU8XAw54fCx8kmdUdVoQA+wd4AEr9UaKgxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771530894; c=relaxed/simple;
	bh=Qy7OXvdaEF+qUQq6KEbcZvR5xqO+NY8ZSqCH0bVTfH8=;
	h=To:Subject:From:Message-Id:Date; b=r80yX01W0fhh3Hml5XR16gknQF8IPUYlgMiXHLdaZDn9OIu0QfXd5i9aZujxJX/LSJ/Qu7EoiLLK3k91oOkpqOQ/lKCct+y3ZfGhmT0jjrmUzUDNtv4YzNCj1ylkLQsPI9wahUj+clZB04cW+9hix5OTTiXbLhqLJkE8SnTx5Q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PZluzOdu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PZluzOdu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B85B7C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771530893;
	bh=Qy7OXvdaEF+qUQq6KEbcZvR5xqO+NY8ZSqCH0bVTfH8=;
	h=To:Subject:From:Date:From;
	b=PZluzOdu9RVjJVu+96bG9LQC8Dtdfm8X/c8aCKwwSiqaV5J/UA9/wxsRVdNmqfAkl
	 CLwwer9xyy9TyvjQJHHd2Bpkx91pfj3jejRbCFtXZrvhKXJ+Zvvtbx4sQjXelMwAKe
	 +7XdaWr8X81CKGVP7X+cKxQsy3vRIl9DwWXGWIQKkHLYyXNr41tGpLzBQQGUVd2i00
	 o/V53t7C6+tO7ksWbSG3jLjC3of1C8mrHCSZ6T9b2z9E/jLy1QIRtoqr9toHPHd8MY
	 j4qvJeWtmaCptzrIVjjXAmOi1jRPmafQcPPndoRzFoD3zPhvyJH1b3HV+pdi1taZsm
	 IP9dhcCXorF5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1E5CC531BC
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177153089365.32036.3383678137132536058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db9990e3d0d8dbfec638a2e3ca13ebc1743bd92540e2cb20ac483966862280aa
Date: Thu, 19 Feb 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771530893
