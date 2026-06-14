Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F22C293B75
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 08:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781424994; cv=none; b=Wgj8dIeTR/0brRLHLuy9Onlk+pWsgQbjTMeQIi52WXpUS8t9JXGxxUqCOjMAhP29R2OOL0cURMslKpk2kfmC07HKcMlKwJYML4PFVSAZ/vpQXWEJpCUuyUc58++hisparpBdxlgarHhoNbyBzpmBq1MHvvwF7HcecLCG0QYJomQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781424994; c=relaxed/simple;
	bh=eJjJ6QknauhGa3bUNwN2DlwMSMQCDjhCywSk0Wdy2Cw=;
	h=To:Subject:From:Message-Id:Date; b=CGUFMsdxqNKxjJbZAPkKgIUtWXLG4CGrmxOMdhF+tPkxTy6VD4Qv1A2w9fn12a4SHXh4EL+3hO4XrM5UX/yd9X7day6ez+qCThmtVuQJiIF8j9NGx7eQO3UOuQj2LkQZhIp7PNbU10a2nGkTKlGE8yx+doWzFAW6NWy6wGfjBDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVgg9cn6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVgg9cn6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB47FC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 08:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781424993;
	bh=eJjJ6QknauhGa3bUNwN2DlwMSMQCDjhCywSk0Wdy2Cw=;
	h=To:Subject:From:Date:From;
	b=TVgg9cn6OCTVYVattA1TZgdNqTYZrd3lvr/INnELPpJI8gTXZGOQ9cL1ChCTSJ61g
	 /jHvl55UeOidr+0zczGxvL4u6849af7iW0WpbTn56rdG0RkvwBHONVmoLGJ06cjayo
	 nkHba2z3TmSl9tkgkrxUov67oU/RpS+DtAXNwjaIrB0/mr+1osH0r3DbXwHReZ20ok
	 Zw/jKLsz4G+gK9H6Q+lCDs7doCx158xc9HdTqVDh31m2dYSfZ475d2bntm3QGIxXec
	 G21WuLIAYcJldt+9lVZQAsPNArrcsxq0073HQedUm+dkEs5Kq5zGcyeeRzm7BIkvxT
	 huI8QfgFSnzNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B190CCD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 08:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178142499369.11472.7679252865588982631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00786099b22fd56cc0060ae162e4a596ea9f233a017b681f7fc0ac79292ba96c
Date: Sun, 14 Jun 2026 08:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781424993
