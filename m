Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2658C2701C3
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753718395; cv=none; b=HROZwZn/RzR4Q/SO743ondnJbYkjtOGKn77QmIbN0KmTOguYSiOZUlp5UX5hZn2WBRCrgh8bqzHV/NrQ/6DPqN2lDAK3S0xxUkjWAOsziyWoG6pV/hr4JKXGD3reKOvSL2msNvoyA7kJc/MM3yBtiKuJfT1V6FZ4UheLnJHBcm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753718395; c=relaxed/simple;
	bh=rpmujtF6LwFlO7P2vb+hPoV+bk21ZAHF9x8q9R/57bA=;
	h=To:Subject:From:Message-Id:Date; b=RH6jiRHTLwUx22g12iCQrZLRPihPHtu+nLYqOFcMAF0Zxyl8a7ib4jj+3zdyqhNWI6oCJ93+YfxQffK/q/W/W1AthRZZOAFR4YAU3G7l+l6n/DCTuME/ImSGNkHSRyZ5iW98CdeZdNoXdbwwBpD005p8/57g5DalooENKcsFIzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KquY+kAC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KquY+kAC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D00DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753718393;
	bh=rpmujtF6LwFlO7P2vb+hPoV+bk21ZAHF9x8q9R/57bA=;
	h=To:Subject:From:Date:From;
	b=KquY+kACFSjqy0xN3125axnNr9m88WSLh/Plo/06MHE1KzBdaQG3GdIQTFLEkfIwZ
	 NtflhUw0O7s7kqI3pckG73hWKniakJjrS9pNKgAJcXvPaKcyqS1GRkTkTBpchoZMHC
	 9kc/pChSb+gGuqJCJqb782FmxMcy00pmoi/cgu3mMTs+fr2/R+Saz5Fq5p8bovWdNP
	 gGqfnf7LJkDkaqbmL5MyuY11QoJp2EnpLuwUpjqqAY0QJ9ty7dwB86R3ZoGZcaODYN
	 gLFaQOdtUOQL5b+1EbuQq44hC9HAXsi/l5PsKozCiNZStJ7j6IVvGwohdiHgFapAyC
	 dJkXb8OJHQxWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0D2C83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175371839357.23828.2747160296228201098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 002bde5374fb166304dfb23ccf6b039154ef355bcdb88de0c3697bbbdc1a6429
Date: Mon, 28 Jul 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753718393
