Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18693320385
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768733034; cv=none; b=S+FJE1oBz4jScrZHeC4+GeBQDq0SP8BqnbxdTZq/nqngh4iE5zIJSio6clQDTVdMFY7qvFXoPE46PqEsRwNvQmbCYAfD+3fz9VsjIQSELzPhriVQijS9Tq80mzl/K6RV/PjYMpA59niTrnIUTyB2nu3rkpnq6K7uWRN7eKQUPRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768733034; c=relaxed/simple;
	bh=TN+MgoKlEnMkJssWkOmUkrzwjuIE57c6543EOiD4gn4=;
	h=To:Subject:From:Message-Id:Date; b=W9Vlu/gO73VrQcYeVn1TxYNMcv/slWO4uhIO3WWVXjrK8MZ8E3jp2Z7kPKTlVRcI2yn8fwGXjfLOSkuqlLvikKn9uXuNfieBnHyp4FP1ILtqbLGLyturj7uUP59JwMQTOQey3uNt+hI67NM3buKcDltdlXCJWD9fQ8W8G3PMQCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vGtD530K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vGtD530K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5014C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768733033;
	bh=TN+MgoKlEnMkJssWkOmUkrzwjuIE57c6543EOiD4gn4=;
	h=To:Subject:From:Date:From;
	b=vGtD530KpChONUQDvGIZHd4FU7HCIXTUAgELBVRZZuEkdkumKAuGyW/cJTGZ5QnTQ
	 rAsWeLVOJpI1Lq4u9GPyeTTqJQAC0AUBJlzlnYkCOqKNcUUIcTbhXbbBY7kPzfm7pa
	 lPBuU7VqzisNIqXJR5hcEWQX3uAZOz+7PFyHzc2UXB1tPvXCz2P1OVUVV0cvOpYCCv
	 eu6j6mysOXibJA0N8E6WcOxWIYBifhevZgxrWCVACPqTJyB3+Yx7s6Q2n+n/MC06RX
	 NiAKtoViXEZF/HZSU26PKOEH6zQ8JU7q/Lz742aMojOAxpk4Pjd35M7D99tLdonhux
	 UeSHfg7ABm9Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B92D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176873303357.11427.7594925161258674941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc8d4c3af799e5eef186b29e5303b00f229c77e2f2097a6976f411cdbb629c4e
Date: Sun, 18 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768733033
