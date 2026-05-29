Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C6F37AA9E
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 17:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780075354; cv=none; b=uQnFc6Mn5cIsuBiUCIqfWKBuItXuXYR/SFa3QbWNllkxbgUWSLe/jA3yArpkPc3uJD/B3drEHU6mmXqW2RzTrxjLV1aw6pP2LmIpDgZ/gQCw8O40q+YR1kDBOTV7S+/lnk0AsCzqRygAPsp7Dv9UCfvLtn0diKrQ+7n/wKu4ut4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780075354; c=relaxed/simple;
	bh=sKn3ntLRSp1gh9megFMjWQyEYYJcSmcPvWSb+6R2fIE=;
	h=To:Subject:From:Message-Id:Date; b=Upd3xJ0YhK/417jr/xD4rxflRutr8F+cNW3qOkMQMJBp1+agesKAeKfWrNjVKMzyCtLWShFkyV0BReQpXYKZ749lEM4qt4whAXG6x82CW+I8ur2x1d/G4ep0LzS0cIIUgb1Ij9vjnr/WYX3P83LqnM8lVP2wsN5XS2LSaK57hM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YArZhGNV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YArZhGNV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC172C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 17:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780075353;
	bh=sKn3ntLRSp1gh9megFMjWQyEYYJcSmcPvWSb+6R2fIE=;
	h=To:Subject:From:Date:From;
	b=YArZhGNVcr4B3OwrEKPC7hcIJVm54iHPKilufIjnUjas3FQ7nVZqR2uWOIBQHZzPv
	 yz40ccqlUkYpY/SI+lFgxspcFEEstYZKmA14hPl4lHmZ3JrjhlPjiDq3vxJHiCInW9
	 SnbItEWnPSQsz1LonE3q+cLTIkzKSV+YKmbEzJsoa5Gg9C551Frpqz1rZH/GjJp+Jd
	 QNecOLmy1FlQTdnmCa8UFKoI6AKiALpJc0dtcVHnuai3M848Hk9Q8wGTqr1jMIVn1T
	 6J6sJu+t4gEGuYXtFHV8/r1RCDSppYV1PoiUuOWiswhkaCn/QBfHvWyObGGJoSnkDz
	 o3gdc0RIMiCNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7FF1CD6E49
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 17:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178007535373.8922.12794558713946428619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db7ef0cb93782048717847ea5c1d5c7f8e8f7793ddb9f053cfed9b5dcae5b086
Date: Fri, 29 May 2026 17:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780075353
