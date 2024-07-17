Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F18CE57E
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 05:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721194523; cv=none; b=OlyCREnE5R31wqGsvIvO54jpeHx2MopjQ3Bs5nHEqd/Ax5cbjbxJ1ABoBQ9e+a6aZbQ+7CMZP3PwmZkJD/SGGdOuXdkIV4f5RePuVuenX/iNmoTbtTzOwNHJX6ayQpn/uMhGNkrFGf8c2SZRauT/RW82HU4FsfC+TxjIZ2SYW30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721194523; c=relaxed/simple;
	bh=gVibO+DIxMvXpJ8swzfDga9VOOI+Xep9FG2hWWEl+Lc=;
	h=To:Subject:From:Message-Id:Date; b=ACzZt+OdCxtmGqugaace1N7j2F4GRXt6lxjJjcIi+JQhF5azteNPbhpLeU1IjD6aXPZRAIDcddyoPljitQxuN2Ndm4nyryHiCwGxz1EERUJ2Y84KzKdF2arWb9eBMS1LwrwbukzSRcKJsD4MlBaZX2u6Rse1rzCwQH/Dsl4mmuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMY4huH6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMY4huH6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7EE0C32782
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 05:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721194522;
	bh=gVibO+DIxMvXpJ8swzfDga9VOOI+Xep9FG2hWWEl+Lc=;
	h=To:Subject:From:Date:From;
	b=KMY4huH6WaA2WIeNoud4+6wk21zwDIUgEkOB82wy2DEVsjm9MAqsaiFOAeyGzgCH9
	 763JtK4SDc62ufQmXWd1QzI+2tw7bfOyhZvrjUDURYq5HumROPczTCVTZsyXtWNdsG
	 gggjd6O3llqP8QiUVlt2mBFNsFF+JJop9+UpzGc1y+af4EZpL8RMeWKHeNHs3tgFVv
	 HBduvemxj5knIf9P6tYjkQwORyIra/ThSINmka8gfMJdqP6WXDSR0KsiuBg+6gZIJv
	 FbPqOXj6WHfqviuyExHW/0Q634lOFSnLlPQu3pM4qPMpjX+ENgG9QkJGAYe9WWu57c
	 jVefGOPdT2NAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C06C3DA42
	for <ddprobe@lists.linux.dev>; Wed, 17 Jul 2024 05:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172119452278.10990.4733401521869425090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a60333dfb48aaeb380faf3d7bb995c7041276a8115d2934aae32c7780b6bf154
Date: Wed, 17 Jul 2024 05:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721194522
