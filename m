Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6F5311959
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 06:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782628714; cv=none; b=YOz2OmwkKb5wo1gUYV4lWPw1CilSEwPQBy6nNskBSjE5LlJaFUHgbD8dXdcpI9cC341v/pkaptKFfrgwUSm/6s+eIK8wZfkyTcEcPRKcQ+5gO4e9acIIWgeFc1xKkgwBcyZi8jxx41Wnu5EMOMKVccf9gbhPAQ+dx8WnEH58AK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782628714; c=relaxed/simple;
	bh=WIgKG3Fl6yxr0EJNcwMp+x5b/7KlaDf+iTF+oNxX/8I=;
	h=To:Subject:From:Message-Id:Date; b=h+/F4tonH5WLTVt45Boj/4gyeU/nJ99ejdbOlOTZMxpZYuchwPpKaw7BRAGdxTXvxY1ilf5ohM2NBi7B8yHxAM+7tOrpZK4OzaVWx2q9I5kOwG+Fe7xpwXiHgBfFKCcARtDGEEXEjQWJDoj/XRW/eXMjswOaIfx0IXJA8cvei4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sP7opiDx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sP7opiDx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9D35C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782628713;
	bh=WIgKG3Fl6yxr0EJNcwMp+x5b/7KlaDf+iTF+oNxX/8I=;
	h=To:Subject:From:Date:From;
	b=sP7opiDxfVweIZ0C6VWIQbtIwjAJ19J+9OS5VradoTcSAbDb9/7MzIDAKQZ2HMTM9
	 2n2PoJHeD/rT6tL9n026LO/zs2fehvCQy9MuaAAlp3AED6AcaeRdSShUgpL/fM8kF5
	 wwstOtXb7KwbMg0L/SwmIXZVJ5rlsltxXc6wzf9AXmbnoEQBzx7DUFtJ+It/KFsI66
	 XV+wB50ZkAKhlIgZCw4WwXghv9HjA240Js+OxDKn/JzUNrzJVx75oYC/tvY614GwFL
	 Vxjf9jumV7+UVXagPVekE5Q+njewmNQvQxnuy+tsFGLnzRF/a9JnSmEsor+thTNKQ5
	 2SwuFDI5BO9cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2923C43602
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 06:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178262871369.24273.11617755278877411880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52a121d4bbab17b1b1409652143e537b1de46d49fb1bba981214c361a3cf990d
Date: Sun, 28 Jun 2026 06:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782628713
