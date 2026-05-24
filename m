Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8C6301460
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 22:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779661354; cv=none; b=E1p99NcmhdGeJ1mJiFLWSHTQYlYTvbthpyGul2Y8eO78Z8wz7xjR/5zeTuGnCJDdnvd/K4Bm3ImriGrvOPxf1s/uDN/7xd3+NFJsKcygFvcjQyLjyBba6jispzaPyVeeBHgOmDnr36+aHMhj5l/JqQPV7WIzY6wDmNvILFub+4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779661354; c=relaxed/simple;
	bh=aXg6WWO1NzvzWN00XFHNITVInlAwaBf+rrFzeOhFZ70=;
	h=To:Subject:From:Message-Id:Date; b=WM8K7lj5Z89Ozb4Nyh/haBEDlcA0CxQZi8dOF09fHMyaWcDQ1h9Z2fjQllQONhJR62hQlY0BKQ6/nF7y98hyRYJZZKNFFMwpV2jfZDgN0rJBMT0pY1GYLluF+Tnau2ObIhVnOIizZuhn/WzkPCcw1Vxx2p1GSQ8Obc74tv4mGUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+leXpOn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+leXpOn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC6C6C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 22:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779661353;
	bh=aXg6WWO1NzvzWN00XFHNITVInlAwaBf+rrFzeOhFZ70=;
	h=To:Subject:From:Date:From;
	b=m+leXpOnXEge4S1z51eh1pWyH0M9e9jKE6q7+s3DfPfWkaHrRfyiIat9MGlH8GWlu
	 Tzy0JE4TKNwSFNQ/lg+BMmAjzDA7/TolABRaSni3seydiIYYvh9ciq010lyGR2ENlw
	 GAPmrn9QDcnmLdqFWmaDTy6m+ZVSsby71SMfcv9IhczoDJuoP6uKpBUPT29gfvVDyj
	 8eIyICSpveqDdSOvaSdM1IrEZO7yfkDin+sPuj5FRHFFHg0PzKIwtPDV0dYRgyYFXc
	 zjP7SUZ3xsPlpoVj4vb+irVrfHbyKjEv/6b9R/Th9W7bIPlQgUMlKtsb/kRkBc5hUy
	 A5H+B0IZ7hzOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC518CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 22:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177966135368.2753.6686311929840871975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a81cef65e9f4d297e280e27d22baf5bbe7725123f0f8d246fbbaa261446e8756
Date: Sun, 24 May 2026 22:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779661353
