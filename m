Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278D41FF1A5
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736355954; cv=none; b=Nk5Mw9Eajlf46XolIs2FmzYJcJopclHyGGFOoIDO9f3FBkqjb7zSnhR+2k9KzyzOm7TSrS0cBqBmUkBfgb9W9UWYcnoDv/HD6TVflN4vyVbL72qnu1uO1hA7jsWthk1T3IKCl7fS+gDBVm9nvpYsUCmn1nVDny6loOSKFyrmTZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736355954; c=relaxed/simple;
	bh=JGjU0UAZk1PPb516qbluusuAlzHRrxIBnIMQ8ElTkwQ=;
	h=To:Subject:From:Message-Id:Date; b=bWin5Gz0rPkourdK47Mbtavhbn+Z9PUC4Brpel8rlQuJ7S3xQXMk2khzI3TOb+Jy7wNdXiXuMbwnziKlBvGDDmS07jgeyLtkRDSHwB45p60aNPkCLV86B2QMcVNcvqExe2XJfzNSLHW4iXo3vFCLBmqUOeNFLycYB44wzEasNMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJTywt1I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJTywt1I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE6A2C4CED3
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736355953;
	bh=JGjU0UAZk1PPb516qbluusuAlzHRrxIBnIMQ8ElTkwQ=;
	h=To:Subject:From:Date:From;
	b=CJTywt1IOTCJNclPBki8dTgNl/8eF0BezeiEO+eelY4DRj68ELbw4KwHDVuTrMTmF
	 KjFC01X131F4sII+V5tQ5nrdN+F88tD4cGbvYaQQf+Ksk+CO/QqsYk+TgFp5Cjdxc2
	 naVdXQoqk3uVGB0sleUtLn7bTB1pxXOBP+nr9T32owo7SdFAfuQeM7iU9WyLjrst7e
	 Vw1hLAi2T21yGavCV34JAaudKx0zIFX75q24nw4jv2upDDV8wKISFC+wRMMOCbxmTg
	 lMUJiB5yG+8Ehgr2ibBxceqgjfOQazVkDV7jZi8Oi2kBOPqbKI907yUu7ZT2TsOrHh
	 psZlUvwjJcOUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A331E77188
	for <ddprobe@lists.linux.dev>; Wed,  8 Jan 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173635595362.15718.16560428060482218259.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf23e4a7f259195b95d96f547d1112744168e9213e3a58cf4718dddd4463997e
Date: Wed, 08 Jan 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736355953
