Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138493F44F2
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 07:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784015914; cv=none; b=DeDYYIQbeGl0DH6VmXAOZWwexg2efM2Ydhm67Qrnqrx2gIuK0yYWtghjs4L3iu9xPD1lI/ejZC2GDEGfXIJQIr83XMMcn0R/hKmWwireE8NnNzy3zGMN2m5kgrjGQBphoM5bkApMJ5CmBgsjIV1MUKeAzIaUTFjPcv/aRawPQtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784015914; c=relaxed/simple;
	bh=kfshD0m+y27Iwx8GiYv42qa32MZynIVcYvpzZEbo1Y8=;
	h=To:Subject:From:Message-Id:Date; b=bKyRZI4TaYu+jiaKAKIR3NxAgkA30wl0vWi3aN/lzzFR6lChcOxUYZHcz25C2HdMitXyEGDa3WbuyOPWWx19HQgqI0zwFbS8FqnuMZgvewhhsMzwbq+P8ezGqUZV0u5lawRtbrFs1jctmxniPZ3MpEwbbVmAhy7RTVA/QbgW6Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jdgziFLZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jdgziFLZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF6BC2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 07:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784015913;
	bh=kfshD0m+y27Iwx8GiYv42qa32MZynIVcYvpzZEbo1Y8=;
	h=To:Subject:From:Date:From;
	b=jdgziFLZK1OfPUsy6fy3f6XwxE/FsZe1tt2tgXTHBzsaaz8eJZZcp3HaM5z8+nXzE
	 3itrv3Em7aAp0Gs6VW+U8NlwUiI7saEMj/NKopXJPSxfcad01qIz3X6KKZ1ZPYJAfS
	 jFQ3SmkiQdRhcjAk0RPy5OfOaKXIg/jTDMEdZoaJx97RQbFoQKW1JN3blkAQ2f+5ge
	 scFW6lM+5WU/hcGvE/RFPZ8QQK1JOtm1kIHI8T/B6eLXu3KfURUXKm5HWRkf4yDcKQ
	 uI3pKNCgFOxRJ0MVwoyg/CYwlCz2JzNCL7yWjHn6dx3c5fK2JEZ95CbbiXzp4jIMa6
	 /xgiDwLBG52bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E0DC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 07:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178401591368.12429.4556568963222982974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 067d1eab571c752d5201cf0f3e10455a589223ec9b8e83231e588a44614b0b24
Date: Tue, 14 Jul 2026 07:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784015913
