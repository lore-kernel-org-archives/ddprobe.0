Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3594626B97C
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 15:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740670734; cv=none; b=eNtbXuOHAMfu6aX1JecRZCYEOK1oX1+njZNyfBYG6HJzlARuEDEiwHv7HljzdbSIZRo7NWurdPBTzZV0xNztE4OU76OnIeZz/Devpg0JGSk0ekjIQMGaXx92VcBqtQ4OZdgE0c4W9hG99ENmXsG50X5VMP1WwgUcU7m3ceuQTks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740670734; c=relaxed/simple;
	bh=kdqFX7+GI4m6Jol+kBRCvHhGFZu2w3ji+4En5L5VnJk=;
	h=To:Subject:From:Message-Id:Date; b=m4hWJZdTN/AfQHJAOzLanCWkIH1EblN0PYN0liw+dn0rVk/8n38br+l3k/8u+zW3mW3JDEcVQI+nFnhQX+stD/C8+VDcJE54vm5biyLC2ZlnACcRVOCzXEqij2AbCF7bosyfEFGRjmXTTAY24DxF8oCtU3ikNYM+GFHLno1ibrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmQpepzx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmQpepzx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A0BC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 15:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740670733;
	bh=kdqFX7+GI4m6Jol+kBRCvHhGFZu2w3ji+4En5L5VnJk=;
	h=To:Subject:From:Date:From;
	b=EmQpepzxvi47hNDwzujM8WoJaWTJxat4R6AEmbtJSxLksb6M+ccSIdy44m7kJGkGo
	 xTJnPgaOx/fslqDR9xe09/O84orp33B997bRg2OaUlMusal1ZMwTX0evSOqQNzlcsS
	 U+K2FYyVPXgFxWswQwKHJjFWZcRblcO6aandbuTr6UCT6EWo1i7wPByeYo848oKalT
	 58ARASVS2zzt6rzW+hYhgTmOdymaz8PlESYSVZ06emejXMJC3KxDulUnfGYCYSLODE
	 8qB6VbCq8CJwlN66FNdBHwe5zIddwa8b8igVMw+ixDNzrDbxzMrY8p6AYG1TBK1L7Z
	 U2R1b3L9dINJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933BBC19F32
	for <ddprobe@lists.linux.dev>; Thu, 27 Feb 2025 15:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174067073359.24349.13151527822450763962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5138740860bcc90f8a4cbbb63c76add58ed4dddb7c80b549984aecb77a14a98
Date: Thu, 27 Feb 2025 15:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740670733
