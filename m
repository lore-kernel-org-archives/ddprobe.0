Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196E11A9F9F
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765901634; cv=none; b=nig35uyU+SzxQf+3JQ0+/HjXf7gebz9DzCcUM09VQeDIWi4RqFQNzJgPj+S0YYbUwwNq7CYWxoMRRDH+V7p6m/LsUhnl0FQ2CR57kg3iAiWC8w2IZLVf5cRFIu3m6F9JSgNSwTKxG9+qpehjeh9D1yi/O27lBwy4+Jr+7vj28lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765901634; c=relaxed/simple;
	bh=BHi5KFioZaTW6w83Yp031Oupr0YACOR/evOklHY6lzo=;
	h=To:Subject:From:Message-Id:Date; b=qQjoMDgcmqR+XLTEgmxbOqxPptcNMDzllebb4g1L3QM4tF75u6xLBB/HfW4xYEM1ZEFmAr+jKOYMRD67AH/Kd7CcsF0uD1467FimieoqxWm64R1lOQ8nwliBgHJV6aBOnfLL3RnVzJsNPoxM75ucI4kyTfxIlGNDRNjbctSMywg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKOrXPIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKOrXPIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A334EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765901633;
	bh=BHi5KFioZaTW6w83Yp031Oupr0YACOR/evOklHY6lzo=;
	h=To:Subject:From:Date:From;
	b=sKOrXPItpuyPnqHMcBDRRyCtx54OJXSm8DFQgVQ18YQa0Xn3ZPowMSDD2/aemF+Cy
	 Lb8JZup2nH29B4uTqEs7MMPWg1AwgkBbR3D15da1jdT+B8GNPuWxxO3VRClw7tmnHi
	 q8TLJX5bsCtTe0iqR9miTandJfZz6CZIyaUxrFuy+KvSMFYbMXALlJX/R9r9ibHg/B
	 owzrrHsNxxYPfC5ec8D65YDaVdMkAGHTiEDjw/c54A3QYmo1EAkfmTNq/TJdmlhOjU
	 vi18R05SipQAXB+81nBy1zilV5KEclpFRaTwkFm2QLXQbSCPE/FAODntxqueKDr1Sl
	 tLqCNJGwg+RzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93958D609BD
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176590163358.14738.14068182675849881181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e9b0f925b18ee18ae8629b1cf22168acfa469901af7e03867a37a8b0f822a2d
Date: Tue, 16 Dec 2025 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765901633
