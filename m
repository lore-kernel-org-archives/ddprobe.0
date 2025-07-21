Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D3E33C30
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753057194; cv=none; b=pSI6EHMbEfAVihdE8vt+ambS5p0hw9Y8d5szPiXdyigUzDpZtoYlj+PgRjVZDNrGMBOc/LYITlsiKqnicH9xKEPtuI9rMqRJVMKF6wv9uBlXDcJuTI/xxLY+0tp/MYKz2VaLqEcKx/+SufpgA733LbgoatyRfto+bNByh/F+VeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753057194; c=relaxed/simple;
	bh=4mqMBcHZDjhm+8MLEIO6j5O/L+nSA/oFwARYT5+uJEE=;
	h=To:Subject:From:Message-Id:Date; b=NpYRqcMiP2K5/jIf9C6D2vPPsFwAnMeLf2CdyJy88oKC5gi8Oq+eQ1V982O8+3OiL3iL7ii/RzZcZOxaxS1NQd/K6A5Suwjiretn5ZhW9WhxZJuHkISkm59pbnDrHlSvannwLUAhRhz3AlzSjmAbACAheEpwsznt/QvPhtBhf+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Md5OtO5Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Md5OtO5Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C87C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753057193;
	bh=4mqMBcHZDjhm+8MLEIO6j5O/L+nSA/oFwARYT5+uJEE=;
	h=To:Subject:From:Date:From;
	b=Md5OtO5Z7fuXkrqcPuMn0RfQoVBkfCVyppFNAYwSIcJ/U8KuiiSZOoqP6FenLUOIo
	 LNDLjUuoJst4MpSHCsNTXl/VIdJ9pJyEVjlWsMcx1po3GVaGaJwYJGEU1VR3IffUA/
	 jpFnotcmykdc03gB7x+b+2jZx6ZD8rqYRq0GqPIiosDN5PupVHO2TZHi2ecn3EP0Oc
	 7CPN+hQDcTvV+5jfL9mC0LECwObFnofzK6YCfozDxYR/Fyqz1RwWDNVggZ6TSnGYFW
	 DymlMGJCx5ppA/4XQeODHoY48qmQzZVvswplI7g6ZpjWhtzu1i5AY79C7LQkShBwgR
	 lalmlSNKLhrhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956E3C83F22
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175305719358.16210.5109188090398075111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d537f358600fcf2de8f0f541003bb74679484b10c2eda255d092c8ab178c6511
Date: Mon, 21 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753057193
