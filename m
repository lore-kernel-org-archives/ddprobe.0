Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC8C134A3
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 10:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706266697; cv=none; b=qRpR+v24tjSq30FlR0UWGeOD9iH2OAQC8FTzNfC1Z8WVw9rWVO0J1imQoGJJFmbgkPcHDUt14YGIB9LiDP1EcYAAziuOrfOz29qO7j+s/IvCDMV9J/JjKsUtqR8CJXiDNmGtEL3TUHBG+gJLGCDUwnXA1Bz5Pj11UR62mIDJaFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706266697; c=relaxed/simple;
	bh=wVyxtoNoLP7zhjM8egtg5JE2LHabCkG11X+3GDstRv0=;
	h=To:Subject:From:Message-Id:Date; b=rq1OVRnBZblqSp7Rz5v321qIcB5D9Z2z9VQ6cSRpAuKvrMmCU/labdqZhOszHlVMc9tbWYBFOwi2WEHCtEznvauqsCRbEXoppaNNUmlIpVnz82Vyr7w8ImKdepD7NPq4TYrISSXFHur5+4+1W0Q3V1XCO6aqVNl4W4HzWwqXOgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YshyBMY2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YshyBMY2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 768D3C433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 10:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706266696;
	bh=wVyxtoNoLP7zhjM8egtg5JE2LHabCkG11X+3GDstRv0=;
	h=To:Subject:From:Date:From;
	b=YshyBMY2jg31J4sjiatTmc1FlM63w90HXyoL2y4ka2wquWJtJjchMpDb6zg6lnQT+
	 F5Gwo4GJdCFRqOb17pOKEN01PgB6yZIxamBEEduE+F+0kMNNt9WEBhNLZiQyFVHpFD
	 rNXzluy8TryA0yUpLr23H38RwsFm5ohUalKb59Mbi2VhUKwAfJrN0WAzqKwTM3Urva
	 mJgig4dG/2iPfkyzxniYoWZidCH0sbdGVizuypSWeEHm0ne/Mw0x0VAwtP5b3o6rxt
	 9fQQ+iyhJl5pXeZTwuczSCjH9aFT0c6E+VX0gq/xsGsF1ha7gDEEcQScJsEXkERt3u
	 tSwi2p1ZASM5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B534C47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 10:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170626669636.5298.17491513861674003393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39882c1ad33f92b38b892fe980887cdcfb16c724a3467c0699656e2cf66f154f
Date: Fri, 26 Jan 2024 10:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706266696
