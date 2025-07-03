Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7C42F2347
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751570396; cv=none; b=EQofJLyfrqR1Ym1OCGXSQh6q/hfIAM9U327bilBV+DQuYCc3O7FmcdJonrmfVjP9lMP0dPuBtmdpGC4XBrJFLidxeTBwKDn5lOAJbjr29wPOQDjLMLXXQAlDN09/epD6uyJOK1WwyMft5CL4mq/6HKNjqruMUP8BYo0AakPC71c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751570396; c=relaxed/simple;
	bh=0ryTN0uk/22R0Hn4E76jYreFA2uuXEMzBhzF3j6SEVU=;
	h=To:Subject:From:Message-Id:Date; b=T3DadXR/MnYlwdsQnarElVsK/E1GaxNtZUl0j/85AGqycWBg4ybX5OdZXsDD+6WPZNfFqafhxVKnjD+lCx9ZIya/aQPgVKItDsN0k/29UKafMuGEApOainb8cFuYp2NT+ckK0XfTJdNbMq7nyvMLwu2n8I3lWedVXJ8EEfmIAlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oU8weyut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oU8weyut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03ADC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751570393;
	bh=0ryTN0uk/22R0Hn4E76jYreFA2uuXEMzBhzF3j6SEVU=;
	h=To:Subject:From:Date:From;
	b=oU8weyut78Gmvks90GVLjAVQFDju8p+XXfLw+ezlq2WppOALy0q/m1pCqY++OBJIR
	 YDySZKLLtU1MU3a7DowS3ZJk9qgxe9dK8kidwbzW3bxhk/uqVGpsAwbtCJy5MsJFIn
	 moixQ72y8VC7ISEAvGX8Jkf0xhncUkMKaG5G9Nuj2LM8IBZJc3vw0yacavrPAAeZq8
	 oDR7iVHhmoks+5pWcfWmQ5FMmBvwXmx4o6WwbXhtn2d7eQmI4TNiNn1GQ+rvjNiG3J
	 vTUgwXd2eOn6S2//B9bYj427lRn3PhiK9+ekfhi8ectv77Iz1UtWh7/eC2XBfQo0gp
	 ll3fp8LASsLUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9177AC83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175157039357.23798.10507545472320497477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c05d76b268ca2a6881f59283286a37537e5a89fdbe90632995977d10018d2bc
Date: Thu, 03 Jul 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751570393
