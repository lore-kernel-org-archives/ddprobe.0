Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272B43016F4
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761208794; cv=none; b=bnbPNMFn1J33F9tlHcWLnz7KeUG7GFlVMbyga+3G9Oq+u+yieV+eRKJBFgxO+19OagQpNT4Pa/2f9e14S60c0l3z7Xtr9tpnP3Jqf22ojiv1DXo/fFCIrIx32/OGyVQ5yuTgZI77UDPQzDo20Cj67EnYbDtTsxr0ITUNm/i3gvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761208794; c=relaxed/simple;
	bh=5uajf88M3Hvg1mWPJetBjus4IeHsXFc79R7l/qbAfnc=;
	h=To:Subject:From:Message-Id:Date; b=rU7yhN2WCQ29X6UEb7tk6vK7LHCXO7xSNDV144aRFfks2Yfbux8AvlHEuDJR06ePEGQhxWUpmH7UfN3OU0Hd5PVs2bTqYfwIBNYwFTD/bD0Fjyg7mWeJLgDEQouZXkaea3hZwhuy6A9++ddYP7JyR52Llv2LLFJ5atlMs1/M7iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAbmPbUf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAbmPbUf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AEFC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761208793;
	bh=5uajf88M3Hvg1mWPJetBjus4IeHsXFc79R7l/qbAfnc=;
	h=To:Subject:From:Date:From;
	b=rAbmPbUfvvWkRvVhlqgt9E8zOFUwIVOjahRTTP8xjYueWKM/KNyfjSIOHIQekUWBe
	 ZqmZ9BWuRNHjA3Gb+O5JfYyaA8MIG1mpxCykoGASa+6rBhYN+9MQ2zg+Zaj60V6Hin
	 bCOU0ke2ibdgneITdkkVJhX62db6reCGLLkx/qXyakKNqvTjQm7MtWtpfdlRAEJKjD
	 kfjhDdrWlXdsDYo+oScBz2kn/8qZEsE7/I3MHhWdbfHP4Jq4YjzkxlmJwTbKs8cORb
	 76QUR3J8T/6nb78Jsja8VlnU0DrFx8qTSSlVeWuJWMmIv7HmlShFhFFYVW26Ussl5p
	 1xNUlmvvqNYfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90599CCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176120879358.15110.2849386513215827056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d490c0f56e59dc6751126e96a780243c41354bf2bdd1ff25a7276c16e59be98b
Date: Thu, 23 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761208793
