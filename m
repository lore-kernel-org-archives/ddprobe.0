Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3199E2459E7
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757405394; cv=none; b=qULmFDc83pvpEADfJH2A7y+dhnZ+VrQ2rsbet25ODG9tr7ynntsREr+uTBSRfQnfebgEt4WL9JDAWIn2Z0ZVGCT50LkqSZeDRgtS+t8iQPq/1bTFCtbXyOuo3QmJzgkC9XbEyrQkb/fCot8Z0KfERoh8SM3jRmxi7xoNyEG5ryE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757405394; c=relaxed/simple;
	bh=6x+7eFfra0wXv+WLaM35dNNPrrBmHuUpmm2RQXSFw1o=;
	h=To:Subject:From:Message-Id:Date; b=ObGnU7apIspgpdQu2Fwym8m5EewRaeuZ8fb7jej88wMYUZdC9CsvUBflJKyRUIOV+7D00XIortGkZfJ8NCAsWZ6xTFpWR3gm1cCi1ZU32AXFZ+v0c6cYn2EWHRlmtU6HtCxAiPvoeBNM5CmP/8bMl5dEKGh1+ws8JdXyy3mOkTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drrhl/FS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drrhl/FS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A417FC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757405393;
	bh=6x+7eFfra0wXv+WLaM35dNNPrrBmHuUpmm2RQXSFw1o=;
	h=To:Subject:From:Date:From;
	b=drrhl/FSYchToBEIdMRfyO1PHIpksaBmOXgbbGPmGTN4kcbKN4ElzzqjRaNuJZHTX
	 Ohq3zhkwATub9Vh6ehcfADZIVMSUL/tnyvmv7W+tdAS1pC/R5i7txo/5JcUCCxtw0W
	 yjCpbTzPSnoVqerTXVN6xtfp3xpOqbI9o47HC+orrX+GwKf3pdsbZcGLUCsSvwh4TO
	 WJSHnog4I9YOxOAMXj7mucBm69a6Zsqdu3sxYkVy+q2TpC5RgXzIFm09hXUGC4m8K/
	 zuuxiUMOVuxKTa3AmllUb6HBn1SiNkeN+BDmNIp7xH/ykVnnghyQgWmiSRkZLTvkjc
	 /D9+9G3YIujcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91825CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175740539358.23456.15038175347389680056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7fb734c9c70308915f9f7b9d5271beed071731da9cb518f595af428ccbcb74e
Date: Tue, 09 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757405393
