Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54AAA2BE7BE
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779373234; cv=none; b=ou2cDK0zMzAgBv8ZkOSEH7JNokNaK7B8/HtnNb8tbLmjRT+5W3c8bp56m9TXNypBiBDeogxMglKOGVaFYfbY/OIwyiC3mS1CvDdfLkPsKW2NvJGLIwSAC0tSKNKk55L1XD9UiK7g1fBs6TNHytgKHv9FvySZwpWJv13oQf5HvPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779373234; c=relaxed/simple;
	bh=dPjLejS5KQVw0aT4ClDMQXckqIppvTOssU88McnMY/Q=;
	h=To:Subject:From:Message-Id:Date; b=Pi7vHfw0d1kEl9AkAi4FtNFTegqwfjqBenY6iKQm+C3WIAl+qm5HAUCI/klL+uFJebyln9Tkct0AKOI2+nNDW+N7t/ykKmoZl25ehKNKgZ6qiJ25wjB1POtgARgjb8lRJsOBLEE1riCdRFjOWcd5cbxlQ4YtMhV1ChG0ZZaUjH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YG5cchFS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YG5cchFS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D959FC2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779373233;
	bh=dPjLejS5KQVw0aT4ClDMQXckqIppvTOssU88McnMY/Q=;
	h=To:Subject:From:Date:From;
	b=YG5cchFS4vT4rnlluR/VuMCtXfIgaQZLP4eR3OltIb7Ha2kjh3dPBsd2muWt/fh3V
	 v0eVIP1T1SaFKNzf6OxnARg0cGa8B3vkWkVcK0S0ZNQm43S5KwPrd3l8W73PYV5gGw
	 yj8Bc5uzKo4mSNwo4AiIjDOrgqvlg3hp/EI9TUEmX7MyIubnwPtmeqVmXu6Y473IGY
	 v8G6MeJauT450HzUQTB1DYTCcLwl5jjCxh92Rllwa2Y/4c79Hv+JJCU/zPxvtpsRyz
	 XIXS5o4nOZFX6sm0ueH/qBEkWInWFniOXyCaYJnplTGUExYJeIWhB5h6Xq+dlgHx1J
	 T4kvocpGxWv3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC026CD4F3D
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177937323372.21413.7682084506228109593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1675e6ef99586353f80e7ea387aeed8efa9b1af30272add7fa35dc01bfc5ad7
Date: Thu, 21 May 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779373233
