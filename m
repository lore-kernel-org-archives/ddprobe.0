Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216CA7E9
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753589994; cv=none; b=FVkew/7UJoX8PubAqGB64kdQJW9gKcM3llv2G8DU87ERvDxw9ueKnChXAK8HwXhxsW8UbmwSvtQlkEFx07QX/1IS1r/ecx6//kXBZtqzuB47VpaWhPJOxwltDk1iv1tfNQx7xo78QYGMMqbrf/sbyGABlC6AOLQk2hwY0z/M26o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753589994; c=relaxed/simple;
	bh=3ipomrCnve9Oi4ZSNPYTKcE+ltZD40e66pUC1wwRNbc=;
	h=To:Subject:From:Message-Id:Date; b=iipqHfrkblmnK8nQEXYvAH/fBb1fS5mzIRHlrvxUQ78Hosyq+hIr/BPs5kaF9RzREU53XX5vX0nhGv+pSmU9yoiFTShKb1mYWAqRk3U0fV3VhoNfFzSjnOk/JO9CX6xc/dA7FDJC+WkpaUlGBLYrLEhQ1plXtV5sgJAvVbf0rP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPR4F4GW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPR4F4GW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB18AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753589993;
	bh=3ipomrCnve9Oi4ZSNPYTKcE+ltZD40e66pUC1wwRNbc=;
	h=To:Subject:From:Date:From;
	b=TPR4F4GW+i6gmgDsE1Jff4UfxW3RCuqos+wO0cDMGjKo1xyXIeCVS7b4+WM5kn/Rv
	 UwME/8XmyPWVveaN0fAwVfhCVRlBYI8WsQvL6wIXwRXRZpO47UVi5FRNFXBUOvWp/I
	 t4mHOTiqG39IiBBj9MK/PkUQxVLUDE9lN0s2DLk0zmS/EnrOLAKiZHStsSq/wn4Z0f
	 /Ak1lCK02jVsS69OJ7sXyD9Nl7zzrL/rWiimuL9qD126IoBLXcEbtC7y0bHpZEnEXw
	 CIrXRlLtOXVMpgop6oETYnyayb0WVMuZkINZmi+8PyZiLvvt57iMRXRBuAh6JnXbft
	 ZTyfkqGVH32TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9405BC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175358999358.17938.14179286198423391902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da423bf664a3f8a19c70181bb7fb9e020ada018aeb5ac55b0a7e52a6f348683e
Date: Sun, 27 Jul 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753589993
