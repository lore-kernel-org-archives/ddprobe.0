Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F7E376EC
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 09:02:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714208543; cv=none; b=GGtGnAn8ytFK0Ap3jSQeOby3yrBeXHY17IG5u768aUdp5hIljRyp2IebQRXsUO7K6gzln+LcQKP/ddNxfk/Nk0TNxewUmFlbEQgEwNP4NFdEiE5hZGuvMKomFMj/sKIMdf3D/rr3P24pLc/dkhqc8V1GN4LW7di5MG/dQUfSpfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714208543; c=relaxed/simple;
	bh=ryy+kLwCU85qLC1BvVJdbMUsC2YryMRPgJXhkBU0jJY=;
	h=To:Subject:From:Message-Id:Date; b=jxOMu/i5Ca3Axm0fKjmnEFqoXV71FW2kMq/6pjHevU365j74YD+ShHM3QFWKTHuom5pUM/QpE0j5D7YcdhWAzJsqJty21XtdOTnqX4SDYrEZU5eXV5Vpe3bny//C0bo0p3TGWh197HmH1D2wl5C7gsKdZ22XP4f5dwChI9OxDkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q86btwgM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q86btwgM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E68C113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 09:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714208542;
	bh=ryy+kLwCU85qLC1BvVJdbMUsC2YryMRPgJXhkBU0jJY=;
	h=To:Subject:From:Date:From;
	b=Q86btwgMVJT5Od32U3zD5uaEDw7aoMsFgvUy7YAYcUtZyFLiu8FlN46Eu5Epz5BSS
	 +FzzvEcAuH5eYzrveFKounkbhUQ6wQZIqzrWgssqwAlmprJlHVAaJRRMydmCSgk/Bk
	 vxVWDVxv8P5QW8MorkXjnVwRXSFc5cPDnCwVBmNHwoJQfOm0pZrVbXoIdml5q0DORZ
	 yXZ1TMY3ZBSfOfcokCkQNkyXx58VS7o1Okhvr2kuHG0BAakyd7DqctL9jUu5JLKHpE
	 fpFF91gHizedHJDdzL65M7vbhGJU1/VWRwjHh0fdPif2PH7HNM3bxq/rU8CSUs5ZX2
	 8tzcD48IEO+LA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB9BBC10F16
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 09:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171420854275.8533.11782427253238680792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 164fe9bf40a2ce3d9113654f5a7de7cba6a7c512c6c2234393b10a03cb1714a3
Date: Sat, 27 Apr 2024 09:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714208542
