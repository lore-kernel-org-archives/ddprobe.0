Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64DDF7082D
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785126034; cv=none; b=RJYScOknHU1muJBujU8SL60Wp9ObuEyF3FlWuuz/q5lDUW1JuUdRZ+GWkrNrzv1riVO/Zg+ytkKxsQ8oLIERwBxq76cgFhDVUSPXJThutZJ5DF7tehHPScxzHDaLLHbOXZCydtX1KcdpBCFMyGHSwVfG6Mva1PpAZORsbx1LN+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785126034; c=relaxed/simple;
	bh=d1uf+CpuGA4BoSJKh0hf4BKO1cDBQ3OibnadxxfDJZU=;
	h=To:Subject:From:Message-Id:Date; b=uuk1eqjl61tCA/NFnyiMW0XrWf9ypKWbqC4N56/FGLONnlmYRi24AI4j8+Td9JLReOmRiSesDPpuCfsZvxMtJGZRSEBD6pBB45jinR1uaCamXaftbiK/uweRNjKyrE8YHpgDghk90FepULTEaqg/HrZHMKJOA1Y6S8e25Kq5Xfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cX1auqyp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cX1auqyp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3208C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785126033;
	bh=d1uf+CpuGA4BoSJKh0hf4BKO1cDBQ3OibnadxxfDJZU=;
	h=To:Subject:From:Date:From;
	b=cX1auqypISiVgEU0JUqDDbL+oANJK14zcbGNYK6k5DLnCWP1BzdpeVi5t04/5ypL9
	 HJB3qXLhTksQ7P9OKeD+DxcYsKsddgkg2YBBtlZ9K0NiyCeRob1HECQ5LyP8L6FkjQ
	 T7TpRaZm60KIjbBw2hxprS1wHOwXv07g94iOYrfu1rnkYn/H0rhHKCfi4ZDRjnRbmt
	 720iyxUCdSv1iF1G1JLwcxX9SYCiOz+kFNQsN9bLsQF4ColYlClgfaXzj0XN3TCCZ5
	 AGl7IQd9xhDg7noA5w9vxD424Z0V6T7wiw8p9XrsB3KWDrRySBk3s7RFZdyDlqozT6
	 VGzNQnjwhmhUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA9A0C531FC
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178512603375.14980.4925567149318966765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4cf7d0632340570f19610c1b75b46fcd32d6351f756bc486947864a3a628232
Date: Mon, 27 Jul 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785126033
