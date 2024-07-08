Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5959910A3D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 06:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720418783; cv=none; b=JgWAXhoNRyuTChQXk21Ugk+n2N6vttnrClwFSag/gXT+lawfrk4ix2EVpoqjCz8XzBTO2lY2FE5aQHT4cADZpl/+2eX49mAFGTEjhI13E0fvM/iB4FOabzP8zE+r/8U2mMSx1qT9KwajyjsTsCrnHEktxLb0UH47JzHw2Kg4Xq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720418783; c=relaxed/simple;
	bh=vq3REeDw1u4yHawhHYO7lvT1PMOjv9lpb6NOT8x8Y5U=;
	h=To:Subject:From:Message-Id:Date; b=gcynXwGc7K8lhQjwleJrfnPTleKQsq74ONFH1mufR/ggHD739iJc+l6nL+shNUxCCf6zz4z1CEaLwXnDRmxMoDacgQoqSaA8BpsSd0yzxFMl/Ljuikd8cS30IWpGPMBe64M7GZ7hGDVUM+JGkloGLNElp2YpOmnsvnlI9vcxBt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UolbZe/z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UolbZe/z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0026C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 06:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720418782;
	bh=vq3REeDw1u4yHawhHYO7lvT1PMOjv9lpb6NOT8x8Y5U=;
	h=To:Subject:From:Date:From;
	b=UolbZe/z0+4UJvWJXKWjCYgs3+i0wIypzhftdFcwKbXLmo0b1xPMCXqxmKP6VyUQv
	 gLfqXP7W7fe29q0iCTbMJzeoGAvxHpeh3NmxSwT6EYLTuhLW/UJAZ+XdYNFNcI2iRD
	 I3oa6pk/aI0YW6w0wg+4doOgnvfIeyn0aofxC4C7Ao7CHgMAcX23j4qt2lVTXJOhiw
	 3gIzY/sBjOtQYB8w8sPRw6YJ+vpvLjwx1VniMq43frQkWEmJYktJQ6wcwUK4G9RNBc
	 /ecSmiEyorWaIdFBFhXC1qNDg41vmwiwuLFGUDtsgXhzez0FC3PdF+jxcx9Rp7UGQe
	 6LrvLlV37PFRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5109C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 06:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172041878278.6317.8318534179982949181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 026dd98307d85792029722377c7148303977d27b355ceed559a6829a4d196f4d
Date: Mon, 08 Jul 2024 06:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720418782
