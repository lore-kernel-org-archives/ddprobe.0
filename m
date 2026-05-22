Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E849282F36
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 01:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779414754; cv=none; b=YkIlv6aY5+tAmTIIBFVmrKQu0qOOGdWoID/yqbN3AwbZG3tb1eZRFtOKuSFJOY11RHJcEqFTMJfOndqBxJFP2wWlA+FNXqcuJdmpEonARcQVuWqD/nB2L/ucybGwrevcgrIRPMvU8Dw3DFmGyv808PV/wgwZojRvTgS9DeDJMdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779414754; c=relaxed/simple;
	bh=kPhc8Q0d8o6DECyNIcKupm9THhZcjNXym8tWhd52sh8=;
	h=To:Subject:From:Message-Id:Date; b=B5gUyqMeLUYQNBrYvZUST4uIfJxP0c6+hU6oI71NYSd92EC6aZv37B849Is1Y1umYdROHahTD5KUMbnhFX2b6CPmKyKibzf8YAu3Oe8sZgG5AvoW7F7OM5gpfxE/DT1LLuqGORQx9uMU9PLoF48zdluS6bCWcQQKRKH6Kx6/kP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cq3R5B6i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cq3R5B6i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C32B5C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 01:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779414753;
	bh=kPhc8Q0d8o6DECyNIcKupm9THhZcjNXym8tWhd52sh8=;
	h=To:Subject:From:Date:From;
	b=cq3R5B6i4jmBYhkrYPGUVfi2pJjdfB5e1XSHzyh/hwqKgnV/vp8USrD8e2/dT52rk
	 yKnxVMrgzl3UMXA5ILHgLBs7+y/hT7yaofWu7jtXuzb6bex8xXV6TBuHu2MtfcWKr9
	 orKJOcVjCsbU17qghJ97f7NEGLW7TV3FgPVip4h6fpSpuLmPX16m4U7wrP1uHrwBVz
	 dGD/5bbJI1SSxu92hzLzGx8Vb87TV6DTMa3HUolaSh91GSWRz3LZHh5sfU34mU6JN+
	 k5bTpWGH5PFfgFbC318ik7PjyG3wFaQThebAlYr28lFHv8K8VjisrAZt8hP2lIRFLL
	 MFsVMtgBlrjZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85A6CD5BAF
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 01:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177941475368.18176.2251677255763108713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d54ba383b2dfc8cd5fd1f989152d709c0a4f24b612e03943cd8608645de6f8ef
Date: Fri, 22 May 2026 01:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779414753
