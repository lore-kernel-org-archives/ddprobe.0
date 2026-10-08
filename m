Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C304346E5D
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791497434; cv=none; b=XHYRjj8nNfQzAk4CxyJesT226smZ32ikp0oeVe7ez+ku8nbTrsot/OQJhctQv+40ni6KTiB1Gapkx3V2wSQXeZVTdVZz90s2ewLCB7o/TD0Db41RYz5cwNUcc/6zwSEuHPni8mHUY3xP2QMPJTtDcKs/e+AmWr39UAQO08wxBTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791497434; c=relaxed/simple;
	bh=2s8KZjI5WI0K9EtqMq6SVFIWAGbX8itojLrh8wOAgaM=;
	h=To:Subject:From:Message-Id:Date; b=kfdPlK7OcVWqAQ18dvC28LOxtR6Jv2y3Vrtq9Wiqc0TiVm8D0u781elcmVpaFYEQJfFCFv0Lp328F6NqI9mboZVL2N5NIdff8wEglMaPy40PqWap/jdMqMY6KINKdcsAA4Y5FXPl/HFpCdznnlgQW9KFbef+ZYWK6zxeqUmXYqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3O+ih0v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3O+ih0v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1995C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791497433;
	bh=2s8KZjI5WI0K9EtqMq6SVFIWAGbX8itojLrh8wOAgaM=;
	h=To:Subject:From:Date:From;
	b=M3O+ih0vpqpN96pRlKWSGFROvUA0ru2RH0w+12fhloiOR4QuHKGhe/VnODVAww3OL
	 Vd9sqquuZGt4XPzzETu+YQNbF2oOiC9RA6d1yzoEHYPJUmq2ApWPDHzno0K/KaE8JT
	 ZNQhLzjXm6uUjO3XSD4fOsA8WsZwuAzJzh8Dl/REozjFaCPXdOGxDTba1FzQbzfY5F
	 Vgn6j8I63TuLjpXs3AMhTkZk4rEriavmuAC8P2Ij9/zKXJuKjHadZPZGn2jZPqG20V
	 T5bWlNOn61/pJmEsRjrAfJUvabWIgQmyFR0V4atsJCsId0/IoqbdgPXB4De7PiAUNI
	 DqNXNCRcVS/Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA46CCA6015
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179149743369.29396.11006139348613786433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7671d62a23de06e52d87caf21adb5fad9240b60386e05a9bcab12124c3d12c27
Date: Thu, 08 Oct 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791497433
