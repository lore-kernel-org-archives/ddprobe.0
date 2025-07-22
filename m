Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4915C285061
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753213194; cv=none; b=UUwAJd9nuHMiwJwCQHUUptyrcf2O/ZZ0fqbX7D+rKqzs16SPkIRa+q/6w2QTP40dFb+dYIl+6pOmYz0w1UVJmp+nzwgkZwYHkwybWh19Qko7z+fYzhfGYEb4NmPO6c1fh6PUxBg+G7cYVedQk6LnL6JW5oVYEYHRF39lGGFwXds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753213194; c=relaxed/simple;
	bh=Iwx6IfxtNOd0EwemBleJzSLJqz1ZVwncHxXi/SgPLFo=;
	h=To:Subject:From:Message-Id:Date; b=kwGTDS0LaSJng7qxnXdQtSYi5tAveQx5JZ0InUZ3CqAAVQx+ZO5ZcwqkYM1oGPP31iz5rl5cRbBnRKhNKKQ++sPwZ7AIuukuVxicLzKwqIIWn4Rjg/SSv7t7vhp2eLd4e4NfOij45KDAl005OedmiiqPfLITmIbECZpOekae4b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLgLtqOp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLgLtqOp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1513C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753213193;
	bh=Iwx6IfxtNOd0EwemBleJzSLJqz1ZVwncHxXi/SgPLFo=;
	h=To:Subject:From:Date:From;
	b=YLgLtqOpHqAx8Rpi6sR8sOZW4Rp89hDKlunCzqz/gN5Y7exudGP9KtaTQPsNVsTyv
	 fabEmRYQfCkZIck/5gZaCkT6Gdqy0XHIFA5PptRlzXib4zmeAOW3V4I6SoNqChgNW+
	 nPGS4fFkKCscabWTUndlKenJtIHGwB77OmxGSLm9cEvEG0AufWVSQM1rR+91x4e6lE
	 5S06qAn74O630JBlhXFCdlVnqjM+17mf5QYYMPK2kA5gvBRmkwzCXJQ7NCOSD+X6ym
	 tS6UKRWT6tyug2GkNIwsbtaaMdF0FG5e77sQ656MQ8BslbWMErTnRpxTs7Kk1tCyzs
	 qq5/2W9lT7unQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905F8C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175321319358.27088.13164397629259672038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75120b731d3c78beec1ed033f45ceb8e99d6a809a096533f14e5260934d52823
Date: Tue, 22 Jul 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753213193
