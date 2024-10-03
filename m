Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B7319F422
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727969154; cv=none; b=k2BvgJKfDepssGRTFtAbLfQI+Ble0AC1S3sxb0O9iYZhpZH2VQQM7CJaGev8jiFc3iugSKkoZgH//YIytoYuRaCXcaOqEEmDWrXiEXZsiSMNxEUep418+YY0yLo10K6fLiB2t+oaLc3PV4eWeS1CHa5UW5XWqrepdK16k1/XXgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727969154; c=relaxed/simple;
	bh=0B79+rlD64xobHdLYVSzPLi4qPSYer06RflgbMrdtx0=;
	h=To:Subject:From:Message-Id:Date; b=Nz5W8frMxQOa3yZziTUngZP4CTJTBiQOAfawQ4q+uPjK44NjrRZogRzimwtPO/XKytMt82h5kNXTdJ8TTV5uMz8l/Bx3d3mdVR1X/YL1KIkjUA3f8stXDSRedI2jfZWGGevnEGLOuCJkwcOHrgs6S2QIJf2DvtD6qowioqPieA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBlBdP1d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBlBdP1d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3F07C4CECE
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727969153;
	bh=0B79+rlD64xobHdLYVSzPLi4qPSYer06RflgbMrdtx0=;
	h=To:Subject:From:Date:From;
	b=nBlBdP1dTSQQHqgwW0GtyxFW7lkRPf0Yum+Hh0EtM1A8qyPkqW+KoQqbj2qeww/uh
	 2VOBrWGFvqGmOP9sIn6WkXb1wO88e8FpuGZTMzq1N0suarr4P5tFmcQ/R20qr5QwMf
	 H+1nwX4uvYmEdQvhiMwA2z+QYhvAWAE4nzj/cqhTUs/jTuo49rpjBjOpBlH9gV05BA
	 5M9yK7yBavVqOX2qx9JNVg8bOf2uaae3d/9jStdD3gYsogBVuGbV+Fhq9/ylmdfVrf
	 w4S2dQXaaRCeR/Yu38rS4CnD0vXkAq09s2rf3NMlQjO8fcjBaZR7cZGnow7vcD9bTD
	 aeQdIHYrv6ZWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DCABCF34B6
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172796915363.14744.3817153714300574363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3522453bfd22d6e5b75b4e4dfbd1fe78dd472ca8ee4bc585ce622a1752a8b977
Date: Thu, 03 Oct 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727969153
