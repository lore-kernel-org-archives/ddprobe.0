Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1549C2C3244
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 23:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763682114; cv=none; b=nDPsKteMKiuKbNdc8f8uadjhnUWcQhBkj2hFgqMzyAFR0vCAx+xTVY2RcKQkOKenpiLGpPhYSXmlrnWJuHOW7EYjWhQB2gzYV/trSXDHI0bNVJFb3ErxLMpWjrsrJ+nlk9KnRXZcg/YwYYTLAauXI0awsc/ZDv/NhHLFbAUHXME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763682114; c=relaxed/simple;
	bh=RfD8TqFq5fhVxDp2p8P0uuZCmifFSsK92EEVav7v+JA=;
	h=To:Subject:From:Message-Id:Date; b=uRm5WwyGCvboj3sh/73af1KsDFShKUxa4jGxhsxgyvtERgchjDzmGT69qEbiXFDQuAZ4i2/XkRpYigHP1ZkZ2YUs/BOryXQJW7gWUIXRxsNBG8QQRdXsZ9rq1suUuON39gMCtb65Vh/qv8SesURqmuwMD4LIK9kVVAUcWo6sX5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qUNvTk83; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qUNvTk83"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54C1C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 23:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763682113;
	bh=RfD8TqFq5fhVxDp2p8P0uuZCmifFSsK92EEVav7v+JA=;
	h=To:Subject:From:Date:From;
	b=qUNvTk83hMN1fEzIscJsvm0nS57pWd4ndbnxAApjmQ4DViX2Bsvh/f/ZJqa3VGSch
	 0vSakmIuZNp4LOcurNeIKCpjsr7do10UfuA7IQOLmktO4iJ2iDQQoiUH62D9349AIe
	 ohpCMuV4v8RRofB4+ia6B38mqRlTNH5UBywj5W//Xv/DnP5v4NCWAC/vQAECy6pRwa
	 V4ncRstCqvpfwIQXTQRnIdoSiWEezXMxXXbg1CMSI6T8D8v0gWNB7MAob0NmmFEfJE
	 t76HvbHt7Kd2qh1MWsYqqYvkm818rfCZIx9GCA62NBgKDTM7GpdXKqK23N0lDpJHSF
	 7644gUB8smhqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C74CFA459
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 23:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176368211358.10869.6824412970391071396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d02911eb863207923e5a3ad2e1b124f6ba6dfbd0161fe56a7420021b9431b15a
Date: Thu, 20 Nov 2025 23:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763682113
