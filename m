Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B62B3C0C
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 04:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720413383; cv=none; b=j1pK8eHWdvAmlL4A0sg6TRhsoBfCN7vfTCc5I4zHnYYblOCzriBNA0rqHRiSrXPh71cyzPhdfOqbPLBN+Cv/NrkyjYxT9zGKx+r8xrGLPgazHE/KSLMPYTU+BiSJxNv1rKKrEr8KaGYzAmIKQl1reRZHm8RqDlxrtu/lnbxeWzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720413383; c=relaxed/simple;
	bh=9loOe7vDhxKFfGqHEDeNTd3E15YKShbcGGtsiPa1jw8=;
	h=To:Subject:From:Message-Id:Date; b=cmNQexZ9ZtUWy0tRs4oP2061aGXOzNXmr3Yek5uf3XPMGsWifSA+8TBDnMop+36PjSaDM/c7wF5KfjFBI+oTHUmYShNtazndtGszwYJpMa2yYlyNcOMZl4nbCZPwXvWnxW9cnBZk1EL3XlXtZ3i26bFfFqOFpouhjGhME/M3ixE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2JCzWX3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2JCzWX3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E11A9C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 04:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720413382;
	bh=9loOe7vDhxKFfGqHEDeNTd3E15YKShbcGGtsiPa1jw8=;
	h=To:Subject:From:Date:From;
	b=p2JCzWX3ZKAJWsDw8gjhME6TwaNWfH/1x0Xd8YM9HUzH5FZMdFdqEHbgY+QfsOA6p
	 MbRH8An63dd0YJ5CX7ABvJVzUKvz8CnZgajSViqPEsqzjQzz9dsCBc4UNoAUVbe1j5
	 gI32z3J+slP7UbGzN7EQdBlbNLMegKw3KsUkvLvyMnJsPz26S1HGAy6eM2kJti7tKn
	 Mfc4BnIw/6wLtqYnFhCVBfFH18YkA78Pt58sZP1M5lhLdxi9dFR5ePMEQD9HbLz9VS
	 swJwndAobJ76/tA1uQvOlSKgaUJFWuLUWGwstZ7ovNdexNd0/3bibL0ACADJdb2vV9
	 0nk228sN4R+fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C62EDC3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 04:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172041338280.12160.910452278701408628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 316e98ec7686da61fd68db7474268c43d02f8a98d0d83ba39dec5c0036ec1eb5
Date: Mon, 08 Jul 2024 04:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720413382
