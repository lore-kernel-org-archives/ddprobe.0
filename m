Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30333BA20
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 15:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735830354; cv=none; b=PMGz04ZY14shacJP/oaU/frxVdLW3/Hjc+pF9ix1sEFj3o2qU8KU9M8OB475bqnUlAL0AF4ny8NvCghLaFWHEVhv/oydRHmvheXxERaLhw4CVMuvT7e1wX6usW+Fz/RdSHoKpvRLuEWGsj1s4mo3heYGRjO0G4OdlngGPyVh4vY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735830354; c=relaxed/simple;
	bh=+bKIq/YM9mjBsxdY7RPYGfTjMOP4yvgpzcqFRgHS4B4=;
	h=To:Subject:From:Message-Id:Date; b=E1AZuFg2rMEHacB76FyqgCS6t1lUg6/xzHvlo1AaWld92Ek1K7RSxNIV6n4Cy+V01xZdlCa63EHnJpReIWlNefMxwfJZB5oq5XTWuPWnJuZr7nUxX8CvrMgh5GUwJ0ETcw5VPp7splhbx+oatK/CA3blDNQNww+YU+BhVrEzKrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUC7vSR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUC7vSR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B208CC4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 15:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735830353;
	bh=+bKIq/YM9mjBsxdY7RPYGfTjMOP4yvgpzcqFRgHS4B4=;
	h=To:Subject:From:Date:From;
	b=jUC7vSR0TPBuY27Cj5GJZMJmDhwNQKC9sTgBjlmOfyoz4kGSa3bhPo+NB6Xu1NvvC
	 8ZguDKa4Op0ntkCLQGfOWaG/cJ0CXZ05wHyIx1Lt5EKnHqC7K/BcQwznwXZyBBUUrn
	 HYEJFMYCGeMeFmgcNTs1xzuxpyicbtyu4oByQrIPs5X04yytDBwCRQ5HIv2cccv8cH
	 Q5IHAN2CpRYHGHG333Bt4MX5YSzXA6bQRRGS/0nOlscybZxRa6PPS+QdgtZC6o7dM2
	 VD73OGtBuZvyrpzaX8gSE+7yqvtsVqIEorVuQ+ispWYPY5TlPUNoOb5Om94+eXYkS7
	 si3sgL+fkGW+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A160E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 15:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173583035362.5557.5296716044927281052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: beb54492ef87a10cceddf071e7c8aa5bb057f67bb0358b816f760ffad3f75a23
Date: Thu, 02 Jan 2025 15:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735830353
