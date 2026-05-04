Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E5A1D6195
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777873654; cv=none; b=Xb+hjCcxwGcqpticAhidKhL3+opSdjoFdz4rJ982NOm+t+DtO4/GBRndY7CAJSmA62beKN3KLeq3YMemNvH0srYBNNTvqZHAJHanrzkIZw24ufQtmxqinxlJdxX/zafN5gtrBo8pDNjtUV6u3ZsQI/6iuBxxiuW7PxnKfjJeG5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777873654; c=relaxed/simple;
	bh=25yOPXbAgCJi4OcErcUonYnvHIzAoRRv8u0pQei0zhg=;
	h=To:Subject:From:Message-Id:Date; b=IiveCpYVynmO2vzrH2zvzOk28h6Qe4RPj0dICGRVK9gvG09HJJFobPWbDMTn3jMRlM5DpMti6zJ9XHGy7X7e9Dtvla0RZd5Vh4grY/f/AF++whaw3GFTUv1RgPZxrOaXA0fpC2BP+Yiqtn99rd9Oq4JXtT2eDjAtqvduzwwLUKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=neP+jDvA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neP+jDvA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAEC4C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777873653;
	bh=25yOPXbAgCJi4OcErcUonYnvHIzAoRRv8u0pQei0zhg=;
	h=To:Subject:From:Date:From;
	b=neP+jDvAvXilHMNhBTD77yeoI5tNj0JbxU+Ua/txC44F3mwu2drvrsEkMGvs9FH9u
	 Kj5+615pTmG3fg5hMlp60UYtIDOC/Vn+iFYAh/GzdqH4ynmHLZkpwsRJyQ5WTx9eaq
	 TnH/I/rsan/3E/nE3yV0X94LFFJn27k1y/rUaocEtlw3KEq79xraKF8a7yOVd0WG8R
	 07EUBWeaDTBDI2lBE2MphIsj92CibmIc3k3uotctAbi/nw3W0jl0piMz+Z6sluoap4
	 AnIcJxV4NtfOvfWZJ7Hg8/6vBTqd/NTTFCyaAS8Obj7NLDLhirtRdVkfVCQRwsqF5E
	 rdDGmevaIG78Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96A4CD3423
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177787365368.9804.17375764830381950369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 339f2326c7da7c1ab4686ae556ae37de0d5dd4d468765f3eb1034a413b5c81f6
Date: Mon, 04 May 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777873653
