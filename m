Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03AA7179
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 08:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711787897; cv=none; b=RVqOEYibSgptlNeGhfLoJcL5QnRjShjOt5gIRxyujbPjvHqSVN3pIsO1Ibr3do4s6x+LXSb6Lf7mVh4sB/QEXjItF5S/TD5u7vGTHChsCxvxxgonVN+lgEVLTNoIiw9/dwnd7YViKfzEv8/e+r2meN6mmqMpbiDM77T2MxidT7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711787897; c=relaxed/simple;
	bh=vQsn8tNuJ27voSP1GeV/i8brAWx5DOtk4YlzebfI+5k=;
	h=To:Subject:From:Message-Id:Date; b=ad64c1ZUOktK/ipeNcCLOlm34aWvIxU57QoRWSnyZzHQQjsHK5ZgnsD++1SzHdMrflnclp/afWlH6A4VpoKPGXknt1/jEvpwDwVklNhpPeqNWEWT2lxZlfYagb0zvbTObQ/dt8OEB1dgiRYeagGqvGUMYRsNUouGkVjDzJ0dk2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c2xuOsCK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c2xuOsCK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7583EC433C7
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 08:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711787896;
	bh=vQsn8tNuJ27voSP1GeV/i8brAWx5DOtk4YlzebfI+5k=;
	h=To:Subject:From:Date:From;
	b=c2xuOsCKP8G46+/BvvRpKI7mwTbMqbOUViARgOcMCBZSBi2gV36QWCrTSw5mIj7qY
	 FHIMC0/vxrZopt1oVX0dXFELN9syFmEWLi5ry472H145ARyl4fn6T3PVgmLJS/R6yD
	 626mF2lW62rwoWI0Fi7GyLHlMGhUqMzBl+N1c1+Xq7NGTgzugdd+VMTVpyAvmtTDTL
	 0qWsxNiORe4CeLl75cVAImWkHmaXVbdua2d41yxbPj5DHDhfxTKeZmSWx9rlgGnE57
	 rv7vM2waKZqecFoodA1THER+/LjKY/XJoLK8t22o/YszncUFTHlsA+aI5LnuibqGVe
	 yWehIwuH/+bQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FA54C47DD9
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 08:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171178789637.22701.12229390855644320756.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bee941cbdb60fd89575c870b5ff0a7d2b5caead07b0376386d0d50a00c975c3
Date: Sat, 30 Mar 2024 08:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711787896
