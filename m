Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D4F6FC5
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 23:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737935155; cv=none; b=NmPcYIsZKoyqOBfNhhkuOQWYnfgLgpL0KJmPURAeKQeJocvrSKqB/W9sJgCUMtEt3UaJbDrYAW5bz0IuY+LNwT1e1lOphlxusQWsHM3nNEs1GgFEQrocTh9iJHkKsjPl/yU+fCkpH4xS7ylKEJiJ5Z8DwFypu5/pUtptGxzKicc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737935155; c=relaxed/simple;
	bh=dABRoBShHalvMx4RiJeislIkhdqM0yLVvDdfpTjkZGA=;
	h=To:Subject:From:Message-Id:Date; b=PATBglSOuVJngjZp0ni13lwf+ijEo1Yjb9IaQgW7q20VDQzBWvHYID3DN01V8fWjPs0Tq+/8a2+AIziDqL1frsf9+hAbM1ZPay7HZYstCIe9ttUrdwHq5Y1ApUvHGyEUxvjXEhUIgos3HglcVwx6Kg2PJMpNBfgPUtVFnYATlUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=grPJrhlD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="grPJrhlD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB673C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 23:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737935153;
	bh=dABRoBShHalvMx4RiJeislIkhdqM0yLVvDdfpTjkZGA=;
	h=To:Subject:From:Date:From;
	b=grPJrhlDzQUdmM0diDLkCO1NnOoAfU7Cad2wIWWKb8mfyPaYtGVUYyJVV39abOL4P
	 ABVZummCZIdzFVYIlCdplpuudzTYS5DYfyIig4XEFyzldWQ7ohN+zKL5WYH9d0d+pX
	 3DW/JGE8xjJ9OJ+E0Qpab4eu0SEOrERXhD2ArqfNIVPto/9G8Eef9ltKiKB8FEx0Py
	 yG82UYuC89vxi1hkEcwms8ZUYa5piMfcV3OI1eXKE5a7OJLwwog5MscyucvJvHHGz2
	 P+nKdcHz1nVOlO2/eHpnhknrjW3lOtly3cyTWBqJDfNOxzdxfoqlUXZ88sSs2KLt/c
	 bz5b3jzct+olA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964EDC0218D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 23:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173793515358.3868.7497742377135792620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3cf1ba821af42da5502393db0e40863d6e8646552145d03ecb84fa56a8606f4
Date: Sun, 26 Jan 2025 23:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737935153
