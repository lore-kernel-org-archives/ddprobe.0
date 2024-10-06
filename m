Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B8C2C853
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728239754; cv=none; b=HyMaxiWJKmBBRPdWrklVkDjD+O+k2Gj3Q60aupAJcRXTyycS7A3bEPteA7l+MJzvkqF3fzQu1LcFlpCZTXsJyPvr5WPFgR+3bksVvLkv0r+1CAPsAi7Czkg83dS4Ts3zxowGkLvTYdNbaQYtvcr5LobwitgkPg4h1/fKAC7IFZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728239754; c=relaxed/simple;
	bh=QwlcO02EypHdd327dW2woR50DsPujl80CX/qg/PmHYg=;
	h=To:Subject:From:Message-Id:Date; b=P6D0sjYS8BJ7duZpnlc9rwZvSevlTrbPlSbggPLIvP9U+8US5W+tg7zSqIY59TuDVlEZLwL0N20VQfZc+if7bfeCl/teXA888wRqTgbPKZOoHWzbOou7zuE9kKi01/Mko5ftuQ7psnn4wLuU5TfUBpNO6059Xg3IyIGMe/nQZDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M5GMIxMO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M5GMIxMO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A65FEC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728239753;
	bh=QwlcO02EypHdd327dW2woR50DsPujl80CX/qg/PmHYg=;
	h=To:Subject:From:Date:From;
	b=M5GMIxMOetsCTJi1eKsrQMX33xKqB/V7vKmetdqq45eV+KWiEL+AGA/RBDDjlS2w7
	 k3HLXk5bo7NZbc1wx+CBq5eBeZLtzPRBX++hO3ByBGBEZizJIovYe34ClhiyBhn7g2
	 39jT4ib/aTyggIniuKYVZSjIjN9RR6kOatLXMRpX6xzMt0VTAfTWy6U3eF3ZccCdMC
	 S6nLWfVxBq63I4kqtig7LXh6voVIgPaL0FmbYDTR8y1A07hChdPxTvjxQ2dyLjSyEf
	 V1OWqb+F2Yf8WOjn6VfVwBQ0cDZ5rJj1xj/m/Q0Vk/DZrWATkspOIqzG5MhCfgakWf
	 tjfiwDyeogXdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9617FCFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172823975359.30673.8823344315183611505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db37f00bbbc06a7228fa39adecfc49d31bf582ac090ae477beb178d2ef763035
Date: Sun, 06 Oct 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728239753
