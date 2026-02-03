Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEDF6224B01
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770104034; cv=none; b=Njd78XwFdKwTqQMwiXr6CduUHhXpBMyTJYGS5iJXF/8bBERQg369YJAxZBE8v0Ka51Vqo4N1+0si7MDIpI98COVIUvbWnRH4RcUrpmAvBFt60UNhr4dgcMEfEUK+nqRIEK+2Gb4QaCoWb2s6N7KBm/+l7LqvWywegPAeoYYAIz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770104034; c=relaxed/simple;
	bh=lJAbABJjjM9Nh/orVPxkYWBKU8JIVfKHWq3NwBvgBbQ=;
	h=To:Subject:From:Message-Id:Date; b=cm2YU2zTBBZZoCUz+j8vTGp+nn29tYlcGUpuXNJIXuqwBjcNul5HfJhvVIKDGBI3NrlyKwdu9Aoz0kOe6FpLExP16/5oSmt/DzmgQUKltk96An34Iex7eLXkU+KbUyf7bVhhsuIKqEQir0TAmDl+MCUH0DA0PeMuT9ktijmYdE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqsQWJsM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqsQWJsM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7DFC2BC86
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770104033;
	bh=lJAbABJjjM9Nh/orVPxkYWBKU8JIVfKHWq3NwBvgBbQ=;
	h=To:Subject:From:Date:From;
	b=oqsQWJsMXKOTIp7pWLrDFlT416UoZO3WluNiTirgs9ucMrw5vb0DRivg8WUhdcv+m
	 a/kdEECJm5KjBgD1gt719/0raCkG6P2Tsl37v0+aQh6dobCMYHNqPwHlzHtJ1Lldbr
	 cQ1BEzW3y5xtuQtzZTta0cI8wXj9bzyA5uI3tB5mzHxaB44xdWYg26l2PRTcfF5u1f
	 3tDDpUbTp2VsL52mGhG/9FWeMdW59bJzg5RQmELlPcAGCVYf773fdSQz1kt8YJ9F+k
	 t9kamgGVwxN0wIb341a+bmIUxBcrlbKVUWY8mCee0S2Y4LXMZHjzFJ9pHLL0KMrSCi
	 spRPuCtN6Xifw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961B9E8305B
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177010403360.9666.7764893217319387092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed735e68127e3993c17f4f567b24ec3cf63271efee900c0335496d231bfef2b7
Date: Tue, 03 Feb 2026 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770104033
