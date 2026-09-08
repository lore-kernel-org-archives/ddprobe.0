Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AD374C6808
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 14:10:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788876635; cv=none; b=Ces96MAQLlQHUPBNeLh7RM1ujogDJfZK1a5efZ8rI4VzAiVTK9RMKwoAffLh4MWoLfZQBnurcuvo+cZqrOAKeFJ46VeYqRPzO+WKpV9UD9RJAVa+VI8cBNHxl/OqZQUMh3FaQsYhcz1+3wmiOLLabyKFuT6I/LLnUNOQ6sPyWlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788876635; c=relaxed/simple;
	bh=bxxnbOQvfzPIwvUVK2NHaPPfdUVw6JmLz8yAgbtu2Yk=;
	h=To:Subject:From:Message-Id:Date; b=ZQQS2Fj5PiOrdJY9f2qqyJbqh0aKFPUK0qV+2BAbvUzd6DWJDD01VXWQgMe+fTLaRDmXUi42EDCXvHyOfOWRculCw4FR/d3YCQCnZdGNSpdbMg0oMlw99zQibA4i+rUbMUWksqTb2qHgqvHR1FsdbgoMvaqK8k0QwS3x/d8JaYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbMJgVUE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbMJgVUE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E40C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788876633;
	bh=bxxnbOQvfzPIwvUVK2NHaPPfdUVw6JmLz8yAgbtu2Yk=;
	h=To:Subject:From:Date:From;
	b=sbMJgVUEUuTIzGU5vKCqtHbUBf6cWlzPNC0GwOjYtIAsL3ujk9jRFtfMclanctGDA
	 0NTz7CrfGkxd17wGB3aLQQU4jubBfuIUXJA61x7L/3TzjcrKldsG5wKi6bZlvxSsVS
	 EHp/DWg7BCUiH6mhEWUZFEra6rymg5rXAJDowNJwUnWEtxORUKnuZnzU7QlJQA/qUt
	 6m8j8zmK2pMBzJPfO/V6IOAz6YvG5Qljp1v/W11mfpDB5GEGzHwWjEa3NbM4Ap5y7J
	 tSkXSs4H0XNOiU58er8R279fn+DhwoUJl6s2Pz7ErEwB2NTJOz06FFRJUNFPYUVW+k
	 kM2a8ZWGTPzRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BD0C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178887663371.5941.13393088466831611992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7965330d7cedb9b9bf72f52db82329d49643f4efceee6b291087f13ac00865bc
Date: Tue, 08 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788876633
