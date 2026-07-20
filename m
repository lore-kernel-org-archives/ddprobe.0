Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F032F3C19
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 05:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784525314; cv=none; b=ThJG+LMlSA89Pz+wPnt2MmNDVgb2FJDYxXqkvM1S3g/3dVIJh81FI78vJRpe/JH6pT8hXAqOwjHb1b/8VrWfZi7Ol+p9AJHCptjSpe1qIUrRi7z/Vbl72Fdxj7iECO/U4BcJOPx1svPPItU3uU37MhXF+yB7sQzgJojeXxv6FI4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784525314; c=relaxed/simple;
	bh=2yBvhb4adW3xNPqNbBJv765XqpTXO7oSsxNSdEybPxA=;
	h=To:Subject:From:Message-Id:Date; b=Hj/+3igELf2SQMwFLQP6P1SWVOqbQDhWMF/I3j8wNrBp2jp27F+zGCXsVhieWqhehaZLZbD2FiEwCfrmjezD+bA7IokzKhXkaGWvU9PPJuO8SiqWUKpzzeYQHWqmLCdUqsgkB+psY5TSleNQwwJ48Hkex/fLvuX7RsyolGn4TT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkSiikIo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkSiikIo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE547C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 05:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784525313;
	bh=2yBvhb4adW3xNPqNbBJv765XqpTXO7oSsxNSdEybPxA=;
	h=To:Subject:From:Date:From;
	b=rkSiikIomkyO7PtF4eDrASLYFFGZ4L+MAFIHksphr3CD+7ZgJPwf3t/7e1xsLC0nH
	 9gr5KtLnaeDZFWT0mAv0Sffru6zIDq6WO1bNaJ1dOPi03scYTJzdH+SWm85TsCR0nm
	 754/e8m8Yw4wdrooJu+SJsoVCutDV0XC09mnlR0KuNrAJGypETnqGU3D7UclqUQDdq
	 aHQAGaYW3zd3SkBtbOZbSmFu+GLmdVFe5rgvrDUGaXjeQuyFnIQFDTqgTpVtpL8tPx
	 iZTUZ7Cz9JXA2Im/Dji4igUvJNFl4fjswJcgFvO6HN+I30+voFL8SCpdIO9P73KVmI
	 k8vu+onTenfOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC625C4451B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 05:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178452531369.8917.12712819802378350147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee71addae65a1ab61a4d452356213002ad1ac6582bfe2a7c00a8426b65ac4e12
Date: Mon, 20 Jul 2026 05:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784525313
