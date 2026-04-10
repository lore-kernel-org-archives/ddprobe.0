Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B9922578D
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775833654; cv=none; b=bB5CPguOF56SbQrHA5GqIHlPkiLJ19tJReeK1Qdp9ZN5/+yu3HGBQWzanfIkuJ4bH9eMXEYaRUGKLApeA6/+gBYWovopiOtXZvhQADQeXxMDbSTiN36Vhs4fudlyAMd5U2TLJwWWWf70RJYHr6Yj2DoS/iOz1bj4jSBncjXB6u4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775833654; c=relaxed/simple;
	bh=7U5yHfZWokOTiDNaUpnFOZ83jdWub2ps5qUBW+YWvvY=;
	h=To:Subject:From:Message-Id:Date; b=Bhjq+MRTw8voWi+/QMco+iZi6ZJDTOnJIj8vzpmpXSRXk0rKjYk/l2V9OUlRNQhb7sknBILdCoqGhrjy6Iq6rMYXHy3RroO8V57WnGpldo367Pbb4sBemQroGvqhWKCHOhT8NEG70gmTctGNv34fodrintwEQ863Hkg3fpVq8uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YqF82aIG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YqF82aIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB92BC2BC87
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775833653;
	bh=7U5yHfZWokOTiDNaUpnFOZ83jdWub2ps5qUBW+YWvvY=;
	h=To:Subject:From:Date:From;
	b=YqF82aIGt/OXmWnzvl74wqnfeep+PjZA01iwQZPzEr91sIa+hGFnLOGyvmQDUvdWY
	 KIgLDUNXl2nu4mJueVtXYbPC3LjgvclSz7Fc/AB1IUlyphP7RUImy3n2ITaUVBd4OV
	 SJYrkTGwsxpHrMyOC1fRs2XZvTfJ/mTQ76NQrJYv6Rskk74mUQDKXM5rkP9ZY+GIM3
	 gUV+NUSAfn0s1uZ2vPglnIh6douaaiJ001KfcUcOxe2qWEisxh+I2X1ObWCczYKgg5
	 1eXv6ywuBbHBaIQO0xronzkWKwkMWfQfQxKWN/t9IYJdeZwjQzallv7jm2UqPMbgsZ
	 PkwmYkQE/eVrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB28F459ED
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177583365369.8628.2365048946537929033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f84540803af73c29f916fddca2b4f83e0438c4fa28ca529de6edb06e4cd948de
Date: Fri, 10 Apr 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775833653
