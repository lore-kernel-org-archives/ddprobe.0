Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C1D3FB04E
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 13:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789823434; cv=none; b=J98sCQOyxep6icgcRYMYDGIyLbDMhQqIgRueMlXf0u3kGRnKZ1hVnV6pjejAPoaX0yZLzK8ueOdx3kyT+4pQcdHtHRGUbYUFprScMRryfCHDBT7Nu0EDEtEWL+iGz8Xwdwrailo8XJ82qJopEZgKSHv8uWaDQRY8JmxrdkXkPIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789823434; c=relaxed/simple;
	bh=mfrR6Yyasgtg8h+328IErMxfXQLMP+yqRVZDgweftb4=;
	h=To:Subject:From:Message-Id:Date; b=AClZV24fxEZ/SD/xGT3xrEacKXtivDYk2X0pofGQumseCiu43kMEVxKXZ6GIUEGnwti803ZR87OZQj3KcB9E0vJr8oDWgrp57+ZT2ucJi+o+B43PA7HW2PvaBqnwFihf1wYgZ5Q/hCpRiTGqNKTIqcJw0mJI15h0rr+/YMxt9co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VyvB/298; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VyvB/298"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC647C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 13:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789823433;
	bh=mfrR6Yyasgtg8h+328IErMxfXQLMP+yqRVZDgweftb4=;
	h=To:Subject:From:Date:From;
	b=VyvB/298bhDbpclgLeCBL03nVqOBxRth3J1Ab5UAIkLGiXQKz4VVTaXdq5ZgzAMqM
	 ZwY3idNzIz6W3L3/FjWhTMkzS0e5Yanjdob7Q1GKoesacClKZibrvRfP6TYew//YiC
	 d1DlKpZGitBjk7rnHAl87D6KHdc15ak2muhhsCL5ay9dj0icglMAMpc8AXVwHDcwxj
	 HTyfDbvXIUL7QTZdpd1v/jFRgTU7yRAp5utM4okvqQaVm9EKD4BP1kcVb6nicuMaYR
	 +YnExtSBGs34ACHDsiaBOV4GK4r6ymOmp2uSVB1Z8rqZbT7Hi1CqhuicUx96ahuSm6
	 8omqjz7UETx7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA270C982DA
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 13:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178982343368.27909.14844980080677269503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d5987e1d308cc8db976acf981d3248e64fef84c7dd2c68718755c843cc49aeb
Date: Sat, 19 Sep 2026 13:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789823433
