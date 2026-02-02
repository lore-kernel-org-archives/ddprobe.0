Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2DA1D7995
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769994234; cv=none; b=nLXtzVfKDYA0tiRlP1OZTt7OipP5iAk2BvA3xJzoHME5af+nWFt/nNmjBvC6MkrfwuZ8wW+19jSn5XtToS8KJM9zpqec33F0k1n8FHyPHtrGKKz329ullzwPzqJ72t4P/1MVReXYN5E12jahMYpJy2ux9K/XgI9LyOCFMyLJK0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769994234; c=relaxed/simple;
	bh=xtuP+b+yHLg0PcRPo0pyw18kN0WYobbXYBdYAdw84sU=;
	h=To:Subject:From:Message-Id:Date; b=n6f4PlDpwSSGqqH6lDdOxOoJLBkIdjdbv4OoKF/GQn+p6AvM3xuGE9BMknnmlOKIofO3UAY7oR3wiFxrym0P/Y/GLf2MOYN+Qk+uUFOWLpGgb6o+Us2khazRnpBT0NbRXyx0hY2XUuqpguGJCN8InsAyqmKh9gJTdf3a5euLHlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LGHz2L5l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LGHz2L5l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9EADC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769994233;
	bh=xtuP+b+yHLg0PcRPo0pyw18kN0WYobbXYBdYAdw84sU=;
	h=To:Subject:From:Date:From;
	b=LGHz2L5lCkDepbihxdbcY7JiDhdIzLlpgK1Rt4EBZgiO3+n7DsjI+Di+faotzE0fC
	 CO4fdzr82W2iynY6QVzm5CP7qaujQqwMv+r2ZrLJMQztuIBfZMnRvrzJMYZJ0CU9Fo
	 kH77IEqIOLCSlRCIVLeuPGMH+gWHqlu1E2vhp7wqd6BlTv0m8dEYCYVK89jUsk5cJp
	 3ngCJsURgSoVA7ThksJwi7q0/Sfv5M5ZIEt4jvzzU2XZHcIZVqfm7d/HHahkQNH9h9
	 /qjNVitPhtxQsBQS0ylA+T2KKMpWqfCdye3TkD5czEro5IP36bCcTieO8L2Rgdehkv
	 t+ylXLaz/cCzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A76E6D172AB
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176999423361.24642.11328600980233642089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d04aacdd5af3760fa46f31bae12f90da1ed422e07fd059167597e4b40886c8f
Date: Mon, 02 Feb 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769994233
