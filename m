Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4009A233151
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747849194; cv=none; b=ABFEMt/t20jRhVqJw921FHnQaz1aJi+bTPiKix4DZBaM9CjU001twR49VmAEkcxrbUGkeRDlW+ZBTE8OLXSd7Dz4yPMu1TVFLNZhcRvGIlEeSfVbGjg4y6ZlVv6xqVQ8OCV+C2Yq783rrwO25lsFmV2KQ78goCsCYHZBtjBaOwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747849194; c=relaxed/simple;
	bh=SBQ43YHUfzOv44sIoirzT6GHm29VEJiIlBViaKGXMA0=;
	h=To:Subject:From:Message-Id:Date; b=QU7HOKdQ5eCsc/hE4HugCljqod/eJPcNDqOQuixx9ttscyzOrgLv8ShcIW8+yW3eTAGSTqt2fPxwzwAJFNXp8oZ+uDQumXKXXrzQ3IbLNgA/Z8AfQRTsNhgK5SDuZ1kPbFrA+zBiKk12Zn6DuMe8lbH7EcwCvNePDseyevbOgo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfYLOMyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfYLOMyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12F2C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747849193;
	bh=SBQ43YHUfzOv44sIoirzT6GHm29VEJiIlBViaKGXMA0=;
	h=To:Subject:From:Date:From;
	b=dfYLOMyuqMxqkAS+uPVjXeyAG+lJatcPXHrUQsGICnG4rE+ZAA/0P6skcpHuLMmZx
	 gKvCMfQu89OzXvKKouYKj0riGYEfvLxgRxWUCbuugYMokVkKDe1bEEYfmMIVHPiGBu
	 zc74SL/JTgdO3v76hODJb1pJOwYSNjuxrIPexS/VhCxv9eaYKkeox+8dYpgmH46MmJ
	 9LTHjH/5PstE3OgzrWM24f5kN9aVNOSS6B4So9/7QXjkboADKnFQ14hzeh1MGAPpmo
	 BmpQ+craPZOIWLLmBIaKg9v7qcqXU41Y8T6ioK4Y4LdhXT2Zo3A6ius1qUzlIPrvP0
	 oZOM5uhDdV3qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8D7C54E71
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174784919357.9180.2844320601561514054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f9212e20d28051407a10bddf828e0a837e3c8a3628c69681c7a4e30e9f8f873
Date: Wed, 21 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747849193
