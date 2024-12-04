Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45E6A1DA5F
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733291754; cv=none; b=HwXOx1PiDNjIt1HScfk27L91KdpNFpSpeqdB9ir64zlmwUrb29tVLmKU2fnLowARZkq7naYsTBg0T32J1xvbsH0wuyaIPj0OJWtOhHSGaGDEy9X2lB2Oeig7SBFPl/q3FaMxtyK/LSsDln0oKHlwMfxTLbUfNYu4jDMWZ962CA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733291754; c=relaxed/simple;
	bh=zmRX8wN/15RaBCWr2Sqqfn9Iu7CGrB8qqiyyqdeJ4c8=;
	h=To:Subject:From:Message-Id:Date; b=BlZLT6OOp1zNd5Ueui6v7tZxI2zLrs8YrEuFU6dpLqANrqnAHDBUyNona+l+iccarz7ANYNVdjRmsIBBTeleCp3s7aJZ4ByAOIg/+rdKe20/kuGHqo6C+ybC+LjhII/1y9XMlipPCvcS26ORDnLHipWVxOUg+MJSHL8NxtMkkMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aW9gU0kb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aW9gU0kb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC69FC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733291753;
	bh=zmRX8wN/15RaBCWr2Sqqfn9Iu7CGrB8qqiyyqdeJ4c8=;
	h=To:Subject:From:Date:From;
	b=aW9gU0kbWxhkBqT2thQ+3jvnJ8liH8ijM40OYVrKuLzbtiXlkUEwLXHIksrk8N0fh
	 VDRVES6FhkEw/ZgSpFfvZpYpWkVr5fxa+Wcn6wZJY2tmBI44Cg4EEEo+2We/3JHenM
	 TXE8V9Z6zy0atTMjJxwa2Rm5yYV6wHOT7pGSrQg93gUoQ3Pvzk3YbRVlGv5VJbklkI
	 h9p+RylU2gYT/SxMj1OxmEQYPsa9bOWEtr/VGM+1xy72sVVnD2nLLwfmxWS7aF9dQA
	 cI0ur+oPHTGz0f0gTN20DFc3L4nq3pq6tZqU2ZSF77YPEBhu2Soa1s5iKID9pA8wcd
	 Ljc0MQLTVo/vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6936E7716B
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173329175365.12025.9051520496592863346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbb5e47b25511a537d6301f6b3e511955b038a07aef31de4dcead68c7bfdd140
Date: Wed, 04 Dec 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733291753
