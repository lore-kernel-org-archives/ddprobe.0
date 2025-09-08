Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA3AB281375
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757327993; cv=none; b=oEZdyh3PjUgld0TYXABWfCGxMzl3J4RFdOKyYKLCRCBI909FDKJ1dGwKbHn4iyUhbXReZX7OJRePGq+yobdg8AzIho4j1clUAaQcLJyGoGrvI+VtDiImR5mnzaSN6WEQLLEApqUcNXn4tzJImf7Tv3bJimtc4ivo0shaMga1gSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757327993; c=relaxed/simple;
	bh=sgOv/KVjSnLNo51Adnroy9FNo9DIfjVj0ldFyAcXuoA=;
	h=To:Subject:From:Message-Id:Date; b=lHty0QSscwVO7ilSy5MpNn2nvvjpNBTQXeMUFJfV3hLI0RsAmskRt5u0tKSp483LnDoXBbS81fvZk+n+crYLitrj2z2pYZCWAI6aT655rlv34XVzwd4KU6zoB+H4CryUrnAJ3pkBVEyurwadMejW9yWe2+fEfywC+ca5r9dQN+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tiK/vvdz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tiK/vvdz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBD2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757327993;
	bh=sgOv/KVjSnLNo51Adnroy9FNo9DIfjVj0ldFyAcXuoA=;
	h=To:Subject:From:Date:From;
	b=tiK/vvdzyv/BLgOeGk9lwGCFCS6iLRh9rw1yKzZ5cbCkqdTYz4U4zpA+1qH5N42wz
	 +UiPE4POT8ycstNasqgCwZjoDZMugbA9+u4jyTB6cUtzPgM3/dQ6oUbGiFRJ457yvF
	 8hYv4zpV2myATHgRadubbo1nReCZ914XP/fLr45jJpyCQuHEFMAC/q7iIRPLHRH3Tz
	 CSCDH9dQYpqgzKjB66X7NpjS+9B726vqSaJH7bY+NaUlXO/GTvM5sZntyrPHLREZoE
	 LZp6NlLqQHaheHDuD0xiosBxtl9vVrDTZZWF6NggTm3jGAS/gpRWsVgbsezEyH2chS
	 UXmJ5HR6xePpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E0CECAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175732799357.13379.14944260202232929134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c4b67fc48f61f2e1e5cafc8417f1f954dc88cf466e6ac8ee42be5ff848a78b9
Date: Mon, 08 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757327993
