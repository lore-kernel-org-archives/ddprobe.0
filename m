Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9DE6194141
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739237753; cv=none; b=QPibGe9R5AcOO7j42Zvw3mwnh/xoRNDEFNUOb1b2f9iNnF5ER1Qj1UcHR53FgRMW/XbAFwDDWrqGnF4v1wg8nhn2qYYb4rEeoyaKhYK73PttsXFb63xyLLEi3Tys96UotsFr4a2GGQTRyU3qRhHvCaclQBsxJnw+8/sLN+lyFeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739237753; c=relaxed/simple;
	bh=9Lu38dN0dkPP2OdKjozt18dtt54JlbnTQwyPucqHtXo=;
	h=To:Subject:From:Message-Id:Date; b=XvjgGLnbHGrBZIfE9GmXmpIQv3H4QZo4spdS/pDSu1FkotoJXLzlELnVP2i+hxr8squQTVbg/8NVIMb+wg2TJcpWFZYyoSAMle5N6pOfULPguBQ1imW4O9WLFW9/MUAad11P0D/0HpjGU/LYyin8DORCjNv3qSrdxfyopHDmP0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uV8m+tHH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uV8m+tHH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9E41C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739237753;
	bh=9Lu38dN0dkPP2OdKjozt18dtt54JlbnTQwyPucqHtXo=;
	h=To:Subject:From:Date:From;
	b=uV8m+tHHlsWYKEjKZbDVYuaXY+jCqbM2EvveM/jlp3kXTOwgqrprrPPCUPKPa+dB3
	 W/UECIbmPWr+rJekOZcFQZFtEjyYAZOseI+bPGcWgDsYs4UZU1RXJwo/pwOb7wFpKI
	 B1SsTp50Haj0Pw+f8L7s/SNWZizKHNjBL/IoiP+KcQXsdWxgcLPT+n7Qz7rXvORrVT
	 yjzIzKRDJoS0f16OlgH6eNsqDzUNr+MAfPmk6QLeoX+Kf33XrGbUDeVWrBVShRKJBU
	 dBqkdwVZ36YhUPnUbyDRdmQVQlhiwna5ILNdzFa0sWZv6iTbBNNG7nssUmoQIVdXeJ
	 ha8qu6y0Xpfdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A898C02198
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173923775362.16349.10151743569873048491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba54cd3d38a81c40c829385c5e1ca316a69bd172918cbf517c45f43ba786c95b
Date: Tue, 11 Feb 2025 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739237753
