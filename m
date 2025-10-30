Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1309F285CB6
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761811794; cv=none; b=LohL6qm19MJuD6JGZSgw7UBNFClMDfDtgIkSsyIk7Zz9uIDZXYAlXAAxBdajg6T84feDZh6ssAcauyaueQO2Tx4ArJKZcMLuA6U5ut9u+Hb70LZk4NX4QEJqYo+Mu0EEJTK3dq/8YsTZgVGYXctRSuEDuhjRWRh8yYjRYSgUG80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761811794; c=relaxed/simple;
	bh=edTfg8K3bZo3JQmpZdx9AgFvMPiECbc3NyHbbOli/3w=;
	h=To:Subject:From:Message-Id:Date; b=QH8u6aCNSroq8seDBF2EEKeumZnhHpc2jOTqh2mzCcvGtm+lDz2IsvvuRArCjPQ4eqKIoxuqGwLCc+ywpp774D2ENLsyIlpZ+QrsycrS0whKq9DLxdw/zqP8dhhQvRnGelbJq2Wxw936O023q2rniVyVK3GkBWDTRXNbzFsRweQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PMbVK/yI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PMbVK/yI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEDEC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761811793;
	bh=edTfg8K3bZo3JQmpZdx9AgFvMPiECbc3NyHbbOli/3w=;
	h=To:Subject:From:Date:From;
	b=PMbVK/yIntDEze1ENqiNqsQFpAox+1EKRelU8g+BcbNKkoIU45cV0kVvkuyiO5STi
	 eZkr7cSD+xVFhED1q9PNcHQaWaWPprQM1qW46xKM2Ewvm4Mk0Tx4mXLenzIoz95QPa
	 XfuFsrqXjF1pH984NwUSiqtmm1+xIG/ISG/4e5+lYFUV96nYyCqHdOp91RbdzZGw5J
	 Guca36Ne2Gwmt3LT4vQeFSj4/g9o6OW3tcFlXaoIXwhUGx/w9IVzq+HfRdQ76AEsEV
	 ld4SPcYBidKWa/sqWmCiWpo1hQTtd7xPxkxo1AAQrhXHT8ig0o5BuEkb9TrgSr83mI
	 5zzuwP8tJ5dkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA77CCF9F0
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176181179358.13290.16637219545566380769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d46ff308b06d0d1006e09f80a8dff046f70e40ba5602bb8c29bbdf351aab078
Date: Thu, 30 Oct 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761811793
