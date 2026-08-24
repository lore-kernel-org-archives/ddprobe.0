Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ADCF26159E
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787545234; cv=none; b=d0uR3atLbS2pLEsqXcClbx3EY684NeVd2JlBPD6O77L3aQIDoHXvgMuWZes8wcwobTPxVUqkUKhhml8RP19DKrugd7bGZd2jkpKYjSwVVkumphstKO2RpPwmvC4atcADTwPSUQ8e3BRRzXOh0WZSVzVbthlw2K+5m4LBMBqX19s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787545234; c=relaxed/simple;
	bh=RcmRdbJWr9nch2lLOvrTKcNqEgwXx6IiemfypAGrgpk=;
	h=To:Subject:From:Message-Id:Date; b=H/m3tChOTiJxqd6Yq98ebRJSOPterTmkB3SvKqvQcOqYsI9jS0dULr5FjfMzh+CvE9UWzjlMHu31dyU99ga+f9m/E7R3Cgeb052j01LCrKoCqwVJvFgh2mcUM9QKbk310ASNmzsM39MIU1zJXlkEMlA+B05UCnZvyp/EXhyllto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lM9sfSTO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lM9sfSTO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C37C19425
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787545233;
	bh=RcmRdbJWr9nch2lLOvrTKcNqEgwXx6IiemfypAGrgpk=;
	h=To:Subject:From:Date:From;
	b=lM9sfSTOaZc6MIrjdRj55Ra0HsVUewLSKUOHLL2yDQeMA9luZvfEJPGGsamxk5+X1
	 z+kcXirzccZ7RSD5RCwhED/gS/sab7xwyDtihySIi1UTdiGdbkAn2l+CBZRsASZoyH
	 j3tlxKA4P2Nt4YngrUcJtLw91LyQd7JxLE2FmZYYwav8IgFiNmlHHLnT9gbDz0vfry
	 A7/z8H4Zbcu86ZpEBRtwzo2nMM42yUyTsRP1rV6ylOtzMOnVw9NrpQHnGuMn7ojtMn
	 q/3ukb8xeuGS88zUPkVEjRYCiNj4q7sykfLKo0Ut1+ZpPml8f6wqwTYSGGLSlo0lvl
	 0/cgUPkuxrMxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED09C5DF8C
	for <ddprobe@lists.linux.dev>; Mon, 24 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178754523370.25593.14563615341817796363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d3bf7b2051d8cfc46d4532e5af7c85d271d98821f089749afceb3980a9ae3e1
Date: Mon, 24 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787545233
