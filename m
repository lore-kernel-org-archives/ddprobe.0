Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A7B30BBA4
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763114394; cv=none; b=sD17PXw0vM6Sw5KgzhJ5XDxhjrLa+SkK0SVGj6r0+D8H3tNhtEoNK48qNtO6FKRsTScboWlp7nzhUMr++1/ltLC7yu3AHRrmR7Oc9JSTHu0bdIbMsyQSzNPEgo81UAYjRpAXELiTPpc0PK5Lqwh3U4vPJhVT9qlFqQ31p3Az3w4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763114394; c=relaxed/simple;
	bh=Qshvb3jQf+dv2oqJ2gYXVrc6YR9nS6ilSve1Ax25sUQ=;
	h=To:Subject:From:Message-Id:Date; b=Y4UFxNmBUHIKDOsssH0RRAYMPSSRVQV5Bga32MNeKzixqCTPrjRFt704LLeZCHsM3+kKOafJPubP3TdoHyf/ezDXrnvLNvaalksj3BYygN6itKZFVds4CKaC1czizo02k8XhfCgmXlTqGg62X8OzJ8IJDBczKtPhtYCYNhxztLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TS61e6YH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TS61e6YH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD8FC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763114393;
	bh=Qshvb3jQf+dv2oqJ2gYXVrc6YR9nS6ilSve1Ax25sUQ=;
	h=To:Subject:From:Date:From;
	b=TS61e6YHWOtRfD06vOXOvml/jhDwrmEWIqcwE6Q2+dCIgIewXL4P7vDIgO7c+QIjr
	 UJwCgDT7UvkQhnB8KdgHSUUGFMITDdfCmCYvetVIoEqCoD9c+DMWq04/yTSQVf5Z35
	 67b+jdJhe8l9RFFb6jetPwFh8WoKJNR+jgxUPDgsD2wX5bdkYgw3W1v86rH7KNf2yF
	 wu01EMbyZH+YRcHVIRIBQJGPXdRJ4igD0dx5z32K1QIDPX26hIBNOsBRc2iLNh9iMF
	 6IRQ0ZMSnIUZCP3JpanqnWIZRmMlsgMVbcGZeFTIKPccr3E2jNktM0bmxFppL9+3ft
	 BD29HVgrOCjZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E3BFCE7AA3
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176311439363.6881.9717480819730332703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3bd33c61be457bb538d7fb944e1ebcbc2192c4b603b1dfaf48a07aea35501128
Date: Fri, 14 Nov 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763114393
