Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FE5E86349
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743480594; cv=none; b=aFhDj6rFcnhwbQUiEubn1rVrYgd/TUdUiMeS7MukC1CFQ5XCguzMtTfWC+i3lMtwm+zhTWYFhwueP87hIfeakJMDUISZ+Naa2XMbc5H/kjgHn3Ckw+8UvRoCa+ebyB3Lx1eFFovRXP8ccMULB8ur2A+cYOih7NHOJbAarpxNXRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743480594; c=relaxed/simple;
	bh=DFa5GET7zxJQIdvIqTFkxJrr80sNCI8KO7jxnr7z26k=;
	h=To:Subject:From:Message-Id:Date; b=OFIZ/frui9N1OXN7CiSefcexcOTu3QyvxHaPrYRHnVxOiVM8WwuvkUJtB/M9H6BdgzDCXcoafKDdukRpWaxIp4ArLvqiSyDwFruOVouBv7nWvl+xaaJJabHcbQXWp6ImbmcfvAgk39tGQTVyl3toauDmzXzbXnTT87QsHtxuC74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTuoVq6t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTuoVq6t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B169BC4CEE8
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743480593;
	bh=DFa5GET7zxJQIdvIqTFkxJrr80sNCI8KO7jxnr7z26k=;
	h=To:Subject:From:Date:From;
	b=FTuoVq6twC5PIP/ZQj+W8ACvACfB8nvjnspFxJOC0uwgKsv2EWwlBqdWJw7jBqvzH
	 fW3C4R5sEdKdZoPidz8zvyk/gbN7VoR/vpGNwx9y31xnOKJPpDMZukvWVv1j9TdR1d
	 g/QmRJulikTxvGsxcVCHdILVBPTClAOcXpN5CvrFGiaqSTEO4vS6rbAbAxXIgF+p7p
	 4KeIsyv7uQ2EagNJ0afeKoRtFOQNK9psqDt5yDS4iHsNnEMpS2YSw34D+rGAugs0aV
	 luTD8UCxr/AXEHtDEXbvEBm7ZDOZ4pHGuMpGltb1WWW2txP0zsLhN88Ha2kLX0dJnr
	 qaMSge/0kPoVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97073C36008
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174348059360.9661.12183894460789299680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17d457cee90b8344f8c855a07a5f3c366bfffabc753f6fe9697fb006cd73079d
Date: Tue, 01 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743480593
