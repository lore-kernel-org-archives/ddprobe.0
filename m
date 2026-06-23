Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 374D43FBA7
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 09:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782207394; cv=none; b=FyiNWhs1GVL/owY+Qb3/JcY2vgunyYAqmBTTUKgpB1YP1O+3HuLlCssXsUnsApKxO2M7eWmrATvH+UH1yFQKtwjviW+Xp3DoVFRjuCaiFjeyvNjrbf9UZ+CIX4sSpohLhK9NVY2L9acScO1Vc1HF+dIaWfviShBOuh/d8klugVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782207394; c=relaxed/simple;
	bh=P+b6wiIy4NHJvr5Z0kiQeywPr6XLxfDgNtRmyl1DgQk=;
	h=To:Subject:From:Message-Id:Date; b=MVVZPSYI5s/4SmdVi8eZ5pEfqQzKguIUy649P6jPH8M8gQ5mhQLHzN61RkeqnfdWHy/IjStOWYxYGqdFkbLxVmIz9P8ch/p2l63x4orybBtf6HHu9A69jwOuhPmz4ymkxht/BlDpT538+EcUPHbDR1iCTn2fI2njzF9zYV+PFFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lzsi9d+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lzsi9d+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9507C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 09:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782207393;
	bh=P+b6wiIy4NHJvr5Z0kiQeywPr6XLxfDgNtRmyl1DgQk=;
	h=To:Subject:From:Date:From;
	b=lzsi9d+FKsgryYRnAykiVHsXR2GcpT7eOE0sE2pwn5IY2hbaJQu0GpOd7dUCPjZPA
	 AbaFSzriDf/DRfUM4GzpuKA5fuLtLILl7JrdAE1y6ZOHMgsH3Pc7jHqC2J5eOh7VLs
	 ujuxd+3TS7VCPWkezzMeSAAqDXW0fwlIxPi1Dx9w3MFwWL/9yXCwVDyPyHUi9Jxlsq
	 zS5gL2nsjTpO3RO9tqbRm41UzQdSodyjLeA2mShUyDpW4np4LDGsdys66XYmzmH+Vd
	 sOVhhCqhfR/7Uksa9QzfoHFp0Mo99ro8UbChlaRCBkw5B0XAcjeRBKKB8YUjND53Pl
	 9NCWrtzRKQFvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE5ECD4F26
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 09:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178220739368.26606.183180970755829863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea991d80f742a80a1226114e6e243286c9e69fc874b8d05c6894ad1fc516b4bc
Date: Tue, 23 Jun 2026 09:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782207393
