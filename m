Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332D43BF679
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778006254; cv=none; b=Z4IBeqcFhX5zVeCrXzm4TQZmgT6wcrK69UKp5fClmE47cxtPAv4Wam9XIabkeH5rQLC5Dwy4/grxtyma1igAKqbP93y3XabJQTtQ9oekK5+CtI9od4DW9n2atDu2pMhHi0nYfD67q6jeQ3jTcvWwPnl30fnp3UZs36BU9vqbBRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778006254; c=relaxed/simple;
	bh=UE+SpOHadFLt1ukPm6EZeBJSqnzFY4m5bhR+SE2HZrs=;
	h=To:Subject:From:Message-Id:Date; b=FMVi+moTFMjK1d5mulhJTFCCbubm5BUwm7KWKl4nLW4CaNnxi2IAMHnDeO2JWZaoj+9x2ud2o+q1EAo9//hVBa1g7mooI51tgyX45GNyH8xZ2pE4yzPPJ6StqPFqLdzOzS5QxO0JhR+P85F97c98gDuJ7OBNVNAqo5gFs+4/03I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m8WCZvOG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m8WCZvOG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7BAC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778006253;
	bh=UE+SpOHadFLt1ukPm6EZeBJSqnzFY4m5bhR+SE2HZrs=;
	h=To:Subject:From:Date:From;
	b=m8WCZvOGHbep5hNAXij9LxrZkPGSdK8JaOvzF4dHYXu+Fr/VQr5tx2zBs5cTz8DzO
	 oe15BXyP6J7AHtziSQP6OAqgHFujzuKffbgpSXtAP6B21UqPfJQ33MQEPq8VOURtPh
	 NDKW7VIoQokDAYNbpq/rwcJ+fn2OUzBGm7Gmrp7WoM50LVgLd5DtkRv3jMW6lqpumx
	 +u8fuWEHDJlcToxP7PJgv2drjp844kjFSalYT6otqDHTytPGatm6UGRyVhlKrJbl3T
	 pdOmxoVsC+zfxwlqjjz3B6sOXjRpfzxB1BlZu/0I8FOfhSpIcqcF7a8t3jtNMAJvRj
	 6Kc39kugofnMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0FFCD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177800625369.17641.6046691856585434931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c85e60538030bc4994c561409c3c72262362919116ee56b071942b1c783ce34f
Date: Tue, 05 May 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778006253
