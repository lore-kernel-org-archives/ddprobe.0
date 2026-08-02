Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC7A3B7B70
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785688235; cv=none; b=fFkF+D9Fs+2Rew1+fee1vxnYNn+n4j55RfE6fD0t7gMIpKbZsG9L3QyO5aUzb03VpDSUUSguXK+L/bFgt4+nN2Gus/o7Z+j+jieWpup+Njkn0yfX1RuoPXxAqy+CInnTCtN6GPDB7FKSQ0wWJPL09EJcKgqoHepwb05+UsTJySg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785688235; c=relaxed/simple;
	bh=PcCWLKBTlzNFsEPucMlN0PeVFWFaNYg+ZuIKidW1MA4=;
	h=To:Subject:From:Message-Id:Date; b=nJQM1j8mVchh8L3veFHkBWO4SKC63ruKjQK1jp8g6OkGw/H34tducmy4tUCTl8RJq9p3fRl/zE7K0RXDQOwS7vTIwFCB3Nqp6KEWkQIt7Jd4uz+yWVnLZu5zc9iLR6JbTDRIWIJ/TbHrC2XQFLzA2HQgH3p40izyi50KRFjpHWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I4VIg4u7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I4VIg4u7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CABEEC19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785688233;
	bh=PcCWLKBTlzNFsEPucMlN0PeVFWFaNYg+ZuIKidW1MA4=;
	h=To:Subject:From:Date:From;
	b=I4VIg4u7Q385JkYaucdpG7s2Fq0LT5nkriDUey13B6xcJW0topMQilONIdyM0b86h
	 L/3IhjkWIlf18eHlUvkVkiSVFS5SNGPOPskw7+SVS0Fb1Wm/AGyekzhwh2hx/cPY8f
	 CVQp+W3Qn1JoUKK3pWfS94eNIa3cxMtcfFkSdyb4Zt9aUFNFMwsbgBpAhzSCQQbY00
	 Kq96o3u6acgK78/i/5JzkF6eJEaEII18bYoif1Xvt1ATReAgpF80ZNCIEiSgnsBU3Z
	 BoIB9zxAH7f8lG+bWy5zHjfJ+p7wJ88zLIHx9InF7bcX+II/NpVELG9zI8seoKKK4t
	 dCTJXxkAMkgLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D77C55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178568823368.13353.4604693381594941019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82089d887dd54ced91e7d3b5f2c625093fd3d638d18b99c0fa5aef5520cbcd2e
Date: Sun, 02 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785688233
