Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E1B3E764F
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 22:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790635834; cv=none; b=pzQJPJVf/o7qffmqgW8N1LuiF4N6xUrAORCDzNaZLZI0r4Xbw4wzACOKnTUtgbTKRQsab1iySRtz2seEATXue62qrguBgORn2sQOHQz5HrcAC5/0NNSb1YsoGbmKr+izZzwy8FJWnD/48OVrdedpAlP8bOesRTUuensrSmuZkTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790635834; c=relaxed/simple;
	bh=UF7zCMzCwPno6sW4ECPhnZCpZfSOvhAwnzFb1Kjlr30=;
	h=To:Subject:From:Message-Id:Date; b=HVKYzz6fahWsmnyExRZ0+nSLEc9rcssA4E6NCrqUg6pePuXte4ZCSKJgtJX2MqYGiQzVJ4P11ON91HUAKMS1jao49rfM5tPdT/rgrQ1aOeAp8Y8ow4xCtB1uNypJFH6rzCQVfCJd3PzEixxW3g8xMPfj5M6r2Hr5EeI9c/A7MBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6KSRov4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6KSRov4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F75C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 22:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790635833;
	bh=UF7zCMzCwPno6sW4ECPhnZCpZfSOvhAwnzFb1Kjlr30=;
	h=To:Subject:From:Date:From;
	b=O6KSRov4JcYJTrtEaWupJxPwihO6NwbkE7er6BG0i4h0Cw6FNmvYmuOGWjFXD3d2x
	 EDFc4vVKa755NzZNmkBUrpWlo8RP0bV+XHC3yrlpY8gLA2R1wyNFGTJ2ySOXUBOorJ
	 ULWhMxyEy/t/H8hpiRass3y/eVAyadIcI4QAXKOqS5/CMrHuL7/1NY7wzrhOoOHG9C
	 c9pKdQnFFkWPBY9yoV+WgCKAc6pMx4xGg6cOsXkNOwlVLUyr367HOkUDY5VVxGAAcZ
	 eFm0UTKZFjNakqI+5PHnd/9tB2ueynb96uux3z+j2cA/mz2NgIp1yLcscMaW8yCWa4
	 8ftfqfJEEbhhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98A6CA5FA5
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 22:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179063583368.31586.18274733652640371436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73d3bc78b997fe26b365a34f222b14a954a190b97b276f5beb6d80d919509fc9
Date: Mon, 28 Sep 2026 22:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790635833
