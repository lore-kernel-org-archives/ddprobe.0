Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1590186337
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761583794; cv=none; b=tLT/zWI1aNUWW+GxxT5oMx/wEE9tT4n18eztwtFxknpVv5UwOQIpnsxH1oNCgIR4ZT2S4mqGLJ0plAQegoSxvmGnNDkOl/ozRT9cUSAXdoWpzLycyDgiOhpkU70p2MLWa9+1OUT2vezr3q97sVGpReETrXzqh/4q4mrhhsyN6RI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761583794; c=relaxed/simple;
	bh=zmSVTJC/zCwPxguzkjKrmVmqSTz1SppdfgqMo5/EELs=;
	h=To:Subject:From:Message-Id:Date; b=X84vV7z39v+UtUpnT1CA8ev3ghtFk0w4PVlSItD8IjP0qzt4Xg9Cc4BYjduQIwMg9MlilctbnOMOuLOtUP24UGlbCmwe72oqLZ7XCk72YZmx7pfsHPlwPMTu9sc5fR9rVmQipUBAQgNRM6y/hZi16D+mnvtRBnycXslJA46j2sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TjSi+WX6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TjSi+WX6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B123BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761583793;
	bh=zmSVTJC/zCwPxguzkjKrmVmqSTz1SppdfgqMo5/EELs=;
	h=To:Subject:From:Date:From;
	b=TjSi+WX6BQB2+RWVVKywup8rGnoCF9ebfq4fzW8cObJ9J/ngRsIbSQDGLAVp15aKp
	 3YiMzfLqbgsafVGj7h9lNAH9UJPwY3ZBcBErCQbPeFvj8TsWv87wXliHXJLZKPAya6
	 l81fEober1KcIk/vG5SXYP/fA8b+qiFN0WSpZIhHktO6LISQABVgo1bPFLJglfbaUp
	 xuqHVZhlrhccX4OQ1Hi0uQEuyaxarvEHJjpr+/7j/ZJc64skvOFxzc/7RQ08b6XZOH
	 PuJUuQ5CO8X0S2FevWWfmp6QMarpx1gCzp3OBPjEvlqlul4GSPnRhXkwo5G4T/4Igb
	 pWyh/847Rrc6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AE4ACCF9EB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176158379362.25537.508566188811588746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b81d545870bfa5b8805f0fdd26c8933379e8f8273ebc18bcba065261bdbe24bc
Date: Mon, 27 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761583793
