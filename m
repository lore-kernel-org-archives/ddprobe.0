Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 685BE1DDE9
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 14:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715524343; cv=none; b=ulakk8gypLK257NJ9cSz17azVQ+yXgKhMa1As2Kmfg93wGhJ4BSSvovhfY3Wux2rNZ40qYxUxWkGBXEvd2sJV/3x1mMCRgr+ayGrx3havYU+aIJir+b+AZ3/Whzxcn5Srlb6/DNFJPaYRcsSQ+9A5dBPf3V27YjWMqNzRiBj0Jk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715524343; c=relaxed/simple;
	bh=KKGsKVA12p8uS5sXIZDD3NAWERepCJTIFBtVyFbx8E4=;
	h=To:Subject:From:Message-Id:Date; b=A3vjXvUhKBR8hHEePxi3jKr5Uj7zW2kc5CUmU71kKb0GcsWGIikxeU4kNePD1ppcMg9VjixraBr/pNmTkOKm2RuT42pr8gapIWN77cARDo9uDFlV02YW/KvdNYLBP3uaL4UtGHiawMQuLz24MS/dLe8n/6vqs1sFeNAKKsMwpg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxStTWBj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxStTWBj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6FF7C116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 14:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715524342;
	bh=KKGsKVA12p8uS5sXIZDD3NAWERepCJTIFBtVyFbx8E4=;
	h=To:Subject:From:Date:From;
	b=CxStTWBj+54mf26t3sfigBv7N9kXvq9cKE00RVPwKBhIeyQkosg+8VU7DLNad1Rai
	 TP9MuNz6wvJA5f2gfRm21oKPPEbEOO+VBgc1bmb2gn22ChN80BZ7uSBxFg1rjyqTau
	 0/dsOwhT9XG3kpJ4e5DFd33WlFBDwNpH1PkeXtkK85GsZOaVRjFfTgxaVXg/tB0Z7Y
	 S3UpXsxtcQf3hKz40Ptd2Qub48A4db/2iJeJsczH0llIC/nGiJfdwuPhfLsyeLrhE0
	 wTChyFOszMST14nIeZ830qluccdQSwQqtHPzZFEsrs7vnrGniYeK/pXEm87ZU3iCrJ
	 L/S1ExdWoyT6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1466C25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 14:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171552434276.32183.17811893113981412245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55e4f83f1b9b5cfa392d23f7adf44b5980898184f458bf87901c7b1aa9eb9632
Date: Sun, 12 May 2024 14:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715524342
