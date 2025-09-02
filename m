Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038AA2DEA8C
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756832394; cv=none; b=UWzN/pNKce8EQ+QywFTtGipclWNtsQ9U+4uRe7a6sjA6VsJVWlaSdLDwSa/ggyKqJaCLi1AzxqCy3+eIHW9YjPIr+RE1TQdvgWsDG/gla9i8Gb8ImtPsSPeE3ccUJNnuz6g+SGZc5Jq0OKqNU/sXy9zyEpj8uIByyZvNYByoQkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756832394; c=relaxed/simple;
	bh=7L5y/QOD1bpO7/5Q+Ge43MPCt6KJHN2h11B0GGIi9XA=;
	h=To:Subject:From:Message-Id:Date; b=VhUnJjiMOxzWB8Uv3EV///g7Mwo2UZG8BwA8befdvOfmdTH+BHeHpzW56rtoUN8Nh8488HXIJNOeAMvt6I2jkEKg0xatKmMVx9xNiI5gb+YINW0ypMoQ9bWexO+HioPGrEQDf1J2p7/wFmauPmF49OSiUxHf56/ujR7xT31cuto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C0O+M9GT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C0O+M9GT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1331C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756832393;
	bh=7L5y/QOD1bpO7/5Q+Ge43MPCt6KJHN2h11B0GGIi9XA=;
	h=To:Subject:From:Date:From;
	b=C0O+M9GTjdwppyazrh08lUp7Jo8wWK1mIenjpc15YG+nc2S6PRWD8gaxkL9WTkPAb
	 yZjbLtp9AY1RlyZgeei5FBFbwkdCJiyTMPKlayV2WVeew335mA0X47OM7PAtri5pxf
	 FGlbHWO8IHPNmO7pFEs0r0pdDOE1YOrbnoMaJSk9WWfOwiQjCllxSbs68qogdsc8/H
	 b1egxwjz9VxM/xgUa/R+Alz/nn1K+BIPKOXQlGmBtQR8eZniCYrKHiIMv6FQZxnmgB
	 ai/Ow5cye0+VdR2SK7vvETGE3rTNbO61LH3SKmN6u62kQEJT75zfw229CIjI5bdiwb
	 zWOXh4LNCvDmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA71CA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175683239358.12089.8149414553180353536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0c73bc44dd66abfbaa2fa7de4cadd160346e98ddf19bfdbc8b276e1c7a5c814
Date: Tue, 02 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756832393
