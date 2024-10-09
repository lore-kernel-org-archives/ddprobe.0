Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CA718FC8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728476154; cv=none; b=kMsmBu8iO+xGo0kyW5fa6glCpREOOToXJXsf+1gIFvd74c3qrSUVS+kbfVx0wTJoVIomZuQ7wPCZfNE563k2myE/CYEYb0FqEXAR2RUv6musiPRNXfyU30n2GcNA7WOB7khOVd6OrEiREZud18VF866X722v+70SwLre93+OfZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728476154; c=relaxed/simple;
	bh=+sJX2dkzHRUeHS/wpC3oGbWRRpABEjhtdzbD4tkc0y4=;
	h=To:Subject:From:Message-Id:Date; b=IvhVkRu6MfwnOhfi3rJUnhCBiXxYxx7b0MgCsuVt0PdaeY2SK5Z9EKzwBk/F42hGuJUZOGZIGnt29q+Lh5M1OpErzig6EnbRao/iOTVynqW31i7jzUHRIbQCF6uIB8sb2KdDGTtGBNzwNGYtW6dMrNINn+lqACUdcBsHBzHKdTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SxmvKIsy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SxmvKIsy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8B8AC4CECD
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728476153;
	bh=+sJX2dkzHRUeHS/wpC3oGbWRRpABEjhtdzbD4tkc0y4=;
	h=To:Subject:From:Date:From;
	b=SxmvKIsyXYW2/yGUh4x/o3KoOwWQ2cY3ns50yEfcgkpg4HfpoWX2qbupyAKQxALMU
	 oOHnSdgQQ6UXmW/82gkojcmFPoUX1+XDRXurxRqpTxtW9yGHXbMEXvYTJ4s+h/DPBk
	 9/hA2aBKLZEeSGG3DBLZwxml8LuCnzvRAKadLtLbzoiNhiCtM988+1zlfglcW8M8Kf
	 ieQYKnRW8+KVBvxqiOdvy38qVVZCUIfjT1skfpviq6nrJkEqhpEQ8xm7Fdvy6af06a
	 4tSUMd88xW+HfZxNiOzWagvhDnTdB4QuScE27e92Y/ejYBr1seKUt+nZihQpONMttN
	 oZYu5Q/wmouyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A217FCEDD8B
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172847615365.10653.9767192648608345966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45cba9e12f65911a4c0f84d908e1780f179dd73b6fb0b41c663e52137c2611b0
Date: Wed, 09 Oct 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728476153
