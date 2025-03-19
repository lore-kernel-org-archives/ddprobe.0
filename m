Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEEC1BDA97
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742407194; cv=none; b=tjUePc6SHYaqGK1NNSS0WimNerRpBSc4ANKRke3LuLZRvruTfANljG6OQHMNFIjWCeuxdivKIos+eB511q2XTQcMr+Bup42r3K6Wmh5dELbwJdXclV4V6IbKoMoOCkUr3/rCWmTLeFQdt0dvBTIP1K6uRq4HV9KkQ/l9qhUKL6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742407194; c=relaxed/simple;
	bh=1mmy4gB/aZgBjqGLnmkbOVGzrG6QWYyLNiNHNrpVbR4=;
	h=To:Subject:From:Message-Id:Date; b=SsJ9BBGmg7ZLY7Rq4yMdZcK2SA2UAgvlel33BfRFpNrjVcynpFuZwzpfy+uLn2aDO4Ob1Lmc4POEVP01tVX+cI6cP2NBpwfiYnGnux+U4u7DVBprbQ6xs8OECI9NobmYZfj2X/wIbDZCNCiu5z1P6QJ8wqN70CNOBffJXYE+BbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlSfQO3S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlSfQO3S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A57A8C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742407193;
	bh=1mmy4gB/aZgBjqGLnmkbOVGzrG6QWYyLNiNHNrpVbR4=;
	h=To:Subject:From:Date:From;
	b=OlSfQO3SKtMNnn1LmA/f95jJrAwvzyBoB4nr9UaPhvIsAfQKXXb8eXHvRkkzSPy6w
	 vtqW5iOPf9ZFllhByZZTMGN6yq3+QQxc1QdXKrj036unGESfsnZ1vdG13DGVzZMl8Z
	 16kPdl5Rg3awhUOFn5t3sq1Wiv9giPCIQXYrZC7WQqko/ThBGPncShR6P6lp2URs86
	 PvbT3FZu3JO52npGC86nc4V86kJNQyEHTBC9X84g4yLTuhhvcxeS91hoy6vctYwpG/
	 eyXppsdn4hefBGZn2cf2e+WZamOVJY/FGMcj3wndnG/+DiZnjlLhTHqNv5zzbrk1Lg
	 F7K7cdy0im5yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FABAC35FFA
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174240719358.26555.11922818860277700306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1463a57f630547cc68cc0640525215fda77b977153a713b3efc909440393abc9
Date: Wed, 19 Mar 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742407193
