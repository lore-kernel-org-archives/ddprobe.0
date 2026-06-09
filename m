Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158D23CF68E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 06:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780985674; cv=none; b=ABhtDm+jLOsB9vVCHAi+BqDjAwAsScxeudHc4fRBjHN5yczbOQC1StiE1xu9A+xbgMVEbM7h9hdold9yAzztrfmyjzsDWRgqgvFbAmoZyXmFWc0dZiPUMs2FhJj3PWQqVHPRhMd20MCts0rIBh+lTGDm38yr17RiwoPtqxZyIxg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780985674; c=relaxed/simple;
	bh=JPMPMbKRnl5XfxewKBp5l4BNZmu9rrg4+BKJcemvZDg=;
	h=To:Subject:From:Message-Id:Date; b=JrFn0pHHDvVVTfyaAAadK112HI0WEYAjNMJk/YiIuK5LNl1verYCPAVNY2MktCFXuixBVucaMW2WBWhivUwu0n99SnsrZFQRWUj2BR5XsR04EcZLaywEk5XgC9rEIqokLG5QWGjLOmWc8MfYxuzYKRoWc8eRTHMhXqMvfNApi24=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CD3tH9Qq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CD3tH9Qq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD892C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 06:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780985673;
	bh=JPMPMbKRnl5XfxewKBp5l4BNZmu9rrg4+BKJcemvZDg=;
	h=To:Subject:From:Date:From;
	b=CD3tH9QquTCPRiWoSaMUuXBzYBnBAw3Tbd0AFuKo7oJgm9gvq86U7H0YZHh1VvMHG
	 LdvnMa4CUe5wCqnWwUuBSONTBFN6/2oVZ9cd+RosF4/Ik3y71y+KxxhhqNEt2RL1dW
	 WutYHyDsJNHB39coqL7gEyXZGTMNJJLbb06CK7Sa854G3OqK+4D1974R3Aby40ogzO
	 fs4K59ELsQGMFoZik29wE/BPGJHgfVEzakI2f5gbt236ii5t1/P20eE2KbTSaG0kpZ
	 deIaLPodhUQ5zRyiIgqSBZWinvwcU+8zQ80/Ji8pOWy0MlTSAPxC7S8/o0ALMIzPQn
	 9znUvpCW1adaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2690CD8CAD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 06:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178098567370.1363.13045044826485931683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec3faed80f166dba35aa0313ea064575617ca93f7b1bbb150b5f446c720b0ec
Date: Tue, 09 Jun 2026 06:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780985673
