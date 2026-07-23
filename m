Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50CBC3B7763
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784818234; cv=none; b=IPLj3R/LvHYdO35/oEIa1Wbc0CzswW+9ny7AQLML76zOO67pNXBZUqeF2uYtBZqwnp/wgS7uU50L6iXWLXw+HzSR6fmBcIO2iDotqMFcdGEHc+/83HL35Hd22+M7CjvIvsN2VIZbar7iAwHBdPByTzxiWCAaBA58/nK+DqTvFDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784818234; c=relaxed/simple;
	bh=3oB2euQyXmv9bUbn38Az4C/zVL6p9iDQDRzFWxs5cLU=;
	h=To:Subject:From:Message-Id:Date; b=HE8PluEw4Hgl8Q6ZffNfcNqo11Ga3VTZJsP6Ywsf7MVYtZ0shkpY4Fw2UqvbMerV17dIXFY5ZGxo/RNuCU4nj7dmqJczWSFPa6Wahd1rf7DJmhw3CIpTp2Ye+P06EcE4VNkAuZ6W6g0h2+jx8I2wXaG9tzTcYCgHBB0qPlViRTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eRPBU+Qb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eRPBU+Qb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC10DC2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784818233;
	bh=3oB2euQyXmv9bUbn38Az4C/zVL6p9iDQDRzFWxs5cLU=;
	h=To:Subject:From:Date:From;
	b=eRPBU+QbMdqp4veTQoIxFJZIWzatOhTzUirlebsHdkS7oMFFO4sVz8ea52nNnguME
	 CE0pvupmsfHYWf+QDmjl6ijPcaaCgrdsEiYtZZmPIfY2gzWC2KDVfEnf0nNum8LCnF
	 9yhXZYN5K4t4HK7g1IKBrMrYrnMYEoPQoSq8FJh/M4WkRfvQQK8BElDvAmTV6ynb2b
	 ZbJh4i3nrMeq+b8OHwz8VVzgeD/Yv2lGsvClcdbyg+icGarMhSBDfIoNvOltnpy/AN
	 oZXXqGWUxP5qZIzo7nfW/zcQ+suYWWZA35jOEMgtGz85eCPMpWPz71PHrQqM/QGaJt
	 iAEeobJNzaGZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9308C531D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178481823368.32732.12929965578068866191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61490aa5297cee3e2ff95464274705baf78805676549865a53da922b6835e4ec
Date: Thu, 23 Jul 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784818233
