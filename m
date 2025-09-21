Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12C987E9
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758430194; cv=none; b=qzs4r8d0UxaFVfDYd5WKD1EZwhnTZBVpczEqQXibYhmuCYDOfndpdrgC7pB1JXMqc6eF1OS4lRo4sajoU1lWHZALklCj1/PpxPLyUX/U1U1QOOab2OEZAmMqg2uUO1VprCb/jHtPMq+f7neFARuxLRs9G6QXAtGcnf+LjuL2+KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758430194; c=relaxed/simple;
	bh=DxbmNtX8v2Gx1eutob181XYsAYqxCmqfuzoF9ddbfls=;
	h=To:Subject:From:Message-Id:Date; b=JVuTmcq13IeaNxc3BVCFB7q3OjOVc7WKQpPZ6euqJMHoDgDt7LkLbWcOORvELHdLLPCxv4fVN+TXgKcx29sBd7rPBUxeRJtUL5t4BmYPIYTs8s3XXHXM3pZe/uXGhLgniRms7oFgtzz3iNYR4CA0BVaVtpluYmh1PhkTrjVfm0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okB3dc1S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okB3dc1S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFA3C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758430193;
	bh=DxbmNtX8v2Gx1eutob181XYsAYqxCmqfuzoF9ddbfls=;
	h=To:Subject:From:Date:From;
	b=okB3dc1S5gX0gOrxzVfOEENrsrsAyeQnxIrh1vZggXA8jFCbYXOlweoeW/8FDrtM7
	 fgfRIHiOvOexiMC3wo/kZzlbUkrzkO3vcPu0siATQx7CxGUB1pNQP5rG1gJqx/cuMK
	 3cBsJWQWZya52Mc1KGzOCHCTKYQ5BpFUK8LUZxQtkOW9+PFxduG8K8VqlVJnHphQ00
	 4WlXrY+NFkY8Q+oomBjf83lBVwP2zhGzZZZTiXSj52oYn2InV1EHmMRjKqYe0avlg0
	 6mi+Y9STyNkmIiBsvVCGKuD4t6v+vtHSqOXROPmeqMgsahPK8EaFvTSLrFOExBy5dP
	 SVjoWC8OBkF7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E94ECAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175843019357.20071.210500300493853170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f93aa74fa4d31de8ca8b793f6a9ce968a302450b838b3a044a97bac11c1bc12
Date: Sun, 21 Sep 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758430193
