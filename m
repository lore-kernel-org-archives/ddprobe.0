Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ABF8539C
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 06:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714803143; cv=none; b=Ti7ySf6pRJTd1MzKfIjk5/jVpy5+pwNIZDczCZalOOWp9X5F9Q+lfpn+O2ihinUFviP6RKiCKgHOarYxZXvCR1AHo4KxX/0sdadzGSZorme5MTDwoPXaek1mXm+yF/6NMXzIBMJT5N+Otuk03bHA9O/MgOlQfH4y/RK9opposOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714803143; c=relaxed/simple;
	bh=nOJ6VslCaQnfb6O/62DrjOtBAZDUMx0m1oM2C5YP7yE=;
	h=To:Subject:From:Message-Id:Date; b=NfpmsDRjtR7tLJRdkCKlWJCQ2AOnqshTsD5R4MucOzFVsn7l2hkSfE16dYy0RU26Fw/q7YAyBaDYQPmpJVz3OzFxFja2lCdwP1dKd41trGzewHa7xo8UOvGxAjxfN0YIirsPJ/P1m2IGiQWM3ar8MfOuq9OEJPFnhByQhCapAUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W939xrU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W939xrU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA3DC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 06:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714803142;
	bh=nOJ6VslCaQnfb6O/62DrjOtBAZDUMx0m1oM2C5YP7yE=;
	h=To:Subject:From:Date:From;
	b=W939xrU+SzqJTQdk61dzbkkiq2A6UrMevNx+Zw3EGCbP3uy0NxYQHem0TIsI9+VSE
	 Y/VDW7gTAEJWSTTFnEvr/j0uMfEuRGEFli72VrGkm25BVot2OIwqAn+S/6sZp0dEun
	 1bwIeC0owRtQmN+9/ca1x0mbFA2Q8oqElf6kLfyGuEI3hXlWvCQW35lXcRxCQlRZzI
	 MP3GB8xLqTBBJdIvdYWJrXGgYeozWE/rnpB1wqgldGvEjvUjCMudpwsKTUCZ5DVQWF
	 YRSrcNFriz5sll/5xOQNo8YyB69KjJEAQ15d4ElWCh/Rw/qxUFX4Gwwh0+2Ufm4vXj
	 vfRGfvEndYDDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE93AC4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 06:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171480314277.23013.5657917871103439869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b29aefa0b20df9047163f2a3ca9a3f83a6f1414df20212d5d11e808face3d081
Date: Sat, 04 May 2024 06:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714803142
