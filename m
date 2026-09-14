Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AA373E3D80
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789372234; cv=none; b=FWQqmQL+YWcIcLGuNHlC4/ej7OZ+9dk+C08W8MBvqXG6X4ZvgU8GkRaH1S2MRlF8AsbwTbVidvRIe+1IgQi5Y6/sUXUyiQSpCxqV3QxWUk+aXPCCd4aXzFblTJ4CxOtLRU3sw8MJSOKud3WGDluB5Rk4dsn1bKG1X0xPsSUCfus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789372234; c=relaxed/simple;
	bh=FJQrurYpVnqNPvGKOuPs+9mWE34UeGHfNOEa2qcbOO8=;
	h=To:Subject:From:Message-Id:Date; b=ipow2+kZx7pLQmHU8meo6JLxHcRGcivFAB1BmmaepBEVqWQrw6DiKlI3gSXHrRKkMspmCc5zr8yI3Wdm+jvLwjxSfrT8DWt16vijUtZiald744Tt94151Y3W+gnEP7A7vRLdS/uULxaK9y36NZokuc2joQMEi/AtH1I2hCnb+z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfp680bY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfp680bY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBD2CC2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789372233;
	bh=FJQrurYpVnqNPvGKOuPs+9mWE34UeGHfNOEa2qcbOO8=;
	h=To:Subject:From:Date:From;
	b=cfp680bY8TdcZlVuKmfj1Gt2woAYJo5LaZQFCYsyxV/dmfrisapmVAwkL9BhMI8Fb
	 RbAn/bqVhNDE1hqa2TRm7S8LThN6jgFLGru1gZsRctWsvi0LP5fIUhcLb4ZA+9vsqV
	 N7aXr0hqSrdZOjReJP74MTztLrloWhPcccv9tr0fKDkaU1OPukYeQO+MdlxllaQfvK
	 bsJQ+L3Lub7llWKZJdCwih8piypLiLlin4bPvXl09hoQsn3750EZDHHp274kx5fE1W
	 dQIftQeXo9jJhpcWlWyJmn9PRfgIbe5d6K2+w2J7V7H9um4UGn9ZJgLMt6ilrWLGxM
	 xBGKLiuUFRoYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9ADBC88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178937223368.5984.14072418380162909840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35a1f12b272100b0f0b73e8a8015dcaf579bd25be6f2e9e88fbd79b58ea1538d
Date: Mon, 14 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789372233
