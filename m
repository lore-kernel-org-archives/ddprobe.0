Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D351876
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738560354; cv=none; b=npyDEw4TdZLuey0tATiqFXy/ZHqiogcwsmDEPrJFwo/ShdyloqJbVJs93zcPFg0nE+frYbH8KrmEpKvMnE33+egcn6t55hp/9al+fPcq/eGpK/hnNfFnSH3v8rttMC0shN498FLUVRhpvU3xOutIJOdLPkEhSpWEBNb2xsSk1tE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738560354; c=relaxed/simple;
	bh=Nwst1odzJLncQvAJicRHfpvIoRhgKEtesIDTHXMn8M0=;
	h=To:Subject:From:Message-Id:Date; b=Du/e5HO0kbmyI5aC/E7OGBuCMENYcEd8cQWDnmr27TyWy9m7vMpNFI4dxhO4U5L9utc28f5B5Q5TjCs/aeB9T9YmOmbvGtfMgjQolJEx6KIDpHhTgZiXwXwbmwCmRS6iBpEoQaLJZAaWTOO0jqRoaUZaZl5Ek5Uej4kzyLXtIf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ICaTdLL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ICaTdLL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE10C4CEE2
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738560353;
	bh=Nwst1odzJLncQvAJicRHfpvIoRhgKEtesIDTHXMn8M0=;
	h=To:Subject:From:Date:From;
	b=ICaTdLL2GGQGled37BoV/jXul0AKncaxPQ13rVw2wioAIwUOxf81GpA2nClmMOxZD
	 8I018Zy5YEbimk/4BaATGhKFAMh6qpL09HE8cDrft2V9oo2FYYT5R6H/Oa5bps2jWC
	 Q0nh2ZTDP7qMPzFptR6t7xvIzQkut/I3CVdODOJILVbbBoxoijc3Rfwtpmmw2WTyFb
	 lsKbxUZvTb+Tu35OPcShMLRq0cKdkuXvMsFBVGC0RE4RfCScEnqMEBwnWXxcBWZc93
	 w/LfnZD4zQeIf/VrL9C+M9KuWb4XaRrkydDfau7LB6IPfNWTySLPPE6mDVkYUBMDY3
	 q1rs6B07AQOFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C37C02190
	for <ddprobe@lists.linux.dev>; Mon,  3 Feb 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173856035360.15462.1553795521267405862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee0b26600f2d253e3550a02fbc76641748df2d8c07a4d8991fd997d44a24d308
Date: Mon, 03 Feb 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738560353
