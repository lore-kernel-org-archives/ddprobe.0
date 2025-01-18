Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FFD2913
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737201954; cv=none; b=cGQYmAkd89gw+El0ueoDSNjOrlUAuAHDEnzSedkHfu32Jjjb0ZSwyY2x5R6ojcT4P86+Bj1Dr2OFk5b90papASSSxYQZ4+v2766T1707yaZMNaZKg/HgVxoAnjTTSX9aUlLaD7gDT0UQ5r0qOnXS3jV6K1CAdVsROKuMCClJxz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737201954; c=relaxed/simple;
	bh=onveEBl1TpSY+lt80+NHqghjuHejzYP1QGiadoMrm5c=;
	h=To:Subject:From:Message-Id:Date; b=k3frOALvtoEas+6iq+P6FnYP26GPhD5V5Y85p0rh1hJuM0CrF5h3JmSWH8bk7KwhWwVbHurXVFS8+gWVfqRSxB7LIClUWZnQin85/0ixcdwrpYAfz79OqcUR7eRUc+9UdKetat2AEPlY+tJ0WKqvgtXoCMK5zqF2RuMWFhoWKlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4dmdwAN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4dmdwAN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11F9C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737201953;
	bh=onveEBl1TpSY+lt80+NHqghjuHejzYP1QGiadoMrm5c=;
	h=To:Subject:From:Date:From;
	b=p4dmdwANGWSfoCuawUFkd9kHSJTmNrLx8hbBcFfAF8BbYugZmRRviKvhh+OWj/nKD
	 XknvC8naxQRNeSlEeQf7XmsptqZbVoeLSbCk8Gtg2TSIpXbwyEyQP8t77x6TgDJ4bb
	 A5BTBd+bxM9MGgAZEXmEzh1QUKAHZlgW4dRXmae8Mpmwqo8lQt+UZjz3+o6uBCMAln
	 gefN3AvvI/muSXejeaDDZ8VvzA5yk8cT5YfX3JlnyAexOLbfrd9zQPg73s9mlf1Fc6
	 Y+Z/4d4ECrs40hmlakmL8/ihC7hm7YOuAbhCxAjwG8X3FUu1GH5o7y42YuF+jPVwRM
	 dPMzhuuZ/AtYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E7BEC02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173720195357.15446.8891507501683896286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 512eb0b379d15c3a11b4bca205dfbd6987a1244c98092da091004d1e2f6e2fe3
Date: Sat, 18 Jan 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737201953
