Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2608018EAB
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727636754; cv=none; b=MDJoATOmyDtW/YH1bH0LocdS6SheJ4j9uKpld/Y46dQM64ePWSACfXlJeD4UrkU40MB8jhx9R4MvWPFquaeh+J6DSNa2ZVbHCH3sVEjGvrQrO01uHmQO5it/oQFvQErTSYxmvzbTmByDLYRxAVe5oK78PsIz+9SfSbkEL5A+bbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727636754; c=relaxed/simple;
	bh=by6eikCNQj4y8uUMSpHsNeujVarbju4dbdHPVfTU0x4=;
	h=To:Subject:From:Message-Id:Date; b=JUnZiqPaX+KaF3whkvz4i4FwtIWkoit/FG3q2RNuiEpP3TPyWNP/7YVIhqaH82FlU7r3LjT1APg1tPqnLZ0pxiJr9F9+qGU44BjGY1522MbS/e5Nbc0U7KnrF0QpZ/nLSwBvE9mQI2aPGFOPp73/3L0PF5rOOiV1HEcAx9gi5Fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lgp4HwE6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lgp4HwE6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEBD8C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727636753;
	bh=by6eikCNQj4y8uUMSpHsNeujVarbju4dbdHPVfTU0x4=;
	h=To:Subject:From:Date:From;
	b=lgp4HwE6CT8iRQfn2P7MSAhmG+rG3x98q2mVNVD9p0lE+fo5I7AyoUmYLJ0wHFg0+
	 KuiOahsX9+o1WLyQmbVlmBE5t5tgYp34MbIIP4KoXbtrPNGJjzX+rulzuxvJMh7BNT
	 kLMaP+6w1XFLobCsOCX4USc1E8a5BzHWEqbZt59AK0Iw8iUO9xcWzGLGAVj/bxsWxe
	 tdNXksN00OL48qp5KMaOVSPIppGnTAfWV6R+tdAamzyiKjlQVpCRIeFE9tkl8NUvOz
	 S1yzyedOTFIh+KwKaxRNfMBp+XF/z1mZmph88khaOsk2fjYoRt+2yVTYFXNRfywRQF
	 7jHHjlKPHfYCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97550CF6495
	for <ddprobe@lists.linux.dev>; Sun, 29 Sep 2024 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172763675359.4818.11346630622799632135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d325c069a4cb51068c070a40ceb748d52cdbcaab58b1f34334c4dcc291c8986b
Date: Sun, 29 Sep 2024 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727636753
