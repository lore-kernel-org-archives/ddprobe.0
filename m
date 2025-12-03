Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E21D284B25
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 22:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764800574; cv=none; b=UmG7wJkRMaUfIA2a2wUS7hyEW9zcohaUKUyR9rxj6RPz4uU58MbiKAcRbsoT11iC2suUThagpl8hMHxEbf9AD4EI8bdw/XKd/FpgnT8Q59WA4hoaK5qulOG+SBf+sf1afdj4jVf0qDps5WMKv5GegYT2Waw9B0Y0f1oCB43xDls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764800574; c=relaxed/simple;
	bh=6u9hNmNaFOUkhl9sz5weL7PnuQdXtuzW6ygFC9uNo+I=;
	h=To:Subject:From:Message-Id:Date; b=MU6vW4SSpGH9vNDm44TySFvSjJYQCQGdorQFX58fYgOiLGG+YheGFIwcPezxkX/um10OehA/luEYf4FpEatb620dFy5CazO8AdSI7G+bYl+/NujeV6OiF0x6qCx5bDixCr+G54KDv3hZKtTZfNEmy+KRB6zsBcBNWbr27QFnA0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t9Ja9Jqx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t9Ja9Jqx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45FAC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 22:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764800573;
	bh=6u9hNmNaFOUkhl9sz5weL7PnuQdXtuzW6ygFC9uNo+I=;
	h=To:Subject:From:Date:From;
	b=t9Ja9JqxIvg8q3VaLdi9s39kyGnZi1pD2hiA1e22LLvURTHCVPF0NK+AdtE3I+2It
	 xfwWJtiQToTcn8T5JR65dTZtc6/+RYdM0UV0W84XNFrVe8Si2LX9wEbyljTZmduVIK
	 UE3PSr31BAyN4479DhZVcOOdlVRSpmwIBtNq0ykP47kIwl+dMBO0AfogaFb21P8xx+
	 0iIjOyqdUwYBK9U0vpP85p1w3B6QWtDSvfF17vCaGI1q4hhb6SDcyNMjs+0DkgmsSX
	 ZAmzdVfZioxJcCmzA/g3oX5oc71YIfnvh2oIegabDe3VRwCudK84SmfLHPOdwsQuK9
	 Go4kl4LiCTvQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AACD1CDA4
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 22:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176480057358.4433.16947239632477481145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f6c0bea8454167c9ff34ad2c1ab80586075f7c50b7abc672c8bdb262aaf497
Date: Wed, 03 Dec 2025 22:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764800573
