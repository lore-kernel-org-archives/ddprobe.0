Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EC03FA5D9
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790888434; cv=none; b=dAB8Ygzbd2ZFgftIf+wpg1PIN7vaguGzX/4hRqJoyHDIyQhu4snMo9d/dR1EAxIy4DpneW2fIoOBSWHxil0gAAIK92YfkT3I6XZMucFggx0A3cJ2WYTCfX4P0tkRlVs4kCzfBwmtiP9R6Ri5J+ObxSYf9sJAxt1YOL1XGMyNtZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790888434; c=relaxed/simple;
	bh=h7NCYZimXiS2yUBzOJU0ij17scBkERx09ZHN0hdY8QQ=;
	h=To:Subject:From:Message-Id:Date; b=UkVjpPLFLNeCg21H/aAyHUFvMLuwm95I+1vZCz2hzLegfhluXQV+FcpdBC8G29dsZLTsm3NkSqVIeI9xIv0IFzVkTTw66JWTFvkyvDo08P2ZmY9XotKS72pqp5OGRWYIARS15xzqSvbHrlmhL0nV034Dju1CQAM8X+IF6tLv8bQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FtjqHNJG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtjqHNJG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0440C4AF0B
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790888433;
	bh=h7NCYZimXiS2yUBzOJU0ij17scBkERx09ZHN0hdY8QQ=;
	h=To:Subject:From:Date:From;
	b=FtjqHNJG2TSyGk6TBLlFrAgbat42q7SFBNLnl8los67d5nhIKcD6xXv0oBkSr8a6g
	 m0+o39PZsPKRp1C2ATgJav8P+7IyvNJT8H1R7YS9AEHGmLOHA8Vz5/BvKOaYK3BOG9
	 nIB/HuAHyQFElmnTv0zEhwa+9hGDXP7vg0Xa/ofw6MoQAHgHCMFxQRWGRgWwK8U9vl
	 I9UpSfKR8LuvWtPNK9h/tBUdP/MYpuomiRZUA6/WKAV9ANq/YvOtOYbc4rZKaSSo94
	 V6ZMLW7218ek9ZMc503HV3juq7AsjwSt3gK87FTm3I3Y1MuUj2Z9NLyA+05OiFB3KJ
	 S9C2xBLlAor3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB254CA5FCE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179088843369.29320.12174632255762721078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c9de1346384d715fee285159c36db8934fded8a5c701809123cad676e40b568
Date: Thu, 01 Oct 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790888433
