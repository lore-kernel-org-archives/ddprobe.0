Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1255C27B343
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768274034; cv=none; b=A8kVe+YOHU2yoYfGgcROA9YEvihl741aO/vgELTGenwNWcEy1DT/z9tHdor10koUP00bsLQ/pD2INduborldoGbq4DbNrjyN/4+G8yKi/EdCgQ2ck4h9jgV/PuZVpohI02BQQf4cXFc/xKx8ZbdbGOvYiyYO8auA9OBLUTZGBVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768274034; c=relaxed/simple;
	bh=dz1QEDSuFO3lsvs9DIaq3lifMM8hVVBUeJXMT5jiHuM=;
	h=To:Subject:From:Message-Id:Date; b=QyEBvnjSqlSNPzMdTtLQInqNc6GM93LcJp5Lmb3bXJ52q30xa44HWSlhBEK/4BxXIGgD7XWGWc7+BeRQ73mbTArIYV732XPUVcCEyPv3ocb7Eplu/03V85wop+7brc/IMM5rjd7gdeksO6ohMeYmMXU+8nErhj8aFgWwyGjgJ/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PpQcysAu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PpQcysAu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AA78C116D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768274033;
	bh=dz1QEDSuFO3lsvs9DIaq3lifMM8hVVBUeJXMT5jiHuM=;
	h=To:Subject:From:Date:From;
	b=PpQcysAu5GARMcps64fsH6pYgtinjPP665fQdoFAzc+bmiLSQYwUUuoVpKhBTzoEL
	 UcniTUEDd9YpKb5A0Y4l2bGMiAW3GB0bIKN4YZUZZyE2FidKtrJ2/AdJjjwGRlDikY
	 r4+62ftUF3lrbOcJzrQ3huNhlaiaiuw2G7kdvQ+VgicXghyFTgShDZYTbKkRSCok8p
	 bgKtOfK+VwKHgHWdxe2Gid6P48LaxWDAJp1ATn5R7fn4CiJLaP56YiNnQuWa/4FMrj
	 rt9zS3Hc96Wso5Z4QrBlXFFPvTTz1CSut8dEOrs/FV4AHTTBtiv/9XouqwV98X8d9p
	 QLhzcP6rThRIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919EED29DC2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176827403358.12207.1159154445002683647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b0463bb107c6dce13545ac4a931db4058491923ae12c1c5ed5b16fdb462ffb4
Date: Tue, 13 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768274033
