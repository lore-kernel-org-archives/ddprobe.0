Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0670925D202
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756546194; cv=none; b=kEoIymntWSK+9vRbxN3d7woWENOflljaRMJfUXkJTCcZofw1qtE5M46UWDvUeFIXi2Qw68ZB2YWfk4romQ9Q7/RjpJkezIxDjc/4+7pS2+0Epc+t7oEOp82uuOhGwLVSxnpjcNr275y6uKCmpYwe531JO/cKYmt8Z6i+ofh6k30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756546194; c=relaxed/simple;
	bh=D3QaHydDON3sxqVuNTXjyq5r9rW/B6E8fuxhChnCVTY=;
	h=To:Subject:From:Message-Id:Date; b=NN3atCLmpryNlZL+QzZT5TkcZk5gXVofx7ZW+W+8W22/6dozyC/OsvZ0+qSVdFJk/JZ81E4T0n6BvAn3QoynaQim8KL/rRecEhHrCYeugLIOHw2YurkjRH7IvAuRc4VwGXZuy+ZSGoVyHdqtjLUTgSryKoFkSgri/WSWken+y8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isHh6pq+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isHh6pq+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DEDC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756546193;
	bh=D3QaHydDON3sxqVuNTXjyq5r9rW/B6E8fuxhChnCVTY=;
	h=To:Subject:From:Date:From;
	b=isHh6pq+k7Uy+2XdbmHS4RmMI6mP0h5RuGZG+pew9cGk3DyWRfe37sacHKDrBW4aU
	 UIkSB3Ew0ASiqhYu4X70/o47sL7s2USfCpAHVzXSytjoc1h8Q3uGGvQCwRQjJUGYMd
	 qdY8bg8VDlHXnExBJpeSZBnA5+oEqZSoRYrDUNTBRjTyQhh2zguA4F+RcMrYnh/4BA
	 OtjmcGBtMwLTQHe9rwnbm96jHhP7aownfA1uknQOVlOl79O/umzhzM1TFm+EWOpJC0
	 N42cw45nZsnIBRnsVo/mNKtx1pHXV4IEcDVxyHhLa5ustf/hPq7iogicr18Rs0ogju
	 j5QQwqd3QX/GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954A2CA0FFD
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175654619357.515.12283850616545775519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e33b025f2617392a83606fec425cb226405a24735adc82fc8080dca6659f5360
Date: Sat, 30 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756546193
