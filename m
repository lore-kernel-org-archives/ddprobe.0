Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A831911CAB
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708132096; cv=none; b=rpHgLwvF9Rus7X4nbf3+nAbm7UZQE6xp1BkSn6u0J533uxbuCGIappExyEotAGza6mRzMzb+iES85B7Tn0/8b4a1rGHY5OLlQ/SL/dL7YRKfgPUpeiieT30PTFZkg4Z9NLHynYiDfoziF+SIjgnUyS+NMRHSY/y24u4JgeEbSFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708132096; c=relaxed/simple;
	bh=5Ae/BrVROdls76FimFM/z0lWwS7eKue0dcZw/tblBWQ=;
	h=To:Subject:From:Message-Id:Date; b=iQ2wshPRuHlQ37cYVX+gPD7PDn6nWU5rySvmpxpP397lBbn6MJ0mcGS22uI4vlEan9b8ObvsqFNhxxQLPspMIYv9vY8EKqfQxNBZVuI9fSQBzOOj7KdaK6AwyOtVVZ530XtpxOdO6lProXm8a63qEpDnH/6qAxNyYJkjicoq5nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMnmG3tr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMnmG3tr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DBB3C433C7
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708132096;
	bh=5Ae/BrVROdls76FimFM/z0lWwS7eKue0dcZw/tblBWQ=;
	h=To:Subject:From:Date:From;
	b=nMnmG3trlKCAA90xvjjTnmG6BW/0dypwcnT6dCtuH1s7+znrHp2libg7jjRvyrAWM
	 nY7BN/t8cvgQIYhYxDmTO0HbO6skk1PR62K/ihoMoaEYeafk1vbKosak50zqd75vys
	 gvRWbR7t2i5vYYz7W4RPrbHH1vRHuXaAb9gvIzM9KiPtJAfxpxi2Ag9aFZnl/OagU+
	 ckqq7S342vgT81rTUkAWwp1/Hh5Nh91uqLaeSZIFYGBLNr0Ls4Z2G05XHGBhlr+Iuj
	 OGdXjwPP7gKWlI+QbRfSZ8UEHUcGVlA2AJBIS13dkTIN+XHG79XyuDIOzvqTmHOTs9
	 Ppo0mqMKo3Ouw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62764C48260
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170813209638.18490.6002620608498019353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e15b11fb0d1ca30720156b318e12873515a7f6d3901fe7bb26182df65513ee12
Date: Sat, 17 Feb 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708132096
