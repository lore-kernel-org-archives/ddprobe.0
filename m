Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3101F1803E
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726601155; cv=none; b=pZugdu5of6lLtrzTjfDvNKK6oDZQE9gYmtwQI+MlOwZc4AhKMxoZo2PWmV36gC1ySWo9VJXJRmkKoq84Z0Y2CnjQoIwWg+54DcYHCHe76bhlkunBJ5KhsG4B3QpeC3tgUkvjYt52wTI7m2Ryhs0bxBtikkLhlJt9rDhrxLVumro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726601155; c=relaxed/simple;
	bh=PAlQkXNTkuEhNBPXYsNcErUgylt55WPzqL9J0Bqccww=;
	h=To:Subject:From:Message-Id:Date; b=uET7FsgYooirNF+djcbeNhpPWOFehehlY6n4Ba/R5M5MhdQdrBg8SneTv05uANudnfHgtjxccDcAMPQR4/lIofO048GuryccxL8ecvYQ2M0s7953jsM5a3bKNaTL4C/A940pUrUfQvKWEVgQReHDWq5G5eXASoyeqOq1J+Q/aBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lPAfEfzJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lPAfEfzJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5263C4CEC5
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726601153;
	bh=PAlQkXNTkuEhNBPXYsNcErUgylt55WPzqL9J0Bqccww=;
	h=To:Subject:From:Date:From;
	b=lPAfEfzJNA03vqVOCB2y1b9UWPWgY0DKDdSbx0Z2WC9nGpsopVSsx7bWstHADFIjp
	 SLs7h63uaAGQ441My7TYBR7r82Es13jPhJuJX8RnonwWEoBPGXeVU3L4jGYbKkpkF0
	 Mlcidi7Qp7U6Kl9G55TDOTUjuRruFWD4kqlEeTy3wnLNm59Rq6zZftva+c5xWOkDJP
	 oLg2A8r4eo/JaHImR0WJXYkQfZenPQVMUcWYTz6wKM1Jj0NUZ7FxraTLDROo74UVOg
	 NClTPzZjzObFB1yd11rSQVilvANRpCkQG63HInt1g9KelYd+agbI06Ny3fp7HMwbYz
	 i5OmXJURBNq7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9224CCAC597
	for <ddprobe@lists.linux.dev>; Tue, 17 Sep 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172660115359.26347.9959334323244531781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 626039e083bbb644dc4dcddc642b6566651ddafd239d3cf229624c2d682440ed
Date: Tue, 17 Sep 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726601153
