Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1D661DEFE9
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768310633; cv=none; b=S0OiaLQ3s+uisUuaelGQIT7otjUkIrlhnut7yamt5vI6LcmWHyQlmTZObuI8iWwkm2He4NOcGQzhKCitPcqUwD3SOo1FvWWjjPmv9zIbZAlrDmCoQcXqhWRu1FmMNKByuCzDauF59MBAEecKnpLwM0TkRNOfvsC1dldMegmyp7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768310633; c=relaxed/simple;
	bh=iJ2n1kG/38nx34owdlALrzgiVLrbmivY+knripUJ1No=;
	h=To:Subject:From:Message-Id:Date; b=ldIyf+muqAXOeXIRE/BxfbbrGpBAtkSDv8BgyN5PJmUtytplUbW7voifD0kyYUVbBpTAsK7vHl2qOz7ZZYfDJAig4HqdmFy3NzmhR+e52aAu5U/MEHHoRlm5sg2NohPXG7V+N26tE7bQymigYYcCnEXfzuZ4ZU9Y6VyIofE3wDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBU6ClnN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBU6ClnN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EA0C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768310633;
	bh=iJ2n1kG/38nx34owdlALrzgiVLrbmivY+knripUJ1No=;
	h=To:Subject:From:Date:From;
	b=gBU6ClnNcJY2akO2cSZwWOptZAXd3v88A0EjfxDOqhL1bnMgNC6LnSP1Om5zQnBmW
	 Uz03ocxbxdT3/j1VgVLuvmEdG2+boPB6uPFuMNZFMLaSh+758lSbxC+gSXAOzFQ/Jz
	 C3M++d6hjXENo560OXLrDhrau54CcjI6Js7U7t68YBmctDkBpEHWnZ0AJiRKUNbrbO
	 xY/yLN73Tn9ipYcyA59JpN6wNC/WjWqLTdprUd8ASA27Zr2vvb+XWrOAVCV3m9HOWR
	 a77DC6/vs4E0PrUBvhGxnb5ZVhRpemRKfKFx15XUbNjckOB7nTgWTHuO8EcO73T8BT
	 lkfi6BuDe5RZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9004DD2D0FB
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176831063358.12386.7797381444508235208.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b530bc2211fcf24c146615061c770fc86419794cd4c94625281640cb8f78478
Date: Tue, 13 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768310633
