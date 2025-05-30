Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7BC5674E
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748574594; cv=none; b=Cy+NTyLhtNgfj5HQC8vUOOHcdNRp7HxhBXpQXAJqpcTGVhkvB2DuqngUMZcJs9DBqw448Z3teEc414j/Ao8lhfFYYngNA24dRNSQv60w/iF822KHCg+AHRgorR2sgUcnugmtvPUlHM7t3JViv7zxX/7f/27g9+06QRNgSy94oao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748574594; c=relaxed/simple;
	bh=E86yl4Oj7WC5pJ6kfpFTUNYdIwuQTLXYMlLB41rGZEw=;
	h=To:Subject:From:Message-Id:Date; b=lnBb1PC9RPJanF3A7wAt8wsHhO+qx8fwv/ZKNBswiFwgh3oDqODFlIHkcPWe/8msL+TuxuZtRj9Ax+w0P+lhINTanUyIjoD7Odpo0dST/BwdiZbbLya2DMmHvFbJ3UOZDjYzxFYGbTC/7pOs2ASBr5ORRDTpGvaatDxN5OSioK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XN7Dqwlz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XN7Dqwlz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38A6C4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748574593;
	bh=E86yl4Oj7WC5pJ6kfpFTUNYdIwuQTLXYMlLB41rGZEw=;
	h=To:Subject:From:Date:From;
	b=XN7DqwlzdgMfW4rHsdgK/KnHghAI6JrnOzHWchEim7hfrLkODqcUcWQ3ysU8R770S
	 pq2botWTCbjtpM0VDJI5ie2TCGtHZ0GzGxX3u9MOluJ8gsTtVYIHS3E/y2qxafJGaE
	 n9pBMb73/blCpHvDBFStHmRFGdVM/wCiLKbzWjtgDPhWd1Mvw9XHsvmqsPPGuVm7yp
	 W4J5tIZ+wzRWpI+JmwWGpI9dY3ksaXr3WXneODBDTxKQBtB7FCFJCBCixJ47zZtet0
	 +XWJaFWl1I/60uA+I+ZP5SlRDLklYH23WDHuIQMjAadQcNfBlZLzMBVDlt6slpF2cY
	 iGrQF1o0KSQHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD7FC5AE59
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174857459358.786.3579993713262819171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 869e5b6f5d25e878eb6cd18997bb5561c6661ef43864b8fcb23d7cbde4120a83
Date: Fri, 30 May 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748574593
