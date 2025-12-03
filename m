Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204091BC2A
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 01:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764726774; cv=none; b=Ba9iqdNUEY/3fawVKQ4AwPKHBH2e8XGwCoL8YXKvxk465ugdkrmnj21wyM0W39QWSzw1awJF5Uwdi/Kv6HbJ8g28kS0J9/pBSW2iXDY1cLHqUwAKFY6N7NeuM1XziF88BL+VOLWxCLRE+B7IQI32HSMLM0xbP5lFHNBqWzKv5UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764726774; c=relaxed/simple;
	bh=HWvrapVfCwVao9rHdvWtT1riacBsbqqgtjwcsFRqFHM=;
	h=To:Subject:From:Message-Id:Date; b=V4kcwH7IxLUHtDvr1VTpW7IyLjFovRE9c1ASXH1VbJvMJXlhlYJXrA/zHHry8/BeIBMKLm1G1D7T7kD9/Y2qmUst395Noc2/GqClnnI4Ujy8reNS8JA0WCBCo7ZXZ0XzcL5QCoFrKT3j1I0jq4Dl0hG9k7xCJZZTw7vaxTK+TfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVvPV17x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVvPV17x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7332C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 01:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764726773;
	bh=HWvrapVfCwVao9rHdvWtT1riacBsbqqgtjwcsFRqFHM=;
	h=To:Subject:From:Date:From;
	b=gVvPV17xiJ5EErDMbBs8eDgLw1MVxewQpgtqWW+CJyl0j+q4JoTbq1YIOeRmcdUiy
	 nFcH7oDOOzd2Sgkh1vAs6YwRhj5pU8SrSM8ZnsUBO8ihvdX0/D2cvl7iFP0J16OWMe
	 oh7OKqjoNdrSnbTE6hidvXzj/+83SKfYNmcc99aCAgHGXEfp1uCco2cOYeljI+ZNyP
	 MTiOvi1JMLKEezagqT/ufAfZ0gdXLXiZmKR7cVoRcs+L6QTDQiv3zfJ8e1R8hmX2BY
	 vf8KwEvbhKMGvRm5cOyFDULAOv0jf8QwVmOpX4kCBBx0/CjpmiccjfPMBEx7Mb9IoZ
	 Aik1/pSlLfMWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974B8D1268E
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 01:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176472677358.12132.6346822415787673825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98c5dd04cdc7cbc125899ff88155ffaad4f314c9190f8c7d0bba1adae925708b
Date: Wed, 03 Dec 2025 01:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764726773
