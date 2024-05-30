Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 655E518399B
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 23:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717110863; cv=none; b=M8UhV10mgGr3cUu6Hyd+ktrqcS9SPsL/fTBteWcezskW0oxd6KHPuliaDPpaqD61iJoIO54nLOHMe6yXeMOe2CZRFmN62ywFhAUvafa+PR5jYcFM8Gaaw8+9AWmVQpvUWK5w2gKwS6txbILk84Le44pgq2gRGwVZfaIlF/0pw4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717110863; c=relaxed/simple;
	bh=kooMyLC3HzrBkdVy28GAaNGnp0j+Ka4w6YyvwiFkUlQ=;
	h=To:Subject:From:Message-Id:Date; b=ddr/VyzJSwrrGPk01eG57/gkWXKOPzHi0DT4aCHKi3VAdsxZuBtZ9qLoviEUknWOAV+9h+BuSHLDdQpCcC72LLhdlTaKogPfTVm/GLjs7to1xNwIlHtG/YKWxkxEtyXy7mbYTV3HOCTm/SL/kWBEroevv8qUs+KyATfJH2DOTb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QU1QMuY4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QU1QMuY4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E07ECC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 23:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717110862;
	bh=kooMyLC3HzrBkdVy28GAaNGnp0j+Ka4w6YyvwiFkUlQ=;
	h=To:Subject:From:Date:From;
	b=QU1QMuY4GItwvIYNshAHbwa3VfekPrjaLqnOGrPFLtlKEKypE6vyCpKXXJ0hpLj2B
	 Q1b8hT1ZTp0TJzw8+aNiJe/wlfvLfD7bIDfHt2/6FdnB9OaWn3N0aGABTo0TenCO4D
	 Emn/i/q7H0EzqxcEV0oEl7sjErUXQZG6xgQqUhMCOuDc0EyDu/bqLuKj7NhG23O2wh
	 f8scp6cwBf+5jjC45ZYHDncsIzqXVfDT94JHNeGu2QVQ/CQHZ/XhE9/244+vT4sZXF
	 JVtuNegrbPlV6MZVdg72K331Qjg09MH0v9YoiBMl8CqNC0X15FpS17LKeRgKXcXpfw
	 rycWP7rs5Iv9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B9AC25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 23:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171711086278.16018.18355784467088894944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c523a0b05ea484d3e0a02abfe96de65cc3f89312a51fdcb8f43589b61c5a0f3
Date: Thu, 30 May 2024 23:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717110862
