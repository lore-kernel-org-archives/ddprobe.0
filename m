Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98F1D48C8D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786040434; cv=none; b=BbA8Qo8zExOZnMmMAOa5FAFONOiPJrufRFEG8Mjf0SX0Eq1okYKhnMu+1d4bi2wrgdAPs+L35ymrruKoDaLiLPvmULU87WtUzJmCiU1Fhq5qWmiMhCgDhjygLZPrW+KddSguXgrrVAgjH8HGxOaapO1am3tvw1Q5WAArwvjM8pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786040434; c=relaxed/simple;
	bh=S1t53N3iKZB8x0gKHPkA9PM9M3Juuc7G84IT+vml0d4=;
	h=To:Subject:From:Message-Id:Date; b=qEls0+JSNsQODzR9umOi4qLSRCltJrIqzKKLuoUd9LUAx8VqzaPXouRbxzRFbH51QUUwEGX1p/eG8ksgsJGi+e/tnJForn4qqiVnghc/QELCbzuX/yxfs/cdabI6J7nTRkzGBTdxXGjpyLLByiri+T0i2cwbRCyf0C3/tGN3RDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WI702SPa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WI702SPa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D939BC2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786040433;
	bh=S1t53N3iKZB8x0gKHPkA9PM9M3Juuc7G84IT+vml0d4=;
	h=To:Subject:From:Date:From;
	b=WI702SPaJGv8azATWPbitzxm1uvppy6pgC7qiuqSYrLh25upg6sxIPvxJ5+9R1Wxz
	 Z5xJ9o7ssP+rOeQPpNKXhvE162DDws0c8S1Xo98hkepoWQlr/ZnfIkl5DisiMLPjpX
	 KyKj/3KsINcgQliPd2VEcKCIxOPneB31vLSZAUZNcVzavt1vsJTrhoWKqfqGctmzXk
	 RXfngp4ScUMQdi1kN5OJ0qwKcOuuRNeYOzYdw6kKv3pvAoY3hU/KDLigncSRIhuo7q
	 Ypa8ulLSLKX9DqXKNA+8IDTGYODnsucpvo/FZLP4z4MzU9clAjBwkVycfywcm0rtw6
	 OWqT40cCD32zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4400C5AC67
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178604043372.18932.2422980766712826832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 501c6112acee29246d0a0396c732d522e4b42cfe5089437d9a1fb91bad907316
Date: Thu, 06 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786040433
