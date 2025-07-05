Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7875FEE6
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751710794; cv=none; b=jcqU6p+wg6kR/bnvurPK61Y2SU+IqWVM/WUiGfHTACyonbW1fFo/S4X6od+BIMxEuHSaoq7hjPpbK9VneTpifP8qS2fQuhbSBo+Aunob19T+StLHeDq98Qmo5M9V0unLg56ir5ktsRd2n2xVtqv9jF6hz9EhP5v6vUybppTz/5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751710794; c=relaxed/simple;
	bh=fu5XJ4Q84qvigrwHfa2839HgCT6WQtYoCSP69sa9MWY=;
	h=To:Subject:From:Message-Id:Date; b=oAp7JS0Oth2CRr75ZHA/m/2uyCpStKvM7L9d/htoF2ZU+UyEMn6hAdLJm8IHCFbGk6PY+iYAFLE8d8mTVJyxY57WOsdP/J+hrBHk1N4tBEhdub3lyLkOkYCZAjpyaSBgUyh5ZOq1ZUgy6P9clSTmeMg5mpBvbiJW/H+XGU0kEH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9PNbHCw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9PNbHCw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0876C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751710793;
	bh=fu5XJ4Q84qvigrwHfa2839HgCT6WQtYoCSP69sa9MWY=;
	h=To:Subject:From:Date:From;
	b=l9PNbHCwBF4Bx5/b1eoc9a+3I7y52MSX1fzErurydPZQ2hf19ZB0fxLKYk/Vi46MR
	 n8FbDL964b19zEw5bI+OLwodWebQ0wc/TiVwYI1E41mjQEPDbi1MtJzRyc0rBBb7Zt
	 Z1dP5eFrwpOFwiRQ3TnYUznsp6zUpcHvpKQTVf3SkfJkFEG3/0alKjwNNRJB9Dxqs+
	 z3xMyYLomhZktB66UwB06Y6C68mLypxvhov+SE7Tx4410CRKqBTftTwys0yL/xewlT
	 opJoEpGeS6EUUL9lFNOYn5PaP0xMhqQ3rEaYByeKwe1PAJQ+4YKIOThs5gkK7Zka67
	 o76YT7ZS8bj7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918E7C8303C
	for <ddprobe@lists.linux.dev>; Sat,  5 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175171079357.7155.16083458809189282114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ec3714c5fae28f37e941b1229cc1419dbb192dbe2da378295c8cfe3926f914e
Date: Sat, 05 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751710793
