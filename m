Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3344F2B9A9
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 11:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728732354; cv=none; b=J8Ont6trbP18t4+k4pAXel4GdYNkqGHqdPKxjeagD5rZTGPQVeOqUEcWW8lp+K33x3Ugj0QarL9E0vpys1M6F8M2e0Ku/Y87fUTORtZ1CywjzeGCi7U6fx+YTCY4M1nJQPFgYFzFeoNEAO6rI+nI5BpaxSXh2kC8dWaj++7K7PI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728732354; c=relaxed/simple;
	bh=9xtBmXrB95aM8bRIzBkhQ9fh/ChWcdjz6l21lle13nw=;
	h=To:Subject:From:Message-Id:Date; b=EFMg0lZPtBp3SZyLrkf3qhp5Aw9eAgmoyhqY/rZbKjTcdyaRUtUfns3OXv/SCOJBWSg4qwCCvbR/yXdk8f1zxtSqYx+dMXZVDwzLVl9dNdtR9eoqT8HCy01gNBhwk9ct5Aq5mpdYBvNzuVuzd8QOCXkjisFOx7Y0FMVvR+oNDMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMNfrhzq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMNfrhzq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE653C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 11:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728732353;
	bh=9xtBmXrB95aM8bRIzBkhQ9fh/ChWcdjz6l21lle13nw=;
	h=To:Subject:From:Date:From;
	b=bMNfrhzqUNoAmISiKnlQVZJgN/2I3OJgzIVahlJYBgJyUIBTAd2+IAdrX/GaLXbjI
	 RU/J5PPQxMzfNEySrFFfSsBkOSkrDXYdtNUuaOCGwG0LYLzdi5HjSnUT8lTOt0xXv9
	 lvW/xlcVYxRrZWBXPq+J4IxayNaaMfVfRsVL2sHd55Xly8ZC6+9wGv6awVYe3s+bC9
	 dltleDjsVf6hvCnMQ+fFEZ6QaLVQOGBXE0fmPJTPNlryriTaWclfOqsuorCidV0OLg
	 a/QG7KNsCbu7yJJ+O+keDtcUeBWaNCDkSZfPjujdn9/AyeQ1qWfq8NRedoofHQUx4S
	 Gnd7yqEhm3Njg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA513CF2564
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 11:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172873235366.16005.13433989278921141020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ffbf577cb561835490dee394eaacf95ec6ce368d5001eb0cf327d24b81c2b87
Date: Sat, 12 Oct 2024 11:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728732353
