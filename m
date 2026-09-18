Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 971523D300E
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789749034; cv=none; b=IOGON6NN2HxoPGYuGsRmtfvfCSFmnhmxi0YJh+kfOMQ3jBgOfc8t++d2tSh5P/J6I6KT/fhHtJ3pS1ti+7P65LZCspRWXXdhyU10BlsJTnOqs7O9PorEpcKJrtqHpwyTirwPJTLs1BVRZmhZeCNv9DFuWlx0+A6iZ12LwMZV/ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789749034; c=relaxed/simple;
	bh=00SWnhaPPdImgvg9KTi0k4NJonKeOnj6c+yEhAE3SHc=;
	h=To:Subject:From:Message-Id:Date; b=E+B7ug/oPzRqV/gxP19VMquHpcEjXOtJwhyHGk8YgzeoUgZ0sQhG+96NprrjOz9N9BgvH5pA7TGcvhb5sPc/dPMqgcGUDebZmLM936nwmGTTk68NjpcnYHoRcSqW1NtJUhfIF+9EaFLy/zgIuh+6rzykMraZd9RpiHV5Umcp4Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=anul3iF8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="anul3iF8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0F87AC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 16:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789749034;
	bh=00SWnhaPPdImgvg9KTi0k4NJonKeOnj6c+yEhAE3SHc=;
	h=To:Subject:From:Date:From;
	b=anul3iF8JFECtY36CwkM3SMHt0tbJ6aOplMYUmFJmhoANL01j6LFYovfdwl/z3amx
	 zzRveqF5aHpwFWadm4FGmAQwWe9aYlKaP/1gc1Jq3BblYc9/2Gthk74lteM/5RMi6W
	 GM+Xdm9OL7xKBxS4bgN2tHkAJiTI682uF0hw67LUll+/eUITYuq42vBX5qq/DgKqxX
	 jVqzo8U5qhzDW59xmpFximl0eO+sOpBmwqHNnSDAaKLzrhI/kqjcxwIMhY7NQ9L/IC
	 0XHv8LFf00R0M88LaCwSqVFXWM2iNfhBVp0dQEEgqH3COoP35G2S/gTZWG8XVn4e7B
	 9R3Upf9suM+3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2817C982D8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178974903372.26860.14211498918625502153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 220f8aaca807fc1bc4bafde44d56a4acee70ac62bc74ba673a35c3fe6f57e685
Date: Fri, 18 Sep 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789749033
