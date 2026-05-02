Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E6B40DFDB
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777699054; cv=none; b=iLx7mSvYIAvfCrOpLYij270gwe945447z7saw4BSBLpKe+W3nL3lefMLw+0SbtxulPOlcJ5aNz45xDUt6HRCKNGM1/I9103zL/1It/IYKXaKpcamzkoiZReIA3CGDtkO14pN/72IhFh46R467ZP9GapnIif1IspaH718HFYY8Bw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777699054; c=relaxed/simple;
	bh=14skDKS+xViwSx8X14TCkjsecJEW1wVBNz/NoAv80C0=;
	h=To:Subject:From:Message-Id:Date; b=HR1mPqOIqRk5Ewnwe8HDYZqvzrXPDKM13riDoGQxE9fIQpotPqTdFcdxricVXFgEU07yW/t2ha+xi5ZYz/xm5SwSMXiVg1v4Nk3im6C/Fux8jqA8Z26TuqwRsDjwazr4uuemWKsWeVf9zgItwZF4htmz56Cx0McE9zLN3xSdAGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MD4RyRT4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MD4RyRT4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BADC5C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777699053;
	bh=14skDKS+xViwSx8X14TCkjsecJEW1wVBNz/NoAv80C0=;
	h=To:Subject:From:Date:From;
	b=MD4RyRT4a1e/5xrUdn5zBZ6TR+gTy5el5NY1B+4z2zpbYsmWA3ZHNfEwkynCywFdh
	 97EkQRwqvwohWhvUWCkHHynRSNYttbEbgZCtN4p/7TvXG4f5KdiURhulxOHl2Kfxl6
	 0hvWNVuO0U7B07DameFbTDR8rQF4P+N0xHvF5vwFXM+h/LXtGOH5iyUDYaHhvu4e9S
	 RaoJla3ntjN600ZnQ7CWW1aG93BuvSp9jeEQRQjfW4Q9VeobcgL0iyEVkxEU7iRe7A
	 gmPlHCzgY08IWfC0VvkOewE2N6Rl8f/AxFRzAASyTUwn+yQIIali+pfUa6GzZw27Cs
	 dLqX0LBe1zT4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9566CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177769905368.6135.6314407446924643879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d888bd202a74413ecfc5f1dceda21ef3244a4188bff730af3e88dc17022b3b1
Date: Sat, 02 May 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777699053
