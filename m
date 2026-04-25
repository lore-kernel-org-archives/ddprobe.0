Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C852381AFB
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 22:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777157854; cv=none; b=IveFIDtechHLBMnlVUb77aTGlp1boW8guIUaryrjmvKXt5Aswcishynz/3xhYAFqBkLU03GryywQlmUYbDAc01ZgqWST9UdRynaIP/4zQKLFCShr04tU3NXxNuTUFabhT9yraPGXTawXyGuOKbamqz+AU/z0U/U/UoJrY+sxUKI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777157854; c=relaxed/simple;
	bh=s1KoOt4dmtU6CyKwrU7wTyOa9BMrFeWsvCl+J6LlKiw=;
	h=To:Subject:From:Message-Id:Date; b=DZbjV88/sqnNeLFIuSyYAhY5XJu784RcY0Pmr9uz+3ZIBgOH6HkvfWTwhM8ojFLd/x/0MRv6AetDAkeaATb9xOq8TYMz6MpCs8gVnKgUmWpdpmHtxVtrG7GaQagkPragCrgoUGHUnJAD/KwAQNbkchbTSAJTfN0Ns26Tmuyo7qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MogY4xQN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MogY4xQN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CE5C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 22:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777157853;
	bh=s1KoOt4dmtU6CyKwrU7wTyOa9BMrFeWsvCl+J6LlKiw=;
	h=To:Subject:From:Date:From;
	b=MogY4xQNMwvPZ4Rp7dZKTr6JXLJxK88aiqHyagdxswzJRrA6dqlYGHV7rrEyJ6UDx
	 8ec7rBS+X8FM7PxnrzgPBiSo6Ng4GGI4kfD55oaF+Dfv6XU7wHroRcQsakOQsFyKGE
	 6rKQMh0ri8d0acK4W2LHjCU30TS1bC4jqxzmYXZ9a1kn/WidSJV5M4WqLQZClZDHbj
	 ldC5mN6gMRaMr6vqzq+9aSI5lhDgjmukT1RGeDPtBHkEmVItFJ27xDFo//zMZQT6PW
	 dihZOy9S6JiD5EHeq3bHJND6W71EswcylPAalMq/6MpVsMphFji4R0Z7vo9BCCmh3G
	 3WwxPwqJOw6rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A2AFF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 22:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177715785369.4213.512668586307924673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2643d288cef7660c1677ada3d29546973dcbc7c08f9bcd4bcaf7acd44a3f749
Date: Sat, 25 Apr 2026 22:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777157853
