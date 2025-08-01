Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339702036FE
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754082594; cv=none; b=HdeCofDrPJIOcO+Dy7VxnMCwDrb8IrY5J7QYvW8HTzNRGloz1KsslwwjyTy3L4Q6uELKk31IMetMD+fGnb30dE9jWUuTOYzhWxf704ymNpV0Se6ZDtvMhYs8/wQyUFZ5qnzZW3dNW7hJcmCLsif/fD5VtmuXfAJTEWZlu8Vh8Co=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754082594; c=relaxed/simple;
	bh=WNpQx4C5T0Q6JF3J5C3yomHUlwKdtW/l0AqH3T9WDgE=;
	h=To:Subject:From:Message-Id:Date; b=BLbE9I77w9s659G/eOcIe5XP6QfEisgDf6nWkZYClhN4TMpFpN0vy1g7xy6gPdhMiD+RaMYakBaTtE9CXdb8zW8dB06J5dKxrRMZlueJRQyRI/eK/003tCeZmjvcjW1qPn2LYa6PqQBVo8wRzn91ah0wWxn9XlCaBQJeIvex5eY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hWsWFRk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hWsWFRk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2185C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754082593;
	bh=WNpQx4C5T0Q6JF3J5C3yomHUlwKdtW/l0AqH3T9WDgE=;
	h=To:Subject:From:Date:From;
	b=hWsWFRk1JcncUEMmGyC9EfgvX0rs5KgLqX7tjnfK9PHadgDtl2nTL/5TpcJUt7B3h
	 VR+vKPWRe7rd+5kPpCDebdz7zF6zJxUHf9F5B+8BqD+Nv+0aGgq+QbQ6W95KxHEhp3
	 fct7qN5y1mJnooDZv9Fzxd6qAFCKKR1EvfrsrQEHi4ItxYcaJNmJ5P2f8QbgCWTnse
	 b9zLkGbfmoq8Cg5iLzcEm+d7S6tv18lFWgpR+Y81SRP8I1gkfOiOLY7GR3xHNpZMu5
	 T5R/ZDK0C75J/PigaJ2wWAC5OqjweMqyKQ16RHvUdVUSJqEJiyukAdYxBv/01Sdnx/
	 Qgwz2ocUWWDtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F432C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175408259357.25691.17238243748466338609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f5abdb17b469e836d23039962630474e13536342fc1bfa6c52dad910952ac6d
Date: Fri, 01 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754082593
