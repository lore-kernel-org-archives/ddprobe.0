Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184272D838E
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 17:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780854874; cv=none; b=RqBme2gSASwBos6p6+bgTuCRTO08RyDhHe3ynFdBzSkGbFWteEkdURbKk3YZdBboD+nlacyG30nN7stYlKb/KvaOvGanyoyW3zugv+bTiX3rf0nBCbeycvr24rO6WfFa0i9NzFR/qgjF40zOMDloIyzvaMdiVOcWM5YIMXAuHvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780854874; c=relaxed/simple;
	bh=wXRnKgnD4VWqk7GLRqbuniYUCxsKqG5fYfFfktt2gAw=;
	h=To:Subject:From:Message-Id:Date; b=dbYT79zDKi8ioTSMt1NZzF7MgyRLiRBpD4ktp8KJIe7cVa3l0wzWWV9+NFOG20sFASTcKl1APQFkG5kgZQffqBTPUu7Bg7lbvMwCawaRw4+CTXgo9ztUiuQOefmxK2ld8wsBTp2I300njSOG65R2bLTorHDhBntkHzCcObOO+wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3Gmic+j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3Gmic+j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4AD1C2BCC7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 17:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780854873;
	bh=wXRnKgnD4VWqk7GLRqbuniYUCxsKqG5fYfFfktt2gAw=;
	h=To:Subject:From:Date:From;
	b=c3Gmic+jU98nshzBA0WBv6tgCJhW9GcjN35L7MaOmSf28lciDRG5ZB+8G28j5Hu4P
	 w+oUT0TPZy1OQVHrJkpQjTc4TzHXCAW2GJ4+Lp2fan1pCpuajrSBKWe9Kl8VEFHmUX
	 i570KOBlJYY0E0zOKendpNCCf3coNY+xWCUd+pGIJa8yNp0HdH+6LyXwFBHkIZ3crL
	 W8Qa0gMQ+7sl9f77wftMtUwMowlMFddzA2cEbTvTnh81Dsen8f+6zQXmgAzkVt1glK
	 MepD4fG3S5UMWrOfChK1ARppfjK3h4Er6jRk8gr6c+wbAZa7K0Z7S134vVz6MkWlWr
	 Xe7u3ataDAlaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3D6CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 17:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178085487369.3082.10905562003857497517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0247fe41a944610ff901b6f52d0894fed787eb286966addf6f5bf47f6508fc37
Date: Sun, 07 Jun 2026 17:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780854873
