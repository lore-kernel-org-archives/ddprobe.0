Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF801EB5F8
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766541234; cv=none; b=PnOUqws9zoAm8bC3rJE5p+BSTs1jy6XYbHXNqSDoLgoT5xIk9QXqveSP41OgxLE8TnEB8DqSOtyqyDF3AzL87aPEPhKPZxZUA7zd2b8FlgC6UwbyrEelwd2g5u83O+KoiDz0QvQZEj8JklEHMH/2OL2LKuLKzaavZSvuXmTjh9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766541234; c=relaxed/simple;
	bh=P3/Iu0YCLG4noTScsg7Jw2eb3J+6MzPLZi9yQ9wpAas=;
	h=To:Subject:From:Message-Id:Date; b=ILWzTSCRMAqIp04gn+qSLPCyrMo8Z5ERdgwRuBKJGPuPzfjWcr8HRpjzl9OzUwA2e/7ymETxhMiM/p2dH0HHaOV3ienfNu3akQYydVpXYTdF/EAjdzCba7zEIYpsBpy7s/HZjc7ZX5qdrUbFNPvqe9V0aYe3ua6TYT2B6otnHQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SRx2cuzU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SRx2cuzU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3793C113D0
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766541233;
	bh=P3/Iu0YCLG4noTScsg7Jw2eb3J+6MzPLZi9yQ9wpAas=;
	h=To:Subject:From:Date:From;
	b=SRx2cuzU9o7SrMf8KcBgnw/6LGNanx4X8thPZFKA3r8FhcN9JnJbSpkXqZiQOB9EM
	 L2uFmYX2p1zb4ojURJkRwEcoEXCxTo+zfIoWg+tig/l0TTWXtdTxfCCfCRfcMaicai
	 1rKze8eNQ03AHSKjM9Hi/YBEdzLy6nCDM13F7biZy7VgxlF2AmsF7e65GGyDbFbN3a
	 SeMbHlxmIXPf1/R9fwZKAMX+TWiqssH+sr9tD+Xu2ClPrShDhVkWgRyG3GefIRkn3A
	 5qtSbWgs5yhI2v6Bp0m1wKF92O4NCSznmIWMERIL2jdFkZd2AIhNUKJ4cjNAga28Lb
	 3qmOdeBnZGGCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9285AE74900
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176654123357.23026.14440046256432491089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f60d41f9c07e88f8d85957bcf6bbcbee39f62a55f1ec63201c360d57b1d401b
Date: Wed, 24 Dec 2025 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766541233
