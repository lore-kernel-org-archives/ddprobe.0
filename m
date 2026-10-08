Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 401782D3EEB
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791438634; cv=none; b=VTgs4570wouOY/plOnqQl2Of0q1L11xzHMuaxibdYxXUZ7BrAm/GCs2OmhuynCL988woUsi7gTuYTumhz0XNnauZjH0xsasHQUJMl2IrcygUpiVk2TuSX7mCfawyQf9kcOoM5d2DC697bir7ti7pB5j6U9Piw/jemnOQBndY8VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791438634; c=relaxed/simple;
	bh=Z3ixiGv1c049yxtGTtAB3Wdm7o8Zau4wQK0tSbP1IIU=;
	h=To:Subject:From:Message-Id:Date; b=FX4NPacFfp2yOrkOnQLUwqTexKB//kBe2Rb1b+2ZXRmQdLZcuuTAerdUi3QMfTATq6uS44cwk+MysJpjyPd6ECUof//KrcGivRSfedyhleCnQkruaMrbnEUzw0sSYkLFQhUoe4yUWZHPkExaDTV/Gb8p7aHqHKMOEZj2hJOdw+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nPoqM8VW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nPoqM8VW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5012C2BCFA
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791438633;
	bh=Z3ixiGv1c049yxtGTtAB3Wdm7o8Zau4wQK0tSbP1IIU=;
	h=To:Subject:From:Date:From;
	b=nPoqM8VW5Zi1dDnkr8+NJRRHygrtUfsvGHupYVTTILQggdu4eLejPok66YyAedqbL
	 GTHxO3w5ZGO/S6sKiLLHgPfdW84OmLckU+La8fr+izZ8MFTT+qEUqF+bgk7kkfgacU
	 Foh7+oY7P3iFRznHgzU4Mt6O9Kp1zgWrJrcqm1R5bjY50gcohBm6agvbZziShQ0RXa
	 X6fIpBImOY4Vl6TurZTFC0KH1JN2dqiLEGBYcSp894Nff7zzHdalQL7px8B4298fL7
	 H3J6B5ng8R+kUMToI9eKFQ+zQX6HTWIktGi7DrK/cFt/SAqOSZQeyt3Rc2bHBUKUl/
	 WSRA3x7CxKkdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF3AFCA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179143863368.12638.3464453019479931766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d264e88096fbab6d899b5706b1dc4a62def321f464e56c77b565f0071fa2bb77
Date: Thu, 08 Oct 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791438633
