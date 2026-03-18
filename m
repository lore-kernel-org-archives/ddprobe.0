Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7C9D175A69
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773864894; cv=none; b=bg3TcdceaFsYkkVsn7Zn0bYUpRTVlM+gOUD/p3BaFmouIpF9FZg6jvGfYcSpMc+TeXKoBfbjYezEyhNY2HGTOxb7Fl2IGYa17TmIRNSCmtrz4CBAmtU/PR8zRxLLF8ONYKG4IhjdViM+0L8RUj+sYVMwcDXzjNs5cDJPIjINA0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773864894; c=relaxed/simple;
	bh=kfiNeKeGsdZpMKNjJrHJyYbkowbLttrypbRUoYnRPeo=;
	h=To:Subject:From:Message-Id:Date; b=OkTscmNVY7sW+IuuPmgHWBnbDCt8XYlqj6rbZIf1hKb+dHY5pjW4LZ5VtLfvjg0se8TTKE2YHGx+NIoSXfqB3DsgX1XR9WesT2+8eCmzZJAHAKaT1qM9guMDFPS+17jiTnKXMR+WoZCl8EJ7FkuWgLj/2rbDltcRtAH6gLWzSpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuRhDYfg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuRhDYfg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0050C19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773864893;
	bh=kfiNeKeGsdZpMKNjJrHJyYbkowbLttrypbRUoYnRPeo=;
	h=To:Subject:From:Date:From;
	b=JuRhDYfgtoV5dA5LPaTmssHI7G7WdJUaxkcL2TF9azy/5gWsHI+MkhvCuA1Bwmbkm
	 ICoQ9lu8dciZiqriGb6TYD20Hyv+S6eKBoGGXNrDj1KJcZ/K3QG1heeLQH2/37MXjr
	 tHdAPUZ4RnZ7OEwOsnVrE7QzoatxE10u9X8PbWGn/vGQl/dskqAaKjogsQCCsYSxij
	 ZT4MaagVLyV4qRYdB0DMxUSNUHmqCHhhXaV4pcbUARu9GcBMkPg2VkoJSuWPeBU9te
	 ExzblglRmabJZRSbPqvxYjjfaL77+NGX4zdgDP9i29NjJuGCWmXceShlctMridkQwu
	 exdMUwGtAr8ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DDB41077610
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177386489363.21620.14889148055913037477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb982d36e13d7cd1f49a4195782c522530f5a8dff35c9b42301ee10ca79723a5
Date: Wed, 18 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773864893
