Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D83FB39DBE9
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776334653; cv=none; b=SCarnF5VN7G7RWcX0vltyurFiQ0vXXYHgA5oKkxNPqKSd7zVY3U0DOt7MjtD8wgNSesDomtZZ0okzhEKb02gkuL1x1Edn8IdWlko5qq9vD+t6BJSignwQsRyX+2c7KQzbwEJaqVgB6RvBRvJzkBAmIEhReursiqwih4YGW91fdo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776334653; c=relaxed/simple;
	bh=mr23J5Fn6poQNBPjHEuziL/pNRsYl0nhA1pHK3fTyQ8=;
	h=To:Subject:From:Message-Id:Date; b=YlfbNk9skF0br7UY68voR+J7Tz8Ba0Xlb34csGAdgWBjbdHSUXAegRlhVNcHteeImA46N1vq0leg+dS4I8+A9uqWWW+qTc8oS7DtPxu59JKl9xBXIQsiaa3J2qD9eR+EjdXrGgU87BTnn4Io2B1dBp6j1Gxuing6xIU+hOv6S8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCgFNCrD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCgFNCrD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C43C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776334653;
	bh=mr23J5Fn6poQNBPjHEuziL/pNRsYl0nhA1pHK3fTyQ8=;
	h=To:Subject:From:Date:From;
	b=HCgFNCrDiTQlBwR+p9EbrFzxtnmPguTO9wPBTqV4iNkBCMu4ev0NGanwgn6iE00Hq
	 ysdP7OqLwOKPfFMVjvs94n6C/RrPI19yQDIzNL+rVQzq+XrT9QRprKE1v+xMCP6DVZ
	 VOWisAFdnEeULmosi5Ej1ZTXCSEYIvPlMmkvKWaOPdpPtcEbLJtSNSuCV5kcBg0F73
	 2chCDjWvmCkkQeXMRP+WR5/dlorc1e6eFQNqTin2x3OjU+g6fi9UCzRmnbbv3bgZat
	 wr/mssJ1SjX3qKwqRLIFjgbjPHkl9Oj+gvyh7N13eyNo2FHkgIC+rdJmbnM5DdyzB9
	 uKwH0WC/ohTjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB4CBF8A14D
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177633465369.29494.10318970442220734470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b52e6a6ad305355b81c59957ed3ed8b0ddf9122757fac2447d38ce12c7d7dd5
Date: Thu, 16 Apr 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776334653
