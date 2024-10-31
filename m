Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237DC146019
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730361354; cv=none; b=Pfx6LLcGD6zB9XERWKGMs/8f9kxIOJywxpeyA3IKyep+Ubp+0KkVr6NyU5NSNrP/8P3PxHGoJSQIG88ywLT0+62zA0dSFeR11ghVuyrZlEPRYtba1/dsZY6uk3AwMfy7QAdASYB4c3q2HVjxiBTwfND7ftPLBmGygtVFNwkgPMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730361354; c=relaxed/simple;
	bh=bZsdekZ2VjdoSVLmXJn59DquGqag29DtXLACTId1mlE=;
	h=To:Subject:From:Message-Id:Date; b=HiKEHfYOsOsAajui71Gf/ib+umY6ENXhRHl4blj0HHLLPRjh/BaUuYaa9C7GW1i1gcElE/m/r5NMVIFAxEwFfF+q/xLGH10rC3OhPAy2g13JF9jYPTwYGPsC3MCurBbCBZc/TTRk8sqqVMcca8QccW893htbXz7tuEDxmzbjWUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dWcomhO2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dWcomhO2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B25D0C4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730361353;
	bh=bZsdekZ2VjdoSVLmXJn59DquGqag29DtXLACTId1mlE=;
	h=To:Subject:From:Date:From;
	b=dWcomhO2I3NbH5iC+9A6O1wixx0NDOE5fZllEhqi4u7tIRw73oEu731ayyUsjijXW
	 stVNJ4KEAd1q3QO7iRWsMcez/z6woi8mx4sMeQ+2Pf8QbnibZSMqE6QN5aSxyBJGdU
	 5x1OeFQ6+C92fT61G9PCPDvHhnPjBCTpCY9c9vwt6DQyRtGsscPc5X9fSNoCO2gyr5
	 l8rzVvAI7v16DfeAHoLcoZUuTeBnkra81aXONqGvDDGNgwUMPfyzmyS7Ni8vVbWabq
	 SMnLNumV0Ebe8S8JBYCZvqNBYqTj2b9zlwLZSFulHMs29Px4N7Vi8nDHWQpeKhOG8l
	 zrJs8xQMYchkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE75E6895B
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173036135362.7498.4689101817397583237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7980bcd1ff36332d35bd9fbcf536982af86046af755e1673464b9b08792580ef
Date: Thu, 31 Oct 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730361353
