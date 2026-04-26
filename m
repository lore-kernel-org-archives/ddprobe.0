Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1534315B998
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 15:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777217254; cv=none; b=g/OrT/cQVL01ZxGdhkUKaD+V+LeYKfvJQ/Z08PjEwbqSGZVDxBDSPUoSqpZ3PznqcQP+PwbtCCcvX6GbVfFpo6qR9MGsmEAKgI/0L9cuqPear0DtiXt+PymDxNB1i4v8Yay9GHzwu/MKnXWmOsB2DrKETjaD8B8WlRu0N/aBYNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777217254; c=relaxed/simple;
	bh=aiWhTdJSRZ548EcuG33Z1JCo9tvSPzNlNJlCtEAjz1g=;
	h=To:Subject:From:Message-Id:Date; b=a9oO5OeW2JRy5gJ3teG84KpUR550FUH6YpFzmQFU3JQHo4i2SaJSOQBIl59LRMo/xbjuwI0DtXf8995IRYxwSuEx+iSMnEzKTvfCV/HJbVphHRJpCSQ8jkeoGmUBmClPufzVxd0wbesaXgHDXbVPsjDk2yI/JdNGLgCkYjg1CTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q1qSTw+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q1qSTw+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC7BFC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 15:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777217253;
	bh=aiWhTdJSRZ548EcuG33Z1JCo9tvSPzNlNJlCtEAjz1g=;
	h=To:Subject:From:Date:From;
	b=q1qSTw+vxYadKzvDdyQ4/HebAPTvDNDjyz/WMobq6a2cAEgK/x7vmRNYkFHcCS4bl
	 ZLOM5LqVfBoj3IiLYVQLkcOUzNDKdwtniwJckuMzabG2IuwSdCRJrr9ADwGZ+vHfMr
	 jumlHcniyewYFRg/DMPd362Jrm0T99/uqhZyBM9nYK2iC5+nuo+mi0kZGfE17dDMpi
	 bJBA5dfNuLdLo+7r00SRn6wh13vfnVwZCsK7ABm6BiKSmrFHjo24np2uDI6klMyGOK
	 vGHIUnqKIB978XB+lUkRg8t/FOClGAg6HyVOHfT0zMnhN9uANREcCHvmeYbQYt074F
	 i2im58N2xDYGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90B4FF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 15:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177721725368.17220.9121150790657703505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 724449d5ff259f3b1ac9c09c02a24f596bb8d657b815f4824f1fb86d25ed2026
Date: Sun, 26 Apr 2026 15:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777217253
