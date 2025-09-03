Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B74B288D6
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756867194; cv=none; b=CSc2tPIBBqAJNWrLT+rV3CkNz0mMSGK4bjM1uJycrj59uou27cDAC2X8C7yXCA2lTKuvWdihD2WrtBKdVIFRsZsHnboMA5ZcWuNlbcetLP0NqYbp4b7a68WaYgk6CRPJOOv4qXdOCX0hB/JDFIZzXYvh14nyKbbTKwHXrRlPgMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756867194; c=relaxed/simple;
	bh=Qy3ivR4VmVeI8BExrbzxKqYnve4a69zNslJfdY7m0Q8=;
	h=To:Subject:From:Message-Id:Date; b=fpyPp62D89L6Mc3LPnXtQmRxLnu2jZ6ayJl8zWhSRice4X1j0OrMlo+bKCKg7onQ8x4eD/cacI4UOeJPt0HZNvcpdtRCCE99pPoEw8ruGaa9ku2jFMoX/cO7XzH/MG7SIjXQeWqKqQx7xJbSgGDTYPujNf9SD2V8wNdquTchpSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AtyTyaI8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AtyTyaI8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48A1C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756867193;
	bh=Qy3ivR4VmVeI8BExrbzxKqYnve4a69zNslJfdY7m0Q8=;
	h=To:Subject:From:Date:From;
	b=AtyTyaI8XvwSJ1qxhokZ7Th+QITJx2wkmUU4kCh/BnH6SUqBNtXDfAUEhEEXzsFfM
	 RVrL9pZbvXTEVHfh2mlgx9QZg1/c0JksT1sMkW7ptFRC2SsLmr3WULuogPKL5CbKp7
	 j7aJl+Ttw12xNPDYgED8EOckIs4oiVF/BxIcCrbUfrZv8Vzaj85oC2WUdogi3kMWZI
	 rBYbgpXxNn+m40HzqwL9TKePxO+WXIQn6nr00onq9X4hXiEbF8fsyBixERKrMcR7Od
	 tuaK6LXFu6QSMSrzVJgovrW/QHSdmsbze8TaOJcPq1qG92rkfPkNzPvXL4hk/67miH
	 8BvY+t6eWdRcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F6F1CA0FED
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175686719357.25131.251003251703050171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41934cff59f337a7ae1a24413472b6178ccaa314dd3de5917fbc7876e02de27c
Date: Wed, 03 Sep 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756867193
