Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B2AD2D6E40
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760696394; cv=none; b=MSH/4vCk3wprsCtzSjLPnrmTYFiEIdlbPBj5849+IPu0OqETU3uqxCAGQ8yi4EVKBslKkvE1W0kcHvRzCZbwEPRaWv4FwOAmamTWg9vRXk3WqZaJrOTAMNfGbB7orxhBdsAEcC6PCHyosub70fHkvPCl3sPy8jpVSee4eo91pTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760696394; c=relaxed/simple;
	bh=iEfwARz9JzZIh/2Y3J0cyXjgvPhyEG5v3iwyeLmLp54=;
	h=To:Subject:From:Message-Id:Date; b=Hx+nqIm1ppM3y7Ou++Ysn6TY+IQNHRq76+cBoYTYjqniJp2kR0gdl71Y2mvkTP4EsrUwsKtMA0531h7HLR7Wyfvty0Dgz18yje/BzUKHyL4NGC3tnaLxr2Qt1qZ01BA3y+UXOOlejsVv2ayTv12V9DBIfNQw+ss9R8qCByY3QRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpo0KKHo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpo0KKHo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45CEC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760696393;
	bh=iEfwARz9JzZIh/2Y3J0cyXjgvPhyEG5v3iwyeLmLp54=;
	h=To:Subject:From:Date:From;
	b=tpo0KKHo9MAeRGO7ETmriM2j/9fIEVFr9XwhuwkvrAd6m4/n+uAIQvuwV96GT5sNe
	 hbCDe3h+lPuVd1oV14NQ/Iprx+jjvhJff+ydozt/QDeQ7mgQJlM4D7fppOKSVoyndP
	 uAidXGXNBdihvXW6/1VdDbpxhXFY5qvwkJ1W9XsL/XepKk+vn1uDqANenYiaVMwGHo
	 6SocghWEzJhFjHzdUf2YOiQ/JkMWE1wNLDcUZu1FPYIGcJ3M/oPTvMZZy2H+lkGxMH
	 YZrFgGH9AttMp9eXbyd6ivlSptPE/CrRebW/XThWvUBzKBUYHmjB084shfl9k4mPeg
	 z4R8EB9MYgsMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952C7CCD195
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176069639357.21792.13323365367781259192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a347915d4097c1d967c6c3b159bb0bfbc57d0084100d76cd70e3c070ee70bccd
Date: Fri, 17 Oct 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760696393
