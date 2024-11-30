Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC188468
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733000154; cv=none; b=PioeQGXddgntkdq3p0k5ioKIdVI956iqu0BkNyYcWe+1286lcAYvIqMQS12o/Hn6HaSh45FspNVUmJ1Jd0Fsk1ybnLjjZBy/IlqQfWifV0ICb8W/mKqf6UcHUCH2mo6ygnXelfKRdYeZ49tI7TSYdVBuxr+CaEPNlBAu8Mwk8t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733000154; c=relaxed/simple;
	bh=QNG9a6U4pEtsBy2EZAmAQ8wcrCpz52Mq5cS1EinhKtY=;
	h=To:Subject:From:Message-Id:Date; b=X5v3PD+1Gx854gH3Mz6kaAbzEaKOwWOruWlOLRZtKzaYScC2g85MPht8f08TOh9fKrlahyur83VghkToJQQc9E4WqFXeZ8Ekqm1Uepjkwvi/WQHiwmExgUln2TVLOA56yc2Jg1ilQ0VTec5yLyzwiaLzet1xGwOSULQeAXyN1B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0WR7tjw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0WR7tjw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09C3C4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733000153;
	bh=QNG9a6U4pEtsBy2EZAmAQ8wcrCpz52Mq5cS1EinhKtY=;
	h=To:Subject:From:Date:From;
	b=D0WR7tjwtmySM0fHp3+j39XjcuSc1iutjgjYUUAy7f5sh9j9Oweb1YQi/LwFklkUw
	 Cv7aMwiqBp6ZEtLgcm4RN/yCcCDvaSxKaFTdqNdt8oWuV9pmO2VJg0AlBWIbSh+Ukj
	 Rc6E/sFK+9m3w+4bMrtHDAjLdAtOdMEvNO6Jx0h8ycKIFVstRLHupfpwePmn4/hkIw
	 Y7SUeC6hILY/otMGBXvb8VHnyzuC0S/GFs/jTEhbren3Bg2SbervghyBHqD0di2rfv
	 scHCNBnbm64UOkqbz1/Ee8DqNGp55icIPcjS/r9tlGgtBV9C3a4GF3vvZtIEV7J2nH
	 MuFtmYwqqopwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91756D7360A
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173300015358.23993.7406117887662183772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0eeaacd3ab7f6ecc6f1fc55112ef506a3ddf2ebbf5fcbcdc1cc99350e422a7b9
Date: Sat, 30 Nov 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733000153
