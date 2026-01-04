Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117783A1E78
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767560634; cv=none; b=eiOB7TAAiKtU7emk0/Xudak+pFjbUU0k+DV13tgeVtRtDMLKjND+IGaiTQ4lUvDU6Va7qMoNm2jd2tcA5HPVkueOEAlaAzaqL9OIVqXvgZ/+tDcx2U6O8xZFuylUtKqkR0V2zNKR5B/hkiU5aThLBY1UrCbxMIYu6M5dTfDhMHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767560634; c=relaxed/simple;
	bh=irkticjPw1D3DiVKG/33iz4tpZ71XzLBhrJNui09FHs=;
	h=To:Subject:From:Message-Id:Date; b=rZHiqCrMTLg4/keSpXXWQleirXifYhK6IQL38fD4DOP6dw7/L3JD5WD6LA83q24/bqiqnhV3bVOgW/LF3MR42QMl29GkE1uynUYDJMi3XE++FbQfJZIYF48HnluTsVndk6D98ifmWD14TzOz6Vx5TVrhlOfpKlY6E6f92RrIvs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pQ6P7j4x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pQ6P7j4x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5625C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767560633;
	bh=irkticjPw1D3DiVKG/33iz4tpZ71XzLBhrJNui09FHs=;
	h=To:Subject:From:Date:From;
	b=pQ6P7j4xx8W+dY4XkT4x/UhqkSos4/szxqNf9S98O5/CxOXPs6/h29cxKKKvKSBA9
	 fmdwcIGxMbJXl+gXLznvO5ErdPCxtOyfsbbDZXEmtxYdKDygcAK+7vVGgUGQiQkRVx
	 EAjmAahZf16h4Seveq2F7aJudzlVwb73qFZlOTzCUTrPIWsuDsbE84iAnoJNWyttH+
	 A8xcsI+3A24BV6VFkcs3WQRYezpRiyfYZv9WUXHNsrU8IwYFKHDdkBFjuAhBu5QzUu
	 VEJMWzb2eVGKwGWnbtsUu1yDQFURfTZ5ePGIjFDSg8QlWGc/73gwI7zXWzK5bjsko9
	 gkJVtdbDxwwGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CC7C2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176756063358.21125.16540929427361289880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 385b501a355562ac0c578bde018b894d1e82c2e4837ea842c6be40f0412ee803
Date: Sun, 04 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767560633
