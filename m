Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCDCC229B12
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767395033; cv=none; b=jiU4ihqtNx9n2tdrdUrwwXjwjqUwdg/SEwrP84iHoblUEcjEpQWK+18ATEDPtdhZUKPOFNtb1xeeeENZozXlUzaVZHGURxPYevQxsPnVVjfTVP+FMYtebJVLymCt/JDkOp9M0qcxAYytNi79kwOK4oKiqdqBS0mpvJ0t3AsHpYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767395033; c=relaxed/simple;
	bh=ck2ux74SqnTJMvzgc/0ix+j2yW1wSQ21lDOXTo4nilg=;
	h=To:Subject:From:Message-Id:Date; b=Axj0Sha8oWD+dNoMW0I1XjjoZoeiEXYY9msg+HZ9ghNGOszmYrlhTh6NeAHb5NGVdXLwMdmraV1s4zqpoqKR+Ir6TgnowKIy8dawFXWjkyKDqdt+fsBFOKRmgas+QttVm0L0rFp3QhgmQbkD/yqaxK8e14hMvt6tgOoqKvPpUvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DUhR9e7n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DUhR9e7n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6BD1C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767395033;
	bh=ck2ux74SqnTJMvzgc/0ix+j2yW1wSQ21lDOXTo4nilg=;
	h=To:Subject:From:Date:From;
	b=DUhR9e7njSSNQl+emvcEg++MgzJG/gkSKBDzMv60+Vju//enRlPIoP5MWvVTIDwGh
	 R6uywMvqmxUZqkH2ZKskjC1NtaJ4nSHkZJ0Rw57WyWUXwSgWbZ1cvGtGKueFq/ZVmT
	 nCgNEwLzmCDAABSCr8MXsAgzWtKs8enqitu+3IaiIrB/Lygr5PCzU/W4S4VkId4zPQ
	 0YXE8JRpZQ+Q9yOFNdt0WHwmLF/AT4ijfRsd/MpUpAJCWD5gIYq9mJLKPrSS6GOzoC
	 CBp2BGCAaKwFwpKrx5B3GItZQLI4ysHVo5YVoHBBMnUCgDD4VqAyFGFwO1BVCRM00v
	 2Ibj1pnwfTxrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C1BFA3755
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176739503358.25432.15285697486124958280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba2e4cf5777beb1546b07a19e0ede30774d6d6f2d3333b03b5f36d86ddd8777c
Date: Fri, 02 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767395033
