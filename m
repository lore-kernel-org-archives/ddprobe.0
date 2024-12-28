Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5D9433A4
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735398954; cv=none; b=YZNGRk5HPkTBLmnd8QmGUGhjytZSfBh4wM+HBQVgfC+LDpS5L1YLD4LhoFYpvnltAOHAuFAt1PJdMuOPp122CaV1U158BonjdzrcQyps0r5a8HU0J9kqAGVbzYePyxGKxjR2ghsSuaqGtoVMamVBMGkfQb+oI/jWaHjQuXOserY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735398954; c=relaxed/simple;
	bh=d+iAhvWFVGbHlpsF57+Dn0hdj05e5ojPRYtUq92giss=;
	h=To:Subject:From:Message-Id:Date; b=fGd9Q5qWPsClqU+KCA3XOGT6FmXUej1HaQ1MTEVbafEFaqRW9CRjgdK4EcUEsHkSsvUVMiZ38bGGIp4gfIEMXh6N9Am/MznRfS/4MGTJyua6mN3X/dS/+XUIe//MBctbqCHpVYcARKRHcMvTJ/12/llRgWPsTSmZwxtFiTE1DGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ekcGvoWJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ekcGvoWJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A64C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735398953;
	bh=d+iAhvWFVGbHlpsF57+Dn0hdj05e5ojPRYtUq92giss=;
	h=To:Subject:From:Date:From;
	b=ekcGvoWJrGo6U6OlCtpCMPHK+Ow00sj1Bg+1hSU4vY6llSCWb/W2Mz9pp6jIvOdpk
	 lYcDtTSUOfANsnTsYvBvAuueL14KaDDv0D0IMd5ri68eAtaHyrdNMkABvQJ5XgRLvz
	 NpIKH5jcIYcw0Ap8D29EF11MpKgrI1LOqWm22+WE8VBTc2MhSV8XUSwJOzD7jb9rb5
	 h9ueTOnD/HZLoU8ktPAXQgLQ7W9i+74Uxi/qHaLQWaVj0q4Y3NLtMWwoHFqin60jCp
	 m2sWskAttr07fdhiM7WznnnMRbzvi+9g9ToZW1uu1RNUOywYOiVrFHixk1wN5HynlP
	 /Oe0FNV8DwVUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937D0E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173539895359.3177.11160375227770717916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65cc44409eaf4b3076c3ef82786d15eea4f6fe738530b5927105d32454fa9857
Date: Sat, 28 Dec 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735398953
