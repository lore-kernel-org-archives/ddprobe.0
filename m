Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB42442050
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 06:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765262573; cv=none; b=MqduwBFcQHjxxYIeqo2eQo9eVzotzKzApO43Wo8o4u6aXQWJG6AivsdgBL3Ukfp4Xqh/a35V2zIkReR0A84TwdyKWBfeKqbuXR+UBQGXd9AgjMN4Fbd7pLscALuvYKuaiaR6wHvUswC1wZKwhTWYYNV3oyJzSiL1EYRWU/mGEjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765262573; c=relaxed/simple;
	bh=y+L97/VBsJQxv1t0cDsaoxXC8rf0PzQ4b29rlWagZU4=;
	h=To:Subject:From:Message-Id:Date; b=TbHkkhB4KGtZ/9mChVKyCJx2smWT4OUtB8Pzdgc6546K8c+AtWbkr8E1gFR1/YRqsp1+0wPsa3esxl7HsgD+TmPjY+e7C2e/6z0I6IUdY89DqMfEHcGyxINh7ieRwmveCE9cPuZJXvBUVtgEGoz4m6TkfO8fIUBfHvpWPEyLzbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pf4ub1+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pf4ub1+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8311C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 06:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765262573;
	bh=y+L97/VBsJQxv1t0cDsaoxXC8rf0PzQ4b29rlWagZU4=;
	h=To:Subject:From:Date:From;
	b=Pf4ub1+QTrWWemixGAGCNa/xZ3lKDkLLmmcduZ4JX34vWiXjge1S2TV0Q86Oa50BB
	 nbvow2HWyLeq4vqo7Sc7Uw0JbHljc/r38AbNSRQpKoqVek0saa/G93GIgM0OLlNOmc
	 ZnAsbrEebl2lMqXh0C59BxFJeGw4IMrGel6ztQk8s5MS448apBN2xpPNRb2ZoPFgbN
	 8kH0hByp9Ik1vrk4tJOMghniS1mXKDoFnZELl36qgTIB0C0TGrRJlALTiWtwcXqBO6
	 76Y5dxqXtQT7Pq89ZNS9WVSEWmxMjbH2cZZy2ABYTcD2pKhv/Kd8RfEn9TP4uoxq7B
	 zrEsZg+BlEKmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CB0D3B7EA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 06:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176526257357.4376.1797833214711972960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b59adaa6b32af830c00b91edb00b32bd067bde001ec1a09fc0a21d0b1b0af83
Date: Tue, 09 Dec 2025 06:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765262573
