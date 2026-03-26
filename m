Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FCAC24DD15
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774517694; cv=none; b=bgt+RPaHNNxXWhr1L3MqH9KIzV0suDZcEEv6UAe4zCDhihC4AAlf1hEt1egQbAfKaElCnYwCJkuDgtwaIW3FpQDtBJ/2wrGqTgkuDmAir0sZfFfq7B4g07XJnMznXhmanVhcv5nokDVLT4NitXjvVcE6gVzvl/9+jRmj4jtX1mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774517694; c=relaxed/simple;
	bh=jS93LydKlcq/WllYZQGFGyB1WcYGOzQyExG0le71d+I=;
	h=To:Subject:From:Message-Id:Date; b=DDzTJH90OBLDdBHWTBI1ao/F/Li18ZOY3eLCc5BtYT5dK6gj18jd0Jz6+r2da8gGFjC5qFSrVWz/VV/Z7aVIDBgKyDb0HjGDMKjh97G+t4wochWrBoyuIK4yC1Kt1E+KfiLa6Heo9bBDjUSEtdNvKd5yZbyXTT+xKPogKY13P1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjKYPg6U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjKYPg6U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA0AC116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774517693;
	bh=jS93LydKlcq/WllYZQGFGyB1WcYGOzQyExG0le71d+I=;
	h=To:Subject:From:Date:From;
	b=PjKYPg6UU7+q0QvCZrjZTuEXpqg+EiS4x0JFp7UpkPKztfj40xmrJWGI+xp9O4pel
	 LkryzxbLvaUejj3WQHwzw+09J5zf6U83nwe7pnDI/xMmbsz+OlvGlbNiSqeyWBFSKh
	 aBwa9UhzFqSjbKn1XUoAoVR2h71EMr58VuXJ2I2lfOla1TWnPxaVuWkq81iv+TzMwY
	 k0DMy3apdMs32/++ZKSzPcdHYPUR5oEt1fX/jP6tvXucu6hCvwBFXK7Ma+/vZ388rF
	 w0/j+XKOuLMzP6SNVwFahcFF2/cBEZU2UshFT8kndjRVjnng4PY8lbfNasD/Axr3rk
	 eLeo2WPbJxcRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC22106F313
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177451769360.21658.17518831057505951636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cb58d45656b8db3198093628404a4c22d453a3897b294cf4417f4146e99d09f
Date: Thu, 26 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774517693
