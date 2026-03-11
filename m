Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED27372B4A
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773244494; cv=none; b=BgeWCYhsOmEtkv4A4zYJZDI2cv6HRWUQB3SbvhS0q3vZfhh1ss33h4Z13srl3sE7GbchISlxlqVfyY7e2+lGueMm2/lwn8XmKLNLJMKzRoHhzKjGXg234F8QvU0cz444mSOsS5ag2sOWHojqj9+cvLrjLafhKNIwJ374Gl0s1tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773244494; c=relaxed/simple;
	bh=gWETLdAjUN0CfzhJSbBs8QTFfY8oMbTA1hHj7xq5qKU=;
	h=To:Subject:From:Message-Id:Date; b=cs2ikdiuXTelnB3SSH11f46jrd1cIMbf+LnyMA9JA5RpBTSHogm+FasjyB5kt1tpWqash2c22voWsNUVdedcRbrJjJCxLtdoNBsd/xZIJg55LaYGBThXmbVl1p81VG9qA+sxqiQKs63pIozjAx3j6YI37QBUxKyj34D3ASAkGLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pgbh4idU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pgbh4idU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EBDC2BCB2
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773244493;
	bh=gWETLdAjUN0CfzhJSbBs8QTFfY8oMbTA1hHj7xq5qKU=;
	h=To:Subject:From:Date:From;
	b=pgbh4idUe6Q7PV++BqWUJhUEauKyz2HtKCpqomCokxnUeWOzsb66tZ+yHTtm8wMWi
	 Tcz05Xljnv7E0VemkfI+vowJbcUyHiIgxAyESz14hN/S+V1OdIawup8sOOBIXLPBV6
	 mowT3J0g+k807hr7viikkkJAX1JSv7KJJpSi70bgyvV4FOgYxg91r8Kx33W0nTDJl/
	 dXnrViVWcdshCYnTGjk3DUAvaiwSeiIB2F3yddqxgW0iXHeFk3WyaX4zhS1MEqwzVM
	 6xRyW4NCh6wIfS2YuAUqznnosCFJJ09YjDzx3KAlpx1v4VQ/zaZEoPIqGzTk95m1Mg
	 j6DeHWa7FUW/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B53112584F
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177324449359.25157.15920544643806654412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a8b5bfae782c46a22b20cc842670ef8a8527accb1de0c7e5cce23bda8e8ff1f
Date: Wed, 11 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773244493
