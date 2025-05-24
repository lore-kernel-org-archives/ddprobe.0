Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3955A43ABC
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748120394; cv=none; b=oVmlIv8xV+u7IOqBOMNC+jNhx17z5Nxz55k+NAn3qxVOkQaQbFYUdS06b55Kb8i7vsfjdookba1Nr9uWVeVRr50xEVXl4mxaoE5PMdxNAnYajvjtOfBQ+AfVKEIkCP2pHsWb73DrYdKRJN6p/z/8lrPEzJuc1O+bYBAde//0vCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748120394; c=relaxed/simple;
	bh=tlmJ4Hjhz3oZEpfKl1La68Y6VU/sz2gsi8npB97Ufys=;
	h=To:Subject:From:Message-Id:Date; b=nu9bpngeZj70yze2GZQNduiKnaqaW+8lxYVv1zmF7PPGrt0m0OZ9nMVon9j7R7xwyVAcr/XvSjvK0En864SLAVyifI5xLDg4jqdbtozxsbpqY4DoViizT4Qa2XNfutD8mSMCY6leeAnqpGUBipevhLYB7vEfptH/+CDg8OMxZz0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyrKw2qn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyrKw2qn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79FFC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748120393;
	bh=tlmJ4Hjhz3oZEpfKl1La68Y6VU/sz2gsi8npB97Ufys=;
	h=To:Subject:From:Date:From;
	b=RyrKw2qnYCsSn8sKm15j9135nAMSdg1DENdy6HxFdVSozzo680cmDo7CdydovANcr
	 4WDra+RtNQU7+poZdytExHWHijIGAiVbB3dHiPcNiiKQpeSPjigpmjxeBlCD7UcmOP
	 7QpxbP8arFsHlQ2LdJ3ShG5o0gG6ce3wyZlJweudNgyAchNHGQpc51+SSLvV5Ekn+m
	 tm6avFod2ZU0Nv+YsMSBD1nYcYMq/xVfJSPxbtgIMvAIkBv+uyybapwi6kGdGD9S2l
	 o+jDckgmonD1kH8SikGXM/I6YXh9shK/Me19GnyJ5S0au5+gn0Xg4ifdQOGZN1ASVN
	 Q3nwwARfbQDTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B69C54ED1
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174812039357.28816.9085842671664417929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf35bf6ed47849482bd0e8cd386488a51e4a6794ce34d59781371955f9b1f624
Date: Sat, 24 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748120393
