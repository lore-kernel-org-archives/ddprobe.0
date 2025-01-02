Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 206EF13E03A
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735858554; cv=none; b=Rc9ybaECFrgBQCWl8SvySUh207BaLkfJffmDfsYgHB2xgT50qBmpQknY2xJ0XKs8rRDd0U5P9LUTpOmy79RdIf7tI0FAmqcuxrsdCGRTMjsufOUTA/cGeUK3kKWrVJO9PKjaIHSL+IKgymHq6EgwIVdvX4hYik0uGPdQuFqpOqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735858554; c=relaxed/simple;
	bh=LedmdiIlRu3MhZTetdzBC/LqHKWxxzJxSncmzLhNkYc=;
	h=To:Subject:From:Message-Id:Date; b=q7wjkzDrY38iFYe7IGF89GaR/KI7OLod/eMUHWoJb2shsBbusQ5UuwsYmH8satv0vNzOl5eGwxi4yBiI13Vay436oNSr9cy/v9ivpLpmIZu/TgATKMpuERlJG7Al72kRjMkyD/4hZUXnS1XSE8KZ3FXLMl+5Q/bOWovT7DRmJyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eehAlXpr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eehAlXpr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35B3C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735858553;
	bh=LedmdiIlRu3MhZTetdzBC/LqHKWxxzJxSncmzLhNkYc=;
	h=To:Subject:From:Date:From;
	b=eehAlXprJtPLYXYdfolOkGy5xNrB8m6+eHo3K9i6yGs7isF6lKFfOvRr2Iv0BppL2
	 DS08oYoQ2X0wQpnCMWQE1cr50DINWjqH/9+V5IkoaePBuw8c8fsRsLNxcGI261D42y
	 Zv2Qazv39tGvWOQtPKGEOCCwYBs6lBnYly6AtA0ghvuYrL9UZUEgAXPlXWX7Odn6Hm
	 fiXGCKMzxwZwTa4USalEVQVlAxJ9Z7JWLparA5DIr5pBR1ew52QUrHNebCflrhMG5/
	 NvNeXwuYG6tk5v60RrxfHIu6q2z+kE1CnBeH+jkhmbfWecj8W41Dz9RHD2EUvUxDYk
	 qE/vToiM2pmdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92342E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173585855359.24468.6738801018818373737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4da3744a2c8660e7dc749e84b09ad78aed039aa98d747230bf23154dc1ba3bf
Date: Thu, 02 Jan 2025 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735858553
