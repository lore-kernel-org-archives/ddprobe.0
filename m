Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F18E45025
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 07:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719214943; cv=none; b=MLO7gitMRhrlMUw+O3thxgqXzczXkOg2nO1cy2KNkkVxBl2c0woG3wK0MHb6xSJK3WnUq45EUFVgqse/mb/vB16FGGoOvY8L3Ai1bG0ynJDolpvLfM5ZPkU0VhvwsotduISKf6xec/4/rgIcAmIthWnOeljwdZrlQVKeiFjgS0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719214943; c=relaxed/simple;
	bh=QeoFUU8+S9LmvtW7LOvtuC1UJhMTpQ9eHu4OwDsuzW4=;
	h=To:Subject:From:Message-Id:Date; b=PEJF17ajM6xhtcsanbiAnxBU5UiPTFXiY7Zr5aQA5OuQOVJSw5bpHBqOAB7vk9KXgO6xg3L+nOrGboRRDc64rmfFcxoP1AzD+qBLF+ihYsjn9dxRBIk56APd4rJ+8TT8x+Hj+qGvuqPW7g9r3dplRUmiD7dWJqx57t6R55DUomA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H4sddH5J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H4sddH5J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF100C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 07:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719214942;
	bh=QeoFUU8+S9LmvtW7LOvtuC1UJhMTpQ9eHu4OwDsuzW4=;
	h=To:Subject:From:Date:From;
	b=H4sddH5JYwL3HPyAG+j/4l+Kl7Sf6HgiEXYjI3JhttI8wfVDc2cQXBjusHwrit5jM
	 3szrmqOiCh+mmKcCKsrruGd04+Rsf8Els8lltC1gpN29cKc0saJNlyJhkcZ1vlt9+p
	 hTIu9sXGdgUhkziSQmNPK/GTtgUZqeY1pY1FnwI3ehZjPuBuaPdCV170wJTDS9rtwH
	 dzbfzHGJXLaWHWD64O3UAmgNV31HCM26Q1G6Ki6cK8XgQqRGBPraThXwwv0s+5W+7C
	 brjinQmlifeS51DyA0MKULL+1Ccxf2Mh8ep4wnJjAqa9JOFcja7SlwaHJNdVLnwdSU
	 QTJh0+FNRmCKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4150C2BD09
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 07:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171921494279.799.6784981937093567312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73784062ae59b6f0a391122b2240d46119b0dfcb6b0723e3d5a62aefef661371
Date: Mon, 24 Jun 2024 07:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719214942
