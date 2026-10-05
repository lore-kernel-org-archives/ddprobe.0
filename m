Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5FA37B022
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 21:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791234634; cv=none; b=Dzl5ktClDEatlxb5Qz+cm6zU9Vgxmr8TAaxw977rX7TiraXBktoJol47AXXjteRi3HGjTLOjOR1gZPX05NBrlOPG9cYxRY3cTO0wV+Bb0t0vICS7VZtBtwdP2nwSjA2UIUm2Y8+C/TnLARGfNT4AUUFfaV4iWRkdoh1W2tnYL0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791234634; c=relaxed/simple;
	bh=R63M6uhJvm+WIVZx/KZxpSFgUTtFakHh4VTKzEBlfpE=;
	h=To:Subject:From:Message-Id:Date; b=V9w0B8nEkrCl2fq7+yPUOocU9Y5Ad+VVOPTHvHjDNi7kz2HkpJP83w1KPot3iAHnF+E+KG/Q/Jocb1ovz1AiNHJCBxuzMKP9rdpBKQHKWef4XhvP7S7KSRqeK4kktrJuuIsoMBQO17rkiJ02OtD2GKtBB+P6QiMx4kmIS+tSMvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hW7+eRx5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hW7+eRx5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3ED3C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791234633;
	bh=R63M6uhJvm+WIVZx/KZxpSFgUTtFakHh4VTKzEBlfpE=;
	h=To:Subject:From:Date:From;
	b=hW7+eRx5SLBSYCCWN30lmJsCsEPLYyN4gJcCQ1q8TdZoofY3yPyO1LwKVbgJL2ehK
	 K4bJS4VED/92ylkKdxrvLlGGfnbvmh+kcJZcC4C19XzECyHjbRaR7lFyakZw7LgZav
	 EPAQ7a4OOAvzHLnKAkDhQ87xNzR6VmvI+MiCSh645cTZIQVfJu9dnElA+6syC2vv7/
	 xxkd9IXEEoRLlyMzPgHxOC4n3/WpXOuftaRjWuYT1pg2gd8AuEAKn9iDcdTdocJizI
	 HoISzWcQd4W9wm8th48PoedpxSCtBay2cDM1WVSNJLyBVpfKvG48OUvY+PZgxwS2fz
	 6cij1R5SgFJew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE349CA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179123463370.19790.5651426368545965953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87baac9298963a1077e1b2a4177d470942bad04923bddfb12fb55b694b96b95c
Date: Mon, 05 Oct 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791234633
