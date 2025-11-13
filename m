Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134E4283FDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763005794; cv=none; b=g6mbOBl/LPl1ZAsM1im/2spElBvdYSSdCJQzwsXtQ0WLosMBDUBwrCuklbqMR77Yv2cGJc304nUEw1Kkp4222A/duDiu1LIYXnxKlJNsTAwkRRLcyAP9P5vJTCHgkrhcGpNqVBVltbDfAFunUsqcuxkU3MuuHvYaNfLtWx+DUQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763005794; c=relaxed/simple;
	bh=yYsNq7ovp5cT2ULcWpygD43M2lyH2ZC4gd8Jpby9Uno=;
	h=To:Subject:From:Message-Id:Date; b=akIEMgUY4CCRb4ChH4Hz6HQPK+PGxHmiboBEDriVRtwC/tn587nZjw1WqxIlDV6c/hJLTs1pL3RsdCbxe5+l9i8rJXCHDKz8VeqeIfnT9LkCMAjOQ7nnRPAZH88BmXNvSuK08VDr86kVjUj2lgrcIWsgXPe5NH0Xm4b9opf/w/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XPcz4uCo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XPcz4uCo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D3D4C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763005793;
	bh=yYsNq7ovp5cT2ULcWpygD43M2lyH2ZC4gd8Jpby9Uno=;
	h=To:Subject:From:Date:From;
	b=XPcz4uConQpTT5wIMGhlo7FdOHbyhfqKw3gzEgwQCDDU+F3seSVDN6UcxClh1qJQF
	 55Bi3qjBE7YW/hsGLciLY6YiwdX2iFJXhPRHJU6N+YgLp/+mE82KDqZpwLtBp8E/iV
	 QzbvgLTFmmL0yBCx+Y0A42cl/jg5LcjcCSBEh1Ngh9KNwYeuKDMO4x3Vr4k4Fwjwbq
	 tcgMxbB21GrZ8d1HGJSdETm4XZRjXU/9oOi9aduNg3+md5q404rY1MPDXJ+Rvq525A
	 mGLtDorrM0/YX7AcvJPAMcinmkP/Eld+2zmFQjlvzv/wmDyOnCGMlZ7YP9T5P0OfXB
	 4OmwhC6nSRvag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91964CCFA18
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176300579358.29108.12350977798263540196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9bf1165c7c99aac0eae041959a418b5d5f1b10f71025c26703b4de2dba39bec0
Date: Thu, 13 Nov 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763005793
