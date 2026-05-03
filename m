Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD9023C8AE
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777840654; cv=none; b=UUd0gSlzxRksBrOBtGHEIYoE0X6G5E44h5Fc3kuBD/vxD7oTU0XCIR+1fqqThEaL7IrTm32WprJ+BMdM5RaoRJeEta0xODbRa2MjPElj6xWRnhZjJbL49YqScQsdQoreLvSFdTvcS90onYMriHu2sELKbd0BjHnx4iCnLu3LRKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777840654; c=relaxed/simple;
	bh=MuiUAhKTJE24UszVq1/7G96t/clkfKGohrzIPthiKx8=;
	h=To:Subject:From:Message-Id:Date; b=OMfsS49Mfpjt8tEuHsAr1+soAbugIYbcMrXJ5EvR48ZK9Zly05fSNr3Jx15zKQbE+fBecDQqyYOSoPCkZP2zs2hbuTbJ7WHMLK6o5ouQI67J2wosgb+ul1gD2ymY4kDxxN/L09gzf4rPzq8iRvJ3UFBLveASW+5emRRYE1AF3c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqyERELv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqyERELv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B787AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777840653;
	bh=MuiUAhKTJE24UszVq1/7G96t/clkfKGohrzIPthiKx8=;
	h=To:Subject:From:Date:From;
	b=cqyERELv+dBfcpOgxlHHEuKtjZ7FDXIasU3hpWX58Ye3caANjLOFmRf0nlDlAQoGT
	 eZ5+m0Rce8+3Ptn0WO0hbWOVuWm250eDDXP5CXBe2XS0g+jT9Pk1z9+D9azktOqxYR
	 xo3OAJC+7T4xYEHizIfb3SxquYAYO1CtU/X8+r8D81ECEMwkLfBBGOAKCFW6/mVgIJ
	 egsYjAr3L3AhyhuzIFaHU8cXRo4zugmEXk/Jg86haRx7W/jnjpzoPcM7XIxIap/MqI
	 puwZ2hzTCbzBuJe4KpOBcbza55uu+iHaEJ8+zGQTehubu5J3gLBjq+UfrWx3tBE1nC
	 XkN4WBw6s6Aew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A937BCD3424
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177784065368.25566.15538085154852556936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e94ed987ef67a283b62b353e1b05d46e81da0f8a25caaafcca6edde081acd6ce
Date: Sun, 03 May 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777840653
