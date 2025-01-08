Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5701FCF68
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736347554; cv=none; b=s+Si60QvRMTmbjWYnclniQ/oZaT7SJa09fCWWZkwuaR7u+pnlp8daCheDaZ5yMklGtCoSATVder4hgVlI9ZN5oPIioOAYaxubmyy2WfSeObm3YYy550F1406Xh5jPx+B4Zi265fRiy1j6qHreFn/2kCFl3VV/xzW6ZE3DkFiUHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736347554; c=relaxed/simple;
	bh=Js4CC22P819sqi792EhVQqwupUMkkmanepqdQ1onhyM=;
	h=To:Subject:From:Message-Id:Date; b=Fnwh2U5wy6NMjsxdzLQ+XPCHID4gCtEPxXORCN4z1kGAGIfKAiVrhmTEWH4FLOSKcT4xQ1tUdR4o+ElyouLzPODoTwznPO/C6CPgf1Wh7Ngs82WFGSVlH954OpOZZxqA2l1VEIGf6AJykWIxKkfjsSzCAIupy5IveFF9gTfdHqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RPealcWd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RPealcWd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1DC4C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736347553;
	bh=Js4CC22P819sqi792EhVQqwupUMkkmanepqdQ1onhyM=;
	h=To:Subject:From:Date:From;
	b=RPealcWdH3a33mPtWggSwQfit/b6950yn3xQx5pC1Po29t+h7BKugl3HsmO37jNNo
	 FYonB5okQv9pOHLGH/eaKhWRBi7Ljfm3M3Gg2f/wrwvAT6lZb2OEh1Ztu0QzPdj5Mu
	 QLrtSe1q/Eh6llWtnaTsB6XczImnepAi71pEDfhxOYwpHDHenlWptPD8jIGky9+aeP
	 pMbslhB/0L6kYBGof892IQoPmNdrZkpkK79mi1fJ49YX6hSsDna5PcLKjjXHrj9gng
	 xV0SNRK/xKwkaQtkgbHhBq/OQMpZ8YrzkAmv0jYrvwa9EmC5jEV0N9oHj6GFUOX+0m
	 bUYnhZ24dDgsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7BEE77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173634755363.24714.6144023833125501795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82098dc3ce57bf84c6a2d2d565f294b2c28d82d99b2d07d6da7ce7a58a17c410
Date: Wed, 08 Jan 2025 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736347553
