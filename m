Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0632E27470
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757726395; cv=none; b=LsKjZqQELhw0Ogck0eNuZzwQJE47VCSVf5iipSyHDOwIdEO6b1qmR4vVQR0ownTIZzSOQ8S3YKLbeuE8d4sP5+aZQnb68ndGAS85edSkrFlfm36QhAZh3+gbOskUgxsfc00uDlZZNjf077I7+No7+WC5i4b+3w8bByajmzYO6GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757726395; c=relaxed/simple;
	bh=bmp4utilcfd1B+oiwo36R8rZ0JBL4oRSBo+khSlLKIE=;
	h=To:Subject:From:Message-Id:Date; b=CUD/JPpA3IToFyVFp4Sd74C9R5j8oSl5dAySbeQLRSQtZw1lRwotvbf1daKNEEtm/DKMmGrI7boF/wfG68OXJPCgKqf6bkXbnGw0/BMCMFb4fz5241ogzp+hMauyXdKytdvu4sOeyJb/Ec2YpRrqPhrLJqkjIPmumypFYphds2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=euAi0pMC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="euAi0pMC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0B2C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757726393;
	bh=bmp4utilcfd1B+oiwo36R8rZ0JBL4oRSBo+khSlLKIE=;
	h=To:Subject:From:Date:From;
	b=euAi0pMC/PY1ItS3K284c+j/qIDtRuHbgV1rWB7QtIr/0KYbKIwBsRSPUjdEYOrtD
	 JtgE5+ok6DkUc9bLRcdF74ErJOdBmJd4RfAsXFtU3gTZ++90a/f6AAZYLoSgwbB3JB
	 C9F/AGqTnue8McAZ/GVrvjb6vig9yTjPtVGJytoqtsDPeBHyXJ9bkyBBarOjCdlVT5
	 CsZwDiBRTs8jidlNrSJDSbVAi6DQGmJROnMYFD7GruRQ+eY85Cn54m3F82t8PF2BTx
	 tIdUsDH4XHXbpU33SQRMJSFDtygd9Ko3TQQDzsq7aR7ye840CwdIixow9izLX4GTVw
	 6hZefbuG7bK/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90069CA101F
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175772639358.26466.14904978964045273380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64e1d231de9cec207d091354ed830cbfabdf5970bacd73782c3fcd3e39424479
Date: Sat, 13 Sep 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757726393
