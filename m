Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C499375ADF
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 20:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775249134; cv=none; b=uWwpRqK+y7sBxza7Dz6/XgK+mVG+AfT6YSHiYQ7K0XdlGRL/aeUSZ8Yq/to5rbqF6E/MTuh3bwfHWk8P0iWqRacJMZ89dm5Lvsdne1LXbYlEcHBhOknCQF6QulG0Ury6CImanwob+rw+xQfVqw5rucv/wtzFIkxjNPdF8wAPoCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775249134; c=relaxed/simple;
	bh=zQ0h3CUgCltgGMzcej0nHo6PRiKe9yb1YYxFAUg+rog=;
	h=To:Subject:From:Message-Id:Date; b=Rqqixq+TbvVo7T0WIjJywNfO3HwXBNX9Wfn2g/sqizjdrF8+UDTbWS71P6FpxCQxTSD+0/QsR8Vo6+5JpbPfowI2NwZKTFei5npa2QTuQ3NWm04XpPAgndU6fusVr2WzFvulyu2BymS5hS5PwFNUdRPsjrFL6i09ZicsbGUOSuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBHc6mI/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBHc6mI/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C58BEC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 20:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775249133;
	bh=zQ0h3CUgCltgGMzcej0nHo6PRiKe9yb1YYxFAUg+rog=;
	h=To:Subject:From:Date:From;
	b=dBHc6mI/FaO9tZO1e+dwxxsAy2+exBEgYpxThNpZ7NpWWgfaJAN019aYxkToX47yz
	 hE/tiwfwLjROuefFMffGcN72jFWJYH1Pv4wGr2sSD2t2y6x1EmyVVPigFVyoPSapD/
	 wZv+wKiITsuQq+lQVDo44F6HQk71Deytf2zaCq/y3Nh1PC2v/3uQbYJALAzKx+iQUD
	 kmHd/ll9fAUoe/4vBwKhdrk/2wzLRaAa/R5pEgx2fxuzFabtJjez6cOu5Nmhd8cL10
	 ZbE5VvEtGw9LicXGEu8gGqr4N7lXNf698kYIhwjcUQeZwz8MWBo6mHgBf0D6L/zHCl
	 h3z34bkLOxF9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E4EEEB577
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 20:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177524913371.11471.140522652134098758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 544131bab970ba480e48c30e8f7767424112f356e6ffcf66fc07622e881b67fe
Date: Fri, 03 Apr 2026 20:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775249133
