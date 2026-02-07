Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132D44C6C
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 17:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770486234; cv=none; b=pE2GSAYHCx2qbvR4pFo9hjno9944wpth7yH28CwXCuKcMEvWhbCxPum+9mXkzkDl8a6fsA+FNCWtZ64N0i0lMlPW+/e9+wNWD0fGMTmyvePWMQEBYDt8pPA1sfhfFfvkhJ7ijlvjhZ/NvSwgyHeo1evt2zKuzCpz/CZkam161JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770486234; c=relaxed/simple;
	bh=YQyHshozvXCVwDzbVtwl9y7fKeGIPIjlnXKbEXBqcRQ=;
	h=To:Subject:From:Message-Id:Date; b=kctQqPkI+OcodrAPDtU9RffiIHGFjca5r0DB9Egt9fQ5MYf+57++Vp57O0Cl5CwkM1nnNP2br3UGL7qPqACxuRQxAWKqgsQTQoc4J+Bd9gIlpWhbga8q2bFUDQ9V5OsRFGGYCEQLXmeZSMcgNDvtegKOwIvF6DZx62qcAmWuRSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P3qUsu3l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P3qUsu3l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD125C16AAE
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 17:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770486233;
	bh=YQyHshozvXCVwDzbVtwl9y7fKeGIPIjlnXKbEXBqcRQ=;
	h=To:Subject:From:Date:From;
	b=P3qUsu3lQZQcbF+ymFrCinYHJnHjQ96Kwqza/a6NGg98KcyEmQ10ikgUG7srmQNS+
	 ir+uJTp4vR+Umex9zI4TBi23V31IgA+q5lQSyR0MTXHf8U/DXp1dpJROyKo+rbS9zR
	 0rRRDF7FfTN6/NTPpnI+pdCtWYkOSyvzETil2lXu0h+j/JWKfqOY/rU9ONuCuyPrnd
	 kElJWKieGOqyH/ThEdoveS0l2Gi23gQ86QMuPetu3YHYGY5xGWmbs3Bej6AIObyh3X
	 9voxDX4Kfi9vttRn97gBiGjHsnZd8BnAeB8jUYPU87HrQRQDoW80Q6edLxS7wWPwCr
	 6+xUBpCyeqklA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D991EE0AF1
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 17:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177048623360.6839.11278095089809039463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09c0d475c3801aa4d72dad8979f3c910f54ace7f25f2645802ea479ad02890ee
Date: Sat, 07 Feb 2026 17:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770486233
