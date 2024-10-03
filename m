Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68ECE20328
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727927754; cv=none; b=PXRRi8H9rEyWmlwkhXPu82GfYxzf3WZdGtvo/kbpexZ6aXtLpJL2hTpSEUiroGWmk362Kubqnrj4y3AkNwom1nKHzbpR2ybqXfti8fXgj/VqoW19wdBtT6peDCajcPOe00TsqwtG4fBIyUIOjG/dydO+gQE0MVwLUCRsqCbqw/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727927754; c=relaxed/simple;
	bh=kzIDJ1nNexwGOMGgXeJIeXel8VJCHnFxn4ZqEn+o8N0=;
	h=To:Subject:From:Message-Id:Date; b=aqHJqybK8T4Vc6LhIOTQgEtYTeNWjusqMQvzc2bDbuHa7sYIe8GvqtQqzVSjRXjJM05p8y6nxlzbObRRLphvpZ2c//+mYkHzDShVTjNwQtoYBF+9r3Yy0aKX5h7GVPw6Si7FpBUic8lwgmO8UVvenaMn+M+3f4e7MVkyzrI1VVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ay0sXwjk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ay0sXwjk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB713C4CEC7
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727927753;
	bh=kzIDJ1nNexwGOMGgXeJIeXel8VJCHnFxn4ZqEn+o8N0=;
	h=To:Subject:From:Date:From;
	b=Ay0sXwjkave1onoHy74/LSnVmEh3AUXgoPPKNrt+v4j+CLhusqzXZynafmdqcuchL
	 kMHz+HygEZk0Zq6Yjl9kM+AOKvje3DyOgP62gWIptnfJZ2EbJLm87IA5+UMjMiAHar
	 F08vSeBPcQV226W4VqLAjObt6D0AI0lIDkQiZGxGPh55FiBOkdXaD0+dzBPMh69G7P
	 pbQC6/wlntXbXAOec4MBMVMtJUskRU5RMPLO+qALQe9J3hNqr1Rorkrpl5PHHmLBmP
	 3RbPSkiPJw5CPMCpozb255mSjwqSoeCpET/a4OZP48E19tWlc2UnolKAWWx9i6EgKi
	 ahKPKqqW9KRfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A632BCF855A
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172792775365.13890.973200801550949339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1436baa94cd0e940831ea3a23df1579bfecbe358a130ffd965294edf63abb308
Date: Thu, 03 Oct 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727927753
