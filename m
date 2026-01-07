Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75C68363C78
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 16:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767804834; cv=none; b=M83874eSJOOL6gbUMDeyrvlf7JbAoT67VH7sROhsK0cCXY8HLm6xGk+ZjIsxziYFMqzEgFA5oJZtYrXB9FVGJH+YBPI757CAj2/CnOjgn8kX9nhtvdCgpvZZM27wl/8wQhL4tiGKrK6vBOm5jUcdA9A7slbtO5Fmm5+pLdPlZVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767804834; c=relaxed/simple;
	bh=AxknIBVFUm2bdPJy3Hveo+vGz04yGJ00pKD5ZMpXZKA=;
	h=To:Subject:From:Message-Id:Date; b=Vp+ENhYcGzILgOC56WhKG1szwVWtJFsBKVm1KePCC+XRh6+Bd9fhTi4e3cb7Fqazhj84fR0w/OCg7TutEljxzQ0Jfa1A989kBJUC9kmk5J8hbVrnf8VzCwi9KAbV5C6lp28QNQrvPmXCtyGClEpRcaD8NtZWjoNwnStfKNMof78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ksgJecml; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ksgJecml"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EBBC19422
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767804833;
	bh=AxknIBVFUm2bdPJy3Hveo+vGz04yGJ00pKD5ZMpXZKA=;
	h=To:Subject:From:Date:From;
	b=ksgJecml3UhVZs9sZW/jVP3krFtmA7zQeXPX/tOT+VijlY/QnSXDpyOui/1Sh93Uz
	 pBGMMApu+bttH7NJtO8i+ytti3XpEJT1OjikhXQ0fek800nAExSG/kmfviwUvjw7zT
	 5fzDvHD5QpApeiHCdZY5W6Px+RIBwI4HsyGL4My6mXiMdpiVnlCifT+cFZz/JfmVro
	 V84/bI18KkFkr24uUu6EQFNK1FcPRkCRUkbJIDmaKpAI1BFcIPJd7OanMOowCd/Eyi
	 W/ulYThl1dtkKMolzXoQvGlhKWeo6uqVhs4MRqGO0XtwebTDBfRd6wsO/r6HWuJGC9
	 Vhl8f29hcBjSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDAAD0D142
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176780483358.28137.9501865586019592431.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb69075d932ebe6b333c04adf81583b87c23031ac43f437b49e23ed00ce3e05d
Date: Wed, 07 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767804833
