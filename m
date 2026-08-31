Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426C037C92C
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788219634; cv=none; b=RXnOphwyCdkHpumLSitkVyw9tyvSLQxsb7BpyBo6o83pjvbJkwz5NUggp6jkyCLi1dgAxuclm9q9PqGLmfnHBp5gUO5rmwfz43uO6nnsRkcibtStEXj6iDpklJfU9zT3cR7InlievuVuG5AU/ENVyIrPtWgDPi1kMx+fE9acOUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788219634; c=relaxed/simple;
	bh=NNUew5Z/byAWoHmhxxtjcBgfDgxBvLFurcztkYkLglI=;
	h=To:Subject:From:Message-Id:Date; b=YgBMN+pkmb9EUoX4A+/Fqd/seato9ZM2gcRgHeABjFak3dVGbP35iwAXzgy0cZFMMaDxjb01aLQswbkglXPajIw72pCDCHAMLpLmhO5VL43asAhol6WpJd57M8mGcwI6p2Nrv4NIrQIsAg78C6NXgkAqHRbkQNfV3+NPE3KoGlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQeHWcEG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQeHWcEG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD854C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788219633;
	bh=NNUew5Z/byAWoHmhxxtjcBgfDgxBvLFurcztkYkLglI=;
	h=To:Subject:From:Date:From;
	b=YQeHWcEGZneb/uNbCmoBiDX5awOBAzKHB6BbaMmamG9NvBxsialEuoTxXV38nCPpS
	 8sOKuq4VH5DNtG/ftbI8NThF4vfX92xvZKDE+4dLb9V1AanSx9FBMlK9B2sCIEbyGr
	 LPrJKz886hGA48x5cw02SMLoO79HljUJ0OiOBvSTZ2+Nx1d9RqeJlQ8vH9HpvRCrSx
	 MYxomZSfqIDyiWuhxP/D4vROSIRlldl8vUSi5BZqeARJ967oO4DpABbgcJ0rS3dmu8
	 ZEe5XyQPyROWf4CvuPb4G0IcmexCN2Aqd1t/GHxStsjL2O1MsoCNGoJvDO9Ums7nxZ
	 fhcsaH5Yp5T1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BCBC61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178821963368.6760.15359270896274369725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b25db92dae58163f2e07d1a9b1ed9f76afd651b2be5ccba92ef68f97e5b7351
Date: Mon, 31 Aug 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788219633
