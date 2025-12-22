Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C99D11EEA5F
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 11:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766403233; cv=none; b=eDEhzHTEbfkfifyIl2sWtJzop9JS/GkBZvf7qSXv3jQfW4ovNtNWloAn8J/+Yi2tSZ5JYKUyQdbruBGPx2OmPZWeIlyX2qPfuJ1W27oY4wjsCBOfhM8XtaTjSEFLI+kV5yPot+LolWSLuFabqs3QUtEpmbBxNprLB+y69uYHBf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766403233; c=relaxed/simple;
	bh=7zI+oCLhO0ea1BjMeW9tSzbTrmqfpGgLCUQdEHq/0yc=;
	h=To:Subject:From:Message-Id:Date; b=qULHg/rUCoIkirZ5ENIPnhrUM3Vh0gLG79cS4EaePPxBmnWFD4JCsveuUcd3XJiUW1QwDsS7h/PSyzyHAjJ8L5I1Vj2E6sVNrWU0c7LHEazoVXmPajmPqU/yrs7sO6R5Q2fsRvUsXKHE04YAly6WRxCu8JSMUBF9KmIhg0VLZWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0yRX4VF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0yRX4VF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6F4C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 11:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766403233;
	bh=7zI+oCLhO0ea1BjMeW9tSzbTrmqfpGgLCUQdEHq/0yc=;
	h=To:Subject:From:Date:From;
	b=c0yRX4VFOzj/DkUJgv4P05dNZ0Uz6vGTmPfcgdmLdz0s7u6MCSyMH9REHMhFQ93Kr
	 JKNM7Q/6wN/GK0cF2vdfaW/Q9KTzZkkqbsXL4fyPHRTLI7yh/DBINONQrQuHw+X4ty
	 7VlIFrzJgsXRXfqCMSkQLKzm1DX/IE979yEc306IrRQ+PMJcorzCHDoBQ7SDXbI4SE
	 p5gVb+5YbNYB5rEH715p7o1/aTg1BWMfaU5Drh81UIz1XySuSZbVx3dFenmJBy0b/e
	 yQRXVRlW+lCu1g4GYUfncrIqyn946SDh67P25RYTmIGITEvGkTtAu+g8lNz5m65cLW
	 SsubICHkpZMcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2CAE6748D
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 11:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176640323357.504.13044254860869642813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20ce9da7f84ce5617a9b8418badb0a78d760e7f6dae811692ca253b5bf1710cd
Date: Mon, 22 Dec 2025 11:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766403233
