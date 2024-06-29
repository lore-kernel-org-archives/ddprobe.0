Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76ABF1C680
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 02:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719629663; cv=none; b=ulx0326ipxU295ZiLcd4I5aLbF7nzmIoCcndlsdtzdij7dg+0ktBfPn35c65s5T+Y+QCZLM8s65PNmHP+HqGmxmEu1s/Kq807e4hR+i7ajvNr2ZFZqPdltOcL7nlT3mYA/ot09CaN5k+O2CxKPO+SUpnZWWRWbdhzPihEsQ+trg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719629663; c=relaxed/simple;
	bh=J0Vzlp9mJDCpnjGa0CvTss7p+6uYoily8Z8d+LWr1eU=;
	h=To:Subject:From:Message-Id:Date; b=qmYovLDblgyUMZq9kTA7GFFlv8w2WG8WV0CSJSQbRx+Wbl1VIbLNRBGRqkCurtCxnWtvwDijkE28k9wjesmhtQC/xycukaXnVUIkXvMSgXH9Y/cYNylHuXYx8G8ex57eg/hMXjN6SVDl5e2QC4f3c+hR5w/r96KX7LGqm2aLUiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=clPGxR71; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="clPGxR71"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECD6EC116B1
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 02:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719629663;
	bh=J0Vzlp9mJDCpnjGa0CvTss7p+6uYoily8Z8d+LWr1eU=;
	h=To:Subject:From:Date:From;
	b=clPGxR71j3igNmQ1Se393+WIlvGdYdcb7iL1ggxJ3aQt70gv+SNhBK6lwmyo9Dduq
	 Wwn4moG7oMKgAmiuHwucbH+/SnkXuoL1j+Q13AJfjej7p96ZS9d5KBR4T/bu3+MtiW
	 QIxfQdczrx1J+oIISD6QNNlpF+s3apOtvIhDoJqDTIQJfd0rvwq8SDBgmEQMMLt+0m
	 aaJ35WFv46JY7BTnG+zuBNDlcTOIQJ8TEXH1L959Grr97JGfsyeqJyUJ1zlxs+gcGW
	 IHB2GOZuHcD7HLfdq16HucYSHiea3D0ENUJN1UHHzPiJS3K1CnHPEuqlOff1AomPB9
	 bTqixjdzIgtPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8627C2BD09
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 02:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171962966284.21499.13373182220995909185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78cf687c3fdbb5d14423b58b9a0ca392c21bc5c0c430f5e3632874a715d27ba
Date: Sat, 29 Jun 2024 02:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719629662
