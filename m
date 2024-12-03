Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2691A1E2820
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733222754; cv=none; b=CZL5vCshOVI8kaItnYyaLEmPs7j1GuCvOAIRB49s/noPJymo5y7txV1A/7aadQX+DfS8thlShS86SDLGl2yJR9qYmsIqXmSXBxJeDGjgKOcF/fARvCWLoyawAVTgLyyR98/8AT8LxoNP/5ZKmop/05CkLO3NUsCjhXq57xgcqZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733222754; c=relaxed/simple;
	bh=4lPqgV9FsLDXa9HHtVcBRKBbqvcY3qeSxXEO8GeJa7I=;
	h=To:Subject:From:Message-Id:Date; b=EaUA8UfESyeoifBODtb2uQc4SU6eRzs2rlupnOr+9xKfarGnaSNiuiiCC6a1cPBs+GRzaacbpi7R3qLdtfmCH79cmjhfddtGg4Bh6hgF7H6jUrFIPhKsw2ztwxjp3zG0SrtgALiAOYhlbNm/2tIjmrG1u7nNR7mw+TMmSMrufo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcHv7PL6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcHv7PL6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B797FC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733222753;
	bh=4lPqgV9FsLDXa9HHtVcBRKBbqvcY3qeSxXEO8GeJa7I=;
	h=To:Subject:From:Date:From;
	b=bcHv7PL669O8p35Q2CGnAONkIDCs0l3Vh5ge9F93mzhK67yvNzVGZV6qwCdxTo4Eb
	 8J+dkfh2vLygPlb2USxgb9QhFCMtMHjJLrOSHLlIkKzK1ZPm3jIHp3yqfPdcYLIuRG
	 0UmRlMS+dgl37u+v9lebqwLYGIWVGOARsk49OzOup1nzD8c0bs+YG6RxX4R/TUSaxW
	 r1g7AK4VBZbbn2AO40PQMJVDCEliMW/DXX5JxFESOpqEk+b7LcTwla/r5SBSiimPLl
	 I5Z3m0H6EWKfZdJRB3luDXlWautwr0swKH9t4COJCeHzsBSwNBc/uxMrE5nqPdbvPG
	 oayCTdzn1EdjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8E9E69E9D
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173322275363.984.2975058372206032399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f49989c2960db145f58839cdd239a5684b9e7aaec3fd759edb0e6a88ca56fb3
Date: Tue, 03 Dec 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733222753
