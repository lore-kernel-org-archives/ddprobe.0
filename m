Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2523F387567
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776323854; cv=none; b=YUbvyZx0c7Ky52WCapEj4rXroCdp7D/kf6RBkAafn8oJpTxwoGRtWqX+K5Tu2YSZLaKPfuvkyREUyA+XucEHdm4pqldxcZ9tmul6OJ8kODdXRejNomO8sAswgoRWz6N+mmpt5iNknAek9ndz9l6n+8bL7Ao5F1av1JTK76emmAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776323854; c=relaxed/simple;
	bh=e2VOi5D7+5s9MbD/LqYX3//rjF68wKEoy2ZeKY7KpqU=;
	h=To:Subject:From:Message-Id:Date; b=E9CmFguf/aQo5bkzjrGwAbbw+jm4xdW4aWQLvvhT+fQxIOZBYvvGJWa/p7/EdjrcfmuyyzmyeQtY659DN/kIur0pzr2X50cwfbeoNAJvpr3Oq/gTH2KJf2FNQj1Z1hhslTanemA43auDq4txCYU8y35Py5xIkm9nBq0G/UddnR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GLjQZ/uk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GLjQZ/uk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7E66C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 07:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776323853;
	bh=e2VOi5D7+5s9MbD/LqYX3//rjF68wKEoy2ZeKY7KpqU=;
	h=To:Subject:From:Date:From;
	b=GLjQZ/ukybxHjMW0IghyaNxBgSx5z7fag1StJb8bz/uq+Xo+aWuFsWM+rp/EYY5Da
	 jqUPt5NlcgR7ejKL9siGUr0LWxr5p2NXHQvGsVRFtZyJTZFrebzKY+s2SxsFvFWGIx
	 avEegmQmHC0IWqLc8M4PAIqicNXu5+ByEdZbqBeQx4oeaJkd1IMciTyeaMN6jlaHxp
	 oj0tobhznlqf79fBcJ7n9O33rjZ/xyQqtFBBaVf+GIZ7Fv6GZovHiSF+KebhJCG8V8
	 O5HqFosomVGW1pja4X5Ri7EOD8uaz8i8Y4Bc8TtRaTyXAv3paPy3jy3ifJ9gZuoOCD
	 /73eujB36/WVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B590AF88089
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 07:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177632385373.25591.2498638635989219058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f93e89f045ead997a6da34ba2d9ae8c0608d034d08e51d44c508008584af30d2
Date: Thu, 16 Apr 2026 07:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776323853
