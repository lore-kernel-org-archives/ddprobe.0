Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ED011E49F
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748312394; cv=none; b=igr+pLAOJEwHDLdUVuxdeKWAdRAht8UmWfd+6fHkn2vgtpHv3fIJnqQgsMPEGcsQ5jfb5eC/9Tz1BRX0N+LDYOuuRDLEsj0LnQngGs1UsehG+fiZ6aayV9ep40b6J8chb3gb9DCUnwKAXR263BB0k0uNJmvtweSVlTLr8TVTuvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748312394; c=relaxed/simple;
	bh=Zd5YBwBesi9vUUGgecMS0ialTur5Lre2cKny4V6rDtg=;
	h=To:Subject:From:Message-Id:Date; b=ogRWuaVnxtfuQ4838MTVM3u/Lh/prCdzyZBAspQJHFcNtWOszJfzlbzuIozUF4m4C6fTUYyglOyLtLFRe4h21mz4u5okCjHc6SdS/sFMs78AiFfHV5abAXzYhXLPQEQnSb4dC9f86aEpFT++rZTHh6G9QeaUNEe1Pl/mYved0LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pvWhL4qM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pvWhL4qM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF2DC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748312393;
	bh=Zd5YBwBesi9vUUGgecMS0ialTur5Lre2cKny4V6rDtg=;
	h=To:Subject:From:Date:From;
	b=pvWhL4qMmr6Iku45lwOuPiKB5NOOJXJNWpvhiSKWOhpo7i0ph26XxAPHrM6uCa3Ba
	 MrrTyao+vHlOnb9BOXZQ4aQbc2qftp4Tpa9bVLVYtl6t/00tbg202VhUZsTGB++yuA
	 2HBSMVzr4odJy95B1vk6LKjMtwFE2UTCFckkziYVEFlmnSlgNUbcq27nCxAfm47b5h
	 dUV0yXayd/hRxQjB9xsSIiEyuCfA4y0knjYtbyQcC/vR5gPJBCKGV1AiArnPaPA70a
	 XLGYd2Sg/93dTKSQkOEsKOQ4Qm7ylshXXdxgSozNhxAGjs3zYXbG0tmR9GLMdEh+mE
	 K1sVPfICQAj8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F120C54FB3
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174831239357.7852.8429040504387649578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9652369ea739cbd8a4f96216e1826f6cd643757e99562eae6f0ec98b3d7f1852
Date: Tue, 27 May 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748312393
