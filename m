Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1C92F8EAE
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789222234; cv=none; b=XZspzRBXytKjUcYfA1FhvifZOT/txs31alz1dOnSIMPSyzbtvn7TMz3gUMKfgTff6hAV2vI+70tGL61PeS/EqLVW67Ov3LhcfsQOjJ5hNL1GvD4Z23abef7Wrj0cT+hIuX/LQtPT0t2ZZHAH/42fwp+njh/rCcvQF1OCKwLtGKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789222234; c=relaxed/simple;
	bh=4ycnu/OkN6PQ55uxo4GIoj3ALzc/AfE+hLw72ekP9C8=;
	h=To:Subject:From:Message-Id:Date; b=FR2yrG/pvXuev9tv7PSL41zAiGh6Qc3VGqHvS233bheN4BTOgB/VbU8kyaRODTRyoSCfDWnOrnn1SX0lufjE1JulMsL++Saosg1vHlIoCgjIPNuNkGTdZktlp0tCnWAi3p76ZqFU1tLUslJqYiwrHLqjFxH5gYehFfRC6fGZfb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=duJhwqjT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="duJhwqjT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBA14C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789222233;
	bh=4ycnu/OkN6PQ55uxo4GIoj3ALzc/AfE+hLw72ekP9C8=;
	h=To:Subject:From:Date:From;
	b=duJhwqjT6pWBKIlxaBulfea6018D+ffAVM+MEZoAPcY1IWqI7FxUf6ghav4lvtR6a
	 v+gwFvs/LbTHymSz6M3HtYAdxfV8AJLy1UpfxoKaDZZHJ2ApZWz/xfLUhF3XTnlaDG
	 H+mdpTpExJ4avJKTZ9mYqVzwnH5n8S+GcQMRob5KkE5XYtv7QXTUeKJgm/ZoH0fg42
	 GfyYBi3gEbkzPC6xdvrAnkRvuB7nXHEitQKcllykh3Oiqt6lNEwA5XNY93RAAIUxWi
	 QJvrDBth8FxRWSW/mwVwEXM+OH42Nz+Ly+JYUt6doqBRGxuSm7DKce380WoeubkYbq
	 wWyQ1NbwWMNEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92D0C88E59
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178922223368.14221.18383530497392382865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a590a4fc1dff8c69ae05a47dd2465e1d6f78da1ac86eb962a8f809d41f56b174
Date: Sat, 12 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789222233
