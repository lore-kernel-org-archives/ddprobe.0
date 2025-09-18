Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF3B0222594
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758233994; cv=none; b=ZWjdvtf+uPT/T4T2ruCRZkyO/VGLUeXNpMWTu0hP6Ysg/jvnweUJyH1HsFPQsGw2oC6dDJLTVsbM8rUfGXtHaTBygX8leu745HCtsf5IRsN6e3onZIyjqTzBO1TERdnfR148PPu7Ozszs/qMn14IqXBFBC9nSHEwsGY8yrncLKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758233994; c=relaxed/simple;
	bh=8Z39A9gHd41Vhe3BNgsGispAPftM+PVzbl5XzYI9AOE=;
	h=To:Subject:From:Message-Id:Date; b=hW9eXYYib6S9QP5PBEe++0jq6u/APexT6ZdajJQofGgJelEjojv4RQ32I23Yd110Qno9RkaTrwHtXImOURYglTvKvPpIPR+Cf2yEpSqE/bCYMlv2yNe95RlNPVjqHequyT6fx2iIsLiY0OUkj06LnGQulXjJWBxKfuN3n7Q5IVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WD4SCibN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WD4SCibN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB6BC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758233993;
	bh=8Z39A9gHd41Vhe3BNgsGispAPftM+PVzbl5XzYI9AOE=;
	h=To:Subject:From:Date:From;
	b=WD4SCibNfj/0XsQpEeZyHf6bKUfN4bR1a3vBVeWBewRuT+ewodHg18eCiaZJhxQLK
	 jmmNHW63e5qP+MeMznzriE3RzLfNy7Tvznhpow7/vTComGqkJDni+PlzkoWbp+/r09
	 HGAp6RKnksimZJQ/suPU75Mhi6PFtAAjp3JvCzmhi24TI8kq6zR1emBGEor3KowMcs
	 CAIU4peQbjCKHgR5VKry0IcffOK9ni9FckL3OCND+Y0YdbM/zphRfbA41um7Z9+3eN
	 mfIB6Pstz++G0XK0IMfu9+c/sVFP2VY7La8zVmPY1uZpsYZRm4E4rdopUVRHl13bGW
	 ONGTMhQAe0BIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F19CCA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175823399357.15600.3644836652637180260.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 118cb6cff2a7ca6b052556589b88dc38c824fe4499ed808c4f5f3be45e332789
Date: Thu, 18 Sep 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758233993
