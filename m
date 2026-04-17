Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16935258CD7
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 09:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776419854; cv=none; b=uc3j0gxfkVXTAtPMwF59Ijb336O2aJXB1fNnAL+F9rszJRC+Ka74QQ/TfXJGa7BbWaeMWlP1ZIjB+n5SQ0EBhj3FaolaoQ7y8AMpjCnHr06A1MLiIwo3D02048E/f4M3o0KsM+M7qltPUXjjsD3LOZFFg/3HcslfF/JzdXx+49c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776419854; c=relaxed/simple;
	bh=YCX6D/93aD/twm9XfqGjJKpgrrSdlShxAg02dJqGGrQ=;
	h=To:Subject:From:Message-Id:Date; b=o/+yHxvn4OO9GeLY5Tzrmzr8EmlJOkXfL1jGUfqjIiq7ArStpo16KlsfUNyH95NLG0/9jHbkohHMmY+uZeNbTkWj9xXIOLfEEn26zxGlkfcDeRnnPdnEpH9UowpPVUC+IVmuITddnXcuElrxmKrLOHQYSDmz5SlGzezZaYFuwls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akOQwWC4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akOQwWC4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7240C19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 09:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776419853;
	bh=YCX6D/93aD/twm9XfqGjJKpgrrSdlShxAg02dJqGGrQ=;
	h=To:Subject:From:Date:From;
	b=akOQwWC4gUmSJC9NS6CrfM1XUeHVIYDThYHtMY7NLyrcWgKg+Ove/pUKgYRlP5vzr
	 Wj8hBSYIEhJUPxB7YJ/fOUu5GLWgOYQPsVcIKdSInmCdFvHyDm+lO0UKVKbBrS1NRW
	 fjb+pSQuFRDTdbtWfBHmCnIdky90lckr53N2gQeW96xaqdBCRvxfBtDSm6jqoxJouY
	 faKs9n/ZnqMliAToKQ/BPkWtNzNtQlqbuLUoyzwHmI7cdBiKGvQdW9gGyTxzHBOPkk
	 wL88fEwg+ub7yEe5jhVejm6qJABKKQZSZlruqRUpQMtWvH1sJMtlnJ9+CokhRyw/CT
	 62YWKbBnpDWow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E6CF43683
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 09:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177641985368.18427.4676246111482667734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 224173283a71eef43ab25511042a860c4070c9cc619fb0551f62207188be6987
Date: Fri, 17 Apr 2026 09:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776419853
