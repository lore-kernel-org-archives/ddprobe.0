Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6A737206E
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 06:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783577314; cv=none; b=p/8RQ7Go7e2wVF+UECURZJwFWrooYNmEddlt5I639GG3IRqPIFyogZoZX8mBR5CREobfCoHzgNtlu/ksg0KxRT9O+UJ0BfQl6O32G8oBxbtaMFeQtt6sJssHG9eh6MRVemdMK9w7WxnLV7MshgBTsR5Tr98enH9ndJpsYg78EdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783577314; c=relaxed/simple;
	bh=WXgi9CQoybaACNiBSzoMPLZiC4LBQNMJjhRjo7SOVCo=;
	h=To:Subject:From:Message-Id:Date; b=flFLkyszXkVEJ6ud26Ddq0eju+GjFUw6XDx7PYzItfLlwOggVUIrJEn3WJOLbUPAoRFf7UKLAPvlFdXon+u6kd9/3xv6TZKE1uDhpyEPnt6nfysPKyuvA7ohabxoM1TiMkHN4GKr+v57Q1ynAOiS7MxA2K2njTp2lY164Eaxi5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjSc123G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjSc123G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D48C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783577313;
	bh=WXgi9CQoybaACNiBSzoMPLZiC4LBQNMJjhRjo7SOVCo=;
	h=To:Subject:From:Date:From;
	b=qjSc123G/2MXG7smd8jPiv3ZqtqZrTZIgwlGB1kL8nS/LGP5Cc8Xx4WKyZSzj87OP
	 yay5u5/0cKJJTgEtqb/sgYPWplTFjWGtUgLY0tqbLwhOfcm06Rvn1Z2EGXTZ4l5czG
	 52gNKuaFcZX6vgCMBnbKqgE5PZYzEL4i9CRk3EJh5+FQT+xCcqFk62Y3iiKuZW8tGW
	 ErGXRVp8w8yE9dCQbcmvmz3iGP4mgWipnbZ8gtr9hc/zdMmo+L0G51YsszWY4CHXTB
	 txzlEAZQAvT0iSN1MG5GrpzdvTDZ5HczgB1bA6ILi1OEpJ3bTQD89whDf+V1v41x8+
	 yA+JvBqelpUPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE468C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178357731370.4461.6890693297328846749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fb6567f529103080cb4e4312a88e32d92cc30c701c10812bcfe2a2194ce86a6
Date: Thu, 09 Jul 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783577313
