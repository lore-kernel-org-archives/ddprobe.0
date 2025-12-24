Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5041578F26
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 17:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766596434; cv=none; b=HTHik7OLuDM+2nfiVpVO1seIIF88AbQiIdTk08TS4mMGFBfHh0AuVFA1iTIs5WM+6+wd77ChDkyMxeagYQGY77FhnLv8kqOsea17bm9WCzrtMPKY0cqXwstZVFqNt9LUduJ0f7XXf0sJltWZ1lIwQLAZPRNfZSQPFhQyXmAZnpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766596434; c=relaxed/simple;
	bh=kTWfVaq5sk0WcKqeFl/4XNo4bP6XZ66NTo+aQvRAS1k=;
	h=To:Subject:From:Message-Id:Date; b=AMLrm+LNVY0TW3ckpOS6mwBzPg7cA/6he9MHNtK9Zy8kOtPAV5PdsXzFqST3Tn8Yprq7BoXmS+k3JSKRrRK5dVeznNQqA3rHuVP/J6Hf+G66lLroIJcFcoxBorbmkOJN5uE/Hd0B+Ia5V/13JZcd6Sq8oD03NwSVXtp5ouWfuco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQ/KcMRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQ/KcMRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9266C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 17:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766596433;
	bh=kTWfVaq5sk0WcKqeFl/4XNo4bP6XZ66NTo+aQvRAS1k=;
	h=To:Subject:From:Date:From;
	b=hQ/KcMRBMC9kF1VcbgVkW5y3IGgMhHLkPh9qJSlpXyqipKJtfxkEyTqjzeKzPnmYL
	 551Upxaf7f+f+eA+Gbb+9K2wpDkvGhcGvLSgayPZeLnwQBdIonnhUbvapyWc5BtMW+
	 6RegxOFuyeDf85tesvgcdAmCu/6dabOfwd/CSejiRTkcmL76dfXwXagIkJ6oeuQzhM
	 T/f9YCnIx4HX+gn5tyoUdTq02W2a1MyTYZ5qqapZ0OcdwQ+pyCYqUYQ0os3A8KgxP0
	 L3yJ0D0LET/lKPhiNdMYL+NVcTVI+MsTTWzgec787mXUoqei7a/m0UBdVOMi2DEHy0
	 sC+UwlYLvPuIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95411E776EA
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 17:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176659643357.15300.14867431819870462899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85c23e7bc8e7e412f698f099af99600b38d4997548e0d9e3462fd5c335feb666
Date: Wed, 24 Dec 2025 17:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766596433
