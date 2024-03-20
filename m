Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E119E48792
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710949697; cv=none; b=i2WM0UciV2D+bE5G17ZcSbhsdTNENBZv282inQm6sBgOL5nCrHoNEAyHGfYUbA2rL+ncqc03fJCALXIDayKAMfygWC7uQ6kNF2tlCau+OCCIKXwZVAbmijYV7fAz71AiAmB6F7HPcXhj8Lc29rEwc2mPBQjJLmzeyye8qXPm6lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710949697; c=relaxed/simple;
	bh=/f2lMEV0kfWqjTSmJjlT5RdCBqhstGiYZ6fIv2v1Soc=;
	h=To:Subject:From:Message-Id:Date; b=un6rDsM9yHIA4zFOT8kl3vJmeIc4YMPZqn0sSUMUyGliPTW3LE2lD/u4tvndPrAAXqMPxGaOZrYV4fM75av3NW6WoHNpcfD9CL2Vf0zzUJqqXT5pkDFSXS3k7ISyNuEJj/hxb7P6Rcfslqk2UaIAJZZanbjLYqcjdtFovch+hko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uzO9Danu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uzO9Danu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74E87C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710949696;
	bh=/f2lMEV0kfWqjTSmJjlT5RdCBqhstGiYZ6fIv2v1Soc=;
	h=To:Subject:From:Date:From;
	b=uzO9DanuA/OJyvyksDVHhIVb7OtU+REuvKzJQ0730XQk/gIaM6SFNGkN/N718idE/
	 TlSazM3Wtfop8QiSZXbov0kWFKtqU/TLLWrj89UxklwfXRDxRleo7cLHdwhKGIu6aE
	 VnE9DMeundDCRz+Qa9B3k5Iim+wGIm11s2+LJazSVtkm8XEhLM1MESCSOdbzO2RZuP
	 2XUrSOvvvMmt8SM7sZr5iQUfcw/ZktBCmuimPAxwb9VHOFJK0XOoznUyQEta6s62EE
	 xTplQuWU+1vzGiTv2wzL+OdLXagMaTi7/ssa1xm5OUEpfbxmxbDll6cDxeC/Xq6QoE
	 +Cr5TDZIJkOzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 621A9C54E58
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171094969639.13289.6105459690848819335.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c1bdfa31075bbb6620f0debefbf871b138328f6147c860f0b3f6a09c661c91
Date: Wed, 20 Mar 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710949696
