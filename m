Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 308FF185920
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742988595; cv=none; b=YskpY7ruCCp31Sq+GXutgTz8VRsEPQo7QdWm/UMzCZnHQag6fs0jX9TzoxzRM7Vy3ptjUJZinnsdjwsD5zZUQz+IseEtleTuXArqBqwup7AQcFLLM5PRpkxhWf2bGetmsa5rGSS6eGDGhXSCkXrqZR4LkGsZUlg4N/5jDTIv9Nc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742988595; c=relaxed/simple;
	bh=DSgvD36RCNrmQzD6sHHTGkQbs9+jiX4/nhbMUJQUQpI=;
	h=To:Subject:From:Message-Id:Date; b=CLc97NoSFa5VvOgBunXR2ZzL25yqEFugs+Fzdaa0qEU575SKrQilL/G4w1ZM9mE22ECyD6o/K8eqspA7V5aZcYziQPSGz0g5dBTjmV9c7CMz+Q6x6cc779HAPwEU3m79wYjEPguW0bYhaGSO/r7auxExlsz74wma0yH3gogN4S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9bV8wg8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9bV8wg8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A712DC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742988593;
	bh=DSgvD36RCNrmQzD6sHHTGkQbs9+jiX4/nhbMUJQUQpI=;
	h=To:Subject:From:Date:From;
	b=u9bV8wg8BxXarifLmU7A4Ke4n+FT5+i84ILGNF53lH04yZ/bBoXLss8PnBAAGphEy
	 J9P+xc3j7VYIh//p8JMeTKY4LPeCn04csYAJc9YGYSrOZQea5ewH8O/JGczhYdX8uC
	 eO/O0HXpgCROkmrbt/pqWK5HUbLNl9MbLIozwQHWZACDH41HZY4+r7TyAHEjzCzbBU
	 8HW4jA2TQg79EvO+YokaTaTANH4aJk15Fuh9CHits+3dSV9/NaJtAnsz5FYdcigEL9
	 jyOCJH5+GzNfT6CAN4v2O5vQ0utWOf3PEhPeKLkod3AhfW2jZ5Dmo93LzVbrTt4hrz
	 3PyBActFK8OzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95926C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174298859360.10415.7816717868876896221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c88dfe2294ed429470071bc55dc9be7b6bd8c4227a69f19c77508977aa69381c
Date: Wed, 26 Mar 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742988593
