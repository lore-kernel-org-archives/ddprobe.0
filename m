Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57AC21A7253
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743534594; cv=none; b=IilIN6Ejn7rf7wiyUmD4obeFkn8aXNYMVlPX5734CO9XM4awcZAJ/hXuSkgx1Rt3/qU+RNGUyssvSTtfcA1HZCs57HMXLutEUpyxCrgdrKgLi2ClYkGkGbFXNEq5OwaEtWitlW+0+ByaF+1d1k003RMtDxWj1NGsSRUZVZ3IP7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743534594; c=relaxed/simple;
	bh=k9SGz1lTwB3JexI7anX+zdGv0UXZBbWNxBsYDH711a4=;
	h=To:Subject:From:Message-Id:Date; b=NyCWacv/8PufAShdB8h1fwjMA/t1e3PIBZs7R75pnCG7jjt04SeGMEomwxeTmkME0geXWpxWpyfu8bjoYI/+JJgfu4B6LhdInRH/2hg8yjBHZNIjRtf3+D1i4n7riGgnlQULa0M07lHOuf7PuyShr+LWtCqNtpbnFMGT1dwYE30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bHaR8z35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bHaR8z35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1856C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743534593;
	bh=k9SGz1lTwB3JexI7anX+zdGv0UXZBbWNxBsYDH711a4=;
	h=To:Subject:From:Date:From;
	b=bHaR8z35xJvFYPqm3ZBDeKHb1DBYLr3txOeblmWeLLxP2W8WJZAyQgUZbgQQJfQvY
	 vU10Lj3DEMmmPB6oFYXjw6TfrgZENHNFbjAishMNrA1FP4vzbnUNJ6bOeW2K6QFawy
	 18I1Z9HTfiXJiBJ69ry8HaSztr5fMAcWD7qJMG+F83rRezZg8xXCEnhHEfpGeGxRGW
	 ydhKaAwkj8FkHm7Fffgg1GYZ+15dbFnqNebAgC9HNLlbrjDdajdxOuthvbVUH8vz89
	 im6KYi4wB6EQvAx0AKA8OS2JIkJShJAWFD8/w4xK371r3SKnaj/MUcmxKSfJc7p6qs
	 ePEytqHEdWR8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA14C36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174353459368.31625.6009966738309591197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c79b7f821c1663bd511d84c5b20fb077f1f00b9442a06a3c58b6505640c32617
Date: Tue, 01 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743534593
