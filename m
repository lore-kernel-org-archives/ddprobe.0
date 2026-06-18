Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2508533D4F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 21:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781817994; cv=none; b=kyyYgwoyzmOqnm5I4G2Y2T3TonKJ41uCWYCU28mRj8Cz1N4pW7qGmSK5IxTzN+qvg6BHtFvHJ5rZZJ7HvJTsb1WxjmIAMlVF6bdSouRhr/udlcv+GUjgpFbiO2OSf+3cOKaMoMXvqb6cawMeC7PJWmPwagtAaGIT0EW1TduIXo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781817994; c=relaxed/simple;
	bh=zEJ5Y2e6YYz3M7ZQ909BHokQGWnIJmkNkwNyO0Y/7ow=;
	h=To:Subject:From:Message-Id:Date; b=SwzhBRpRQ84dS7MBYkDUd77D1HdN11FIhS8NdAuZoX9VXDhrF9ee7fXYqjBQIgtEvXLhiMhnVM6y4WXSd5KkaB5CFTojUYbpbDB6mjdMX9QKq8mdEDcV/4MHJtadEgH5ekOheJsjO/6jLtLNUayqVLm4aU9PXS3icmfnJxYwCec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kn8MMYJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kn8MMYJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5937C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 21:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781817993;
	bh=zEJ5Y2e6YYz3M7ZQ909BHokQGWnIJmkNkwNyO0Y/7ow=;
	h=To:Subject:From:Date:From;
	b=Kn8MMYJLYnrTRTvrR9FubFlSVUQSXRSPGFDNDRHWxzlJphshqav5jtfqeRzwyHvBj
	 GVRIfjJGo7IbVk5P/lN2GK0QkiOlIsAaW78Tgm4s94FgY9Z4OhGVp7ujVMRD4EJvJ6
	 grahkhtbpyPZ1tbrbs/3aI6XbDyuOF6QshL54W36h7XXJAHkri2mILw6MJyEy6ZJZP
	 dggse6NKE//X5PJe2SemFFbb7Sh9AccjRO+z6Ycemc7lWpemeW7SYBcVbQY/TRKLRg
	 h7/o0z9wiSBpzaN8TTtZgdtmN2StQmfyD2WGuKbfgbWiPr5/XB38QRC4yiESTEV0Ev
	 5/yXQ0QMjT47w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0F1CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 21:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178181799368.8997.12191297099486649631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36fda038c1d8aed733729cde7b6b4bb730536db6b6f0209ff15e848cb8aea646
Date: Thu, 18 Jun 2026 21:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781817993
