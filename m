Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCD830C147
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786489234; cv=none; b=nnJVJrNY9k/pBsIUcW8Uw5KnpCCQvuFlxnKwki/EMLmDGzUNAGAxszmHIdVMl1lmBx91DbIJqbvwZJXFf+50K74wn7DO4TM5JloWFCup+VBT2c3v5ZG+cFJ5JovoYQc+07h+iYK3R+GhoYgDD9vmOGboqNpQaSFrHjeiVpW3dvI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786489234; c=relaxed/simple;
	bh=uh8HXS+LiYOeUOGdMEeVO1lJ3Wkk8bMnKQO7LoEWULE=;
	h=To:Subject:From:Message-Id:Date; b=ZioU12wdgDnuCNxPNhI/XJ1MKAnyNa7Ob9zLq0xGbKSqQKwwCTc8jVQaKH8yflf6SNrkhvXRXpDryRhna9lqtP2QreHU178tZDrUSgi+qXgV/jbJGu13I0WPva15FBRnN4qEkQq5M0lb4vSLoU4i652tUxkILX6HaC09dQKsjk8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gn5evoIk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gn5evoIk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D958DC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786489233;
	bh=uh8HXS+LiYOeUOGdMEeVO1lJ3Wkk8bMnKQO7LoEWULE=;
	h=To:Subject:From:Date:From;
	b=gn5evoIkINWFEx6R6MXdXHcZp5UjtSYejTDIkASX+fUWYWv1uw7cCwbMJCCMQVY8b
	 pDry09vCdZ4lClimi7BABdYS0H1aIjtqubQaW56wWDDu3OlcdFwnRGgFq+wJ0IiBY1
	 rafyvjT5pO/tH23NHHJYgD6BbJJUgd47zUKq2KyqeoxeoaXsQ7ySkIpnivktBJtMoB
	 79nngdU+6JLNvtyD+fi1JxIf0pnoKnaYBwKJtQYj7POdx+XqVuHnZnlBMu1Un1ZZZ8
	 kb3RO55jBfl8AWogj+pwejm7n+maI4sPJHAA1gDlSJQrt8bC241OxmKoXEPiyK1krM
	 f41/PiH+k1N/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEB79C5CFC1
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178648923369.2390.1782173250255238055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 242493229b108e0709eea49cb181bcd37ccc76c6afba775e6250233a0bfb4dae
Date: Tue, 11 Aug 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786489233
