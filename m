Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5AF61849
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710570497; cv=none; b=IVCo9JEsHmTusEuJhTNqlDLxUkd6SBVYPBF/2grhG4Z1r5ZGdfkbwlra2mvQeOGLmX3TR6DPP5UQJOHSioS9Mwg38ycqE3SkO2mVrhCMqPDkkx7y9TuazaBd33FTi7erzAYemrP52fdMGy7OhBmiBIf8xGxfnxHRMhSeZuU/4eA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710570497; c=relaxed/simple;
	bh=AZmOCOIumiUIH/LSsC88zFO/zEYCh2+Gv3J6V+jHzDQ=;
	h=To:Subject:From:Message-Id:Date; b=CQQ3t+g3MkyMRUQRvuDsMbySB0iSUs02Ufl6VqeBKXXyikp9/4eUoQ/hh32Fp/vYZZiELxtvz8qXp8KiVwvytt8ixfaGJhXqItrjwbXBxkGDRgGd3f4JI4Z09Vf3DVlGk5NplGwYd4SF1l1o4kcTW6TJ7ZrajrSmH4m8NJC+ABw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I22ESZaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I22ESZaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F43BC433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710570496;
	bh=AZmOCOIumiUIH/LSsC88zFO/zEYCh2+Gv3J6V+jHzDQ=;
	h=To:Subject:From:Date:From;
	b=I22ESZaAkEvQoJBxjlLB7djVTVVP7Q+bGS0VtDnJhsXWdU6KVgf0MALXyyBfKTNXL
	 UMUo5B7myEVBtLYQypabyNHEF9X43O9IVi+0VvMQ7bxPuGCYYHfpoeU1bpt3wHNW6K
	 luEugFIIrEiYWfLE2fpnJ4ENhKLhqRiYl4SJcVAO9PV2xoCx8yVlk0UbOD5HknVmjC
	 4Z2jLU97mBf5rapcB+0ohcuniC14z72eUZQ5ZXSXXZ6d6SDDf0sHpE4OHUGQcKO1hn
	 SdViQXoLeBSB6eTp/cOBYnFsVsAtDBfJ/Ac5Aw3WnZcFV6V9l/5Jgupzp5vU+cyuYy
	 kJLmCgcDUBqYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6137FC54E5D
	for <ddprobe@lists.linux.dev>; Sat, 16 Mar 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171057049636.16451.15667077802442367113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c0ff4dd577dd50564175467926420d4ff8118659d84057d03e1329c7e43c9c7
Date: Sat, 16 Mar 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710570496
