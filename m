Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9662E5B2E
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760719794; cv=none; b=ZSWBQMy90CNbse9aFno92mvjzlOK8hXdfYlCqwPxKmiqsB7c348ruzh4HgsdwK6kQlw5FzwkrfIgbfJgoezXHdoaG53nmPaVuUoTnMLOEHtKHs83pkd1xm2o1dZJOMwUhM9HGobc+9Ybp9747df/OS7dzlbTdDAq7GaQsLV5M70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760719794; c=relaxed/simple;
	bh=fIHV8vIhYpXfmf18jVa2io00nh4kMDkCLLDnJDDcB9g=;
	h=To:Subject:From:Message-Id:Date; b=StbV6xpHrVnAZhI+TrFV4SHPx2awhZSPCQUirZ9FBk3ueitRWbqF+gkVSA1x9ReGSPw/LGZTekwGYYcTala9hWsWjqCnOmBJ688P0vOlXhqdqX8CODBG3Y+H1TTaG294RtUSzKnWIxBhqPC/M1CQAvpVcIbR6IPQ+WIP2TJ7ZPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLr8glHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLr8glHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4B48C4CEFE
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760719793;
	bh=fIHV8vIhYpXfmf18jVa2io00nh4kMDkCLLDnJDDcB9g=;
	h=To:Subject:From:Date:From;
	b=iLr8glHVpwx6eTEr8ZssvZ5jlCQJjPOXsttacY068LtMsxEu7UMlrwyK8opawOL2a
	 rIA6RJy5jBT/3Md+tE7T6HjjTAYnC9Hf2d8IO1CZXf6+fMFlLEfrfxjAX5aCgeAC81
	 knplNfgJ2Rv8Fe09FpubOptIQQAdd9wggic5JRGU1wkLJT/iFo3UJw3atsNQ2yNWOI
	 IuxDSSctXAiyf+gcs1QUK3G8sebqdFmO16y/7h82SsqoKiEerlN+m0RtXXpliibwqr
	 jhAjBDDYLjGvsggujXBeOOpUVjAsAOrmrtSzdekf0pVRDLUTWHBomHfOPKNdKZCZis
	 Q42y3OqNP6NPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DCB6CCD19F
	for <ddprobe@lists.linux.dev>; Fri, 17 Oct 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176071979363.30326.18289924704667048132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b25e4b83a5201e46af69eee5835038ec12a5a7cb8fd3ed09f6f7a4c99f6a3638
Date: Fri, 17 Oct 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760719793
