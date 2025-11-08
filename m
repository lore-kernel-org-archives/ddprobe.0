Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE2517BA6
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762605594; cv=none; b=cYfnnEfCVdHg2gbTWDb5IPYKicNpE6Ruv2fbLaz55HrWGWTQflpT6AcGwqtaw63E6dSUnUSGa6ex4IT/4Te2LjjSA4kI1H7OZTUDiYKvivDWxz3sI8NA+p+n46vUK6tNpn8F8Eh0F4qq6EMBkIs0cEk03XozepU6JAkQ2i1yXF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762605594; c=relaxed/simple;
	bh=OfyagGD8RZKB1hZTisYUrwqaJF6+r4K9nLAIvF1bKDE=;
	h=To:Subject:From:Message-Id:Date; b=L9ocOnnUlfQzY+qdRYU9K1Gmh79EznCjs7sxLwK9C/8cyH1IeIo+rC+QxtM3c32oZ567kmO0qDruS0y8g5dimwR3XnLXhTHLIA89jveSata3JKTm79lNGHqWI9PfmnHwf2eQz3GTIE/bdZ4SPy0YCZoOBcT39mB/iRNhe1xWFRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+yfw5+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k+yfw5+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A143CC16AAE
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762605593;
	bh=OfyagGD8RZKB1hZTisYUrwqaJF6+r4K9nLAIvF1bKDE=;
	h=To:Subject:From:Date:From;
	b=k+yfw5+ovvhQ6zDYIR5h49udvwIcXP1q0Eo3gRwswnRn4Lapc8/bpc/QhvsDZDCC3
	 XzZfe6mA83gE8S35rS7OJKigG4OUscEunIasKy4JWvjvLo8nIbB1CtviHcQdJ6VYb4
	 2w4YTGxdPily4W1ITWCAkxVTAXLgob+ckWD9RuPOvFNy0vPZsNeLPf+FCGmNPCN3qb
	 fPvpvZU7z58CXY8RWwmf4lY3QMsEdQrAAFD59dKkRGaWr9DQrozAUVnQoVEWxrvAjt
	 EC/ju9z67PV6hOu9tKi/5UpDk2NmuKr42vl0oKXwaeeQeEoA5Df+iZ/5au0llYP1AY
	 lAUckrDmApReQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9504BCCFA13
	for <ddprobe@lists.linux.dev>; Sat,  8 Nov 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176260559357.32303.4372558346777992767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d45d99e4367b2c47bcf2b0ee3a64ad1acbf28969a87976a167e6e1ef2e67bbd
Date: Sat, 08 Nov 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762605593
