Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 670B3358A7
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 05:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718171303; cv=none; b=QzNXZg7JMGCaCmbzy3+B7+wWTpJgugtrHVyahesCw8e4ddnVwJuXAOWEkVVU6uVzjLMHBY39xecQw9M9x+hZ12py6+rY1jgVbA85iJwDSW6TO24LA1CNRGDDPkTtF0nVJgAfj5LnAik9W+OPj7tXf2FAGWVQYu4QHoZu5O7UP/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718171303; c=relaxed/simple;
	bh=RIqTUkcsyyHdb9MJFD9WSsFXttHO87u4jR7AJGuI1AQ=;
	h=To:Subject:From:Message-Id:Date; b=MuJZ/yw0o9xkeZ0IdLySyItJTcThSf9CNNVJmrlLf6IAnnjyEDzry5erxGnUbPCHb36dOJJehqewBW/3lk8mPXlJsjeTYO7b7eu2yWhslRxrKTqxQyU/avxy+8rzSo5Vr6k3Scr6lTKplT9TcEzdAzTX2FpDegUp7Y6x9MxmwLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnYAl4Es; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnYAl4Es"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1A09C32786
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 05:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718171302;
	bh=RIqTUkcsyyHdb9MJFD9WSsFXttHO87u4jR7AJGuI1AQ=;
	h=To:Subject:From:Date:From;
	b=CnYAl4EsXCmLPjMFbKBT4LoDOCg0jD+kNdAtGLS1uXX6vMdTLOCFVjt9QDHSnuSda
	 QEiMaUoTcPkrYqEk/q4DdXSfblCc/+xUGPtTaOgdaFBUJRG3AYLKZM/AV/eTjc2So1
	 pJrldhu+NaZ3ASFLxGYC5fzfjIv5mfkHxxMCgtWekHhj+6nK8m+vfEEgj1l0XkRm5I
	 mLSTdgADeEN2sag7OEGrWCO8G7IrpgiDql8qEGGkuwNAkoc7Any4fxhUtKqE+UeYPS
	 tcWnOa8VcXyTJIPhzjMUuoMk213Y1ocembX7yE3LAujiYJ7TrapACT2BSFVuiIRLhy
	 yQFNsmhxzdVdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBEE3C27C53
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 05:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171817130276.954.17469961942615078957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89dc0173f51baa94396c75e7ab5fccefbeb6613648e65ad259f9e758d96be90c
Date: Wed, 12 Jun 2024 05:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718171302
