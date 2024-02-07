Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2BF71CD2B
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707288497; cv=none; b=p/lqB8ljOZF9LQOA8F5oTR1irJ6Pp2uzTaeQouTm9At5TBDR8BZllp1G4y1iUBvuGQC//xwfHkg4SSfaekDvXFWvBsJtWUx0QcEcDGK6XYxKQdZBJg9ZIhmzaqE0luw3IGY/haUCAEEcwCvdcXVu7ooGrZhp15Yzw6m6tXxYVWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707288497; c=relaxed/simple;
	bh=oP/iSwKLjCQfH4xVlZcC+e6CmDsICBMXoeojVSR7BvI=;
	h=To:Subject:From:Message-Id:Date; b=fQFLXGPPSZ0wqRwKl7b5EShaxUeMUJNwXcm6GDZm4Fo39q+dMaeVRASc40abjBeGXWPDAo2u8bcFiulY/7Sf5qNxUsxNMcSefE5Hf372aDOr+2soKcW2Zj20j3t5uYF2BazeyEzqBGspvmbnQ/pGxnbOLHELDCvqbgECoqFgS1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHR8ZAOY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHR8ZAOY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CE72C433C7
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707288496;
	bh=oP/iSwKLjCQfH4xVlZcC+e6CmDsICBMXoeojVSR7BvI=;
	h=To:Subject:From:Date:From;
	b=uHR8ZAOYEIJ0foDzgP2pURS8x0sdYo26W9yrp50cJkMyg3unn0CfsbxgC6cTg/cYy
	 tZeJqST8qbQQ7+/2/mXWb/IiIOK7d12Kxbltlj/EPgHNxGAaX45mDGCvisTiMbe91I
	 uAhWIMMwjOBqi5RyieeUImS5Y78L8vfgM4KEbYtJMDIH3Ik4DPx2mATUYFTPLXUWp6
	 cmrRLpSE/59ppWQsAi87uVs0/ZjvIwbj65hRgfAJAxWZUDfeMcXF1h3YkB+8N0iJjT
	 p13ivVhspDYNrn3o6ZUoU+VqwG2+BTSUvJX2jzgZ+LB90w0/4F0usvtfd4PyZE8nfe
	 s5BtTH1nGhdYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CA59C4828D
	for <ddprobe@lists.linux.dev>; Wed,  7 Feb 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170728849637.23396.11739569914203742520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9946496a8d4dc063c46dd4e3a015420615dbf454a4312b53a94ee05c31c1787
Date: Wed, 07 Feb 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707288496
