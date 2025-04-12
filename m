Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502F618DB1E
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744457994; cv=none; b=gRCqeyKNXS6uXSNjNAig1QskfxBHLmmwLz1S9vHsgrZixobUENJ54WAiDwXEc1U7wWiUU2e5mf+jklkDlmJy/zQX8rD+ePFIQaegnYJlEzzf9ckJOg3+qBVgrCh9zzFJI2mF+YQfImeuwNyRyeCbXHfM+n02pagxJ9ZK0X9OCsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744457994; c=relaxed/simple;
	bh=km8MsAJ+PiEFNJD2O24LaxUvBhJWwuPYCD/r2SUSAyg=;
	h=To:Subject:From:Message-Id:Date; b=NSrIcUZMJVmOlqj0yiNxgRHkszIdtOwfvVAFvwWO8MF2cWmk1D5tuNSaKr6npvGTjVwYNnCTbyEG4O+2R8xD3KN8kGFhQLj76JUl00vsY/nQS13Sq0T1/B7zMhy8zgEHxAPxL27JznBgwTHToZl9dxA7J4668KYEvjuIPa+VOAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sJrs1U1Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sJrs1U1Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B808BC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744457993;
	bh=km8MsAJ+PiEFNJD2O24LaxUvBhJWwuPYCD/r2SUSAyg=;
	h=To:Subject:From:Date:From;
	b=sJrs1U1QWClTpFLfk7Wa6hITLF6NU1y8Lj0I9Q/OqKvrHl89JvtSmZoY9Hj+VztPk
	 MWmKfDpXQfTTiMbjVeQ6/oQvH/LLZhgr4Nb6Kdvg1WeWiE7Q5czdJmQI3tNdgjGIFj
	 idEJjaSlFpsCbRt4V/7yBviFj3vIDj1b3j8snIG+TtYtQmziEn756K/Kj2l448mBUn
	 SSHgwZFnQuUA+0gVAorI974ddJhhQ5iQmKk0oKC5tMeemcWzF8xIzoLC2ddrwHEJpx
	 72LY1vLbxV9aoeORTUq09Hh7pIKY5BkfaIBOC8ohU++OCGlrXjj+jsQVQuva0cAJUs
	 NEUahbpvxZOdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A82B2C369A1
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174445799363.6226.8476414064162181506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 566fde2ff63288c3db73ee21a213a5a42a93ed66686c11895ba562bc152baccf
Date: Sat, 12 Apr 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744457993
