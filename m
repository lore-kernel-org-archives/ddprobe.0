Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C733EF0D7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 02:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784601514; cv=none; b=LuA03TJsLy7oJnZ8Kc8piQlcGybWNAl1lTDZ8VCZ+TBkoukyz0T732XNe2yBf82CTAbZO5qmj81Djce4Qr2a263tRt4hCzEQgOqxjwVfDglM2oWBmYoEcit8GAF+Zt6EqJLgkCZIpFPkHJGNaZvGuECJmuJdcoObuaHf5g2iU6o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784601514; c=relaxed/simple;
	bh=2XWkdJ6V0WbYFDCkLWraKlJ2PF3eiDhdVcc71ZCCgNs=;
	h=To:Subject:From:Message-Id:Date; b=a5P84VAya4nvxJZa4yZEslHYZsQ71L7x/aATzO0FOw2VXw9lMDAIB9Vq/N26deyVw8SwS9CRhfU8n4FYXRdp7JtfJMzk8OQgPzVyl2ICddheNTG5bwTz2bIJ8HA4ggJuKA9p1dLSuAQBj85CNgg/zKHzXRYgKO0c/JVdGgCSlVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nBqT9Wnk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nBqT9Wnk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6995C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 02:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784601513;
	bh=2XWkdJ6V0WbYFDCkLWraKlJ2PF3eiDhdVcc71ZCCgNs=;
	h=To:Subject:From:Date:From;
	b=nBqT9WnkPGXDwzR+rqC7nhFh9Mto7RecHbLaUfM5/DW2B0TuFePZACydBZU9DYaYw
	 /Df9iRDsY6nIvybuEeCq47iv6mMH5iHJDnTyWibfHhAa8udc1g6EAMDENXeuEABPIG
	 r4fQzU/9JDDG0g6LxZRiVAbKR8PnY/a5+Z7yoLNtt58TlRfICdJ9Wwp+JK6az4rMAs
	 RTbxoZJeudedl8AR3YmS9buOJmmx7QUZeGJ1KRHB+AH+MfvN/6G29pQ3u9JMfOXdFz
	 7I8Gm3Zeq0KEn52gyRJ5B41F2NNpqa/fzLOcKLgL/bkwnQs+dJaTwkEN/ODsz7zZDq
	 jnvQYB+Z56oBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4A45C44520
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 02:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178460151372.5209.16284735973894364819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f56d3f090e8f469d60afae62e94e995717e677775a7fbd373fc2582db950b9
Date: Tue, 21 Jul 2026 02:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784601513
