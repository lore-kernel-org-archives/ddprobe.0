Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FECE2BE7BB
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770818694; cv=none; b=qhwrgnTM8CIiKi7HQ2Xi45I0+X86CjtalfOdiDDyFJrcRLonw27jc++YB+IHdyuhXutHgAntW9xxyRD1wCo04Im6z2RZKcoiZnqVffhGHbnITaE+a21NYefaNkfYPD6uJdjnbiYMGtNtP0nsHVcrWqL5Km1wpUgH0db6zxcBE4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770818694; c=relaxed/simple;
	bh=352ilLPJCvo2HkQ/JaQKn38D63G7Cz2CICyf36YuiDw=;
	h=To:Subject:From:Message-Id:Date; b=HkB0KNUvP5A2d5/RjRVEa4gEFHnjwhzUF0fZwtxpmhaviC5w7A6G3tFFKWVMFlsW9dy11IphU3akhZkzCK+Tclxy3L0d3Pkfpovvsxtk7yBs8WPOup3W1U3bqbEl09bRoAlpPRPJlIWcj94rH2Z/ya3SaaK5thYs6O5ObvqokRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZWYrzxn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZWYrzxn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B37C5C19421
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770818693;
	bh=352ilLPJCvo2HkQ/JaQKn38D63G7Cz2CICyf36YuiDw=;
	h=To:Subject:From:Date:From;
	b=WZWYrzxnDqnJ5eD4lLvJK4oMKWcqIUSesdlv2J/zp56nwsej5jQ/xTmo/JsQe8jIw
	 +Yn4sdCfvRcX1FwTE+WL5wdFapztP8IaQmxLznGUw7jAdSeJjzTGbZ6D0ffME3u8aX
	 7PBXyUoBNQIngUe6+YiYX2uetX8IDI2SlFByW+Mzrxjt4P6XRCRVWgKwI1Y7v644jp
	 9AU1fzLFudT7PNu55uZdBWNuPiXRuw8p4b5QScIwsTYuTVxlZdvE1/3gR3zA6VXptj
	 oaMERCi0LyNxeyf1RotG7NHHq9H+rsVcG91GwG0tz1K97EI+XUCCriiJezJAUd769W
	 8r/SI3U3Fjw5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 988A2E9E308
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177081869361.31928.13824247872470193502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efbe6c32d24c765bd57d65f271304edd86de9f215641dd604d6bfdcc632fcbec
Date: Wed, 11 Feb 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770818693
