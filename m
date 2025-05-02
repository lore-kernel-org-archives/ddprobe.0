Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4937519DF66
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746163794; cv=none; b=YotaHqwHgI68JMaFBkOul3fnG9085nbHhLSBq6Nrs5wTI1rn67L/IlabY4rdqUV9qRZNmT5MoEilE9WfDwxVTD126KEDkOrdm/T62fAT6zUzx9pHvLvRYoWdfE6AboMSrw2X2LQJpgxAu8LtRuIGffFNIEkXrR4H/u3S2VtLLww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746163794; c=relaxed/simple;
	bh=298wK1PN5qIufKEPJVKTtm+G5IDLKoNy9JK2Hr77S8w=;
	h=To:Subject:From:Message-Id:Date; b=OVaubZHpJM/unrlIADGpmD0vy89O3qTqOTjWQ4PqquQatuCCulDQYakEYFKLz9eXuHRy2yeTeTAy0aFy05IrbkmaB4dUoyZ2KKYPYEUc6r7EV2OPVezmXBJ15cv+Yzk/0PiGYKXjcd2JRLRTSIGIQ1/ZSkOIOpcSN7oU//hpmH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9W0GmJe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9W0GmJe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99CBC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746163793;
	bh=298wK1PN5qIufKEPJVKTtm+G5IDLKoNy9JK2Hr77S8w=;
	h=To:Subject:From:Date:From;
	b=u9W0GmJeYwF7mbTN1LKnLS2Pi7sy4WOt3UHDcOOooTSKXBexM3nnQ0yS8hRgqSuqt
	 Xo2P2sgiJndCFJJAmla8hBzHMw4WVhjFWJ1fmWeFCrQa8vlNhLD2GVFZlmX4QHBUia
	 S4xRkh+QQhQgPbBY39Gc6/qybruva+5MAWzRcMz3faINMcN6wdWZfv1PlKUPJQhlSl
	 GOxIGH0db9kr2VPWKFvE6O8xebHlxnNXPhqccHdy0WwmGBG4mXC+yJb9cSdzAq7vnl
	 yD64aNC+36aBv1BTOGhRCfwU6d+/OZPC+H3P6PDO9HY4BK5ZDjy/pI8elZhR+BxqhD
	 RRZ2l0iuCZP1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C44C3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174616379357.23623.3084291607914836266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79bda4e5a95271b16ccc6dfed0a87d323e5a73af6eb03f12188572027c650d2f
Date: Fri, 02 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746163793
