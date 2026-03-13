Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C9C21883E
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773390294; cv=none; b=k3GyRRYjixjAvw8yw4FtaVNp7353QKBGsC4ffz8+XgAbkXTAqbtDqmyMXNk1wkgMFexCBuc2T+llngSuVLf5/y6S59/U38704OqRllxkXY6bXC1+C4lMYPxApT/5LAG81YlBcPInEqH7k/pbBjbI/g4oOc3Xn3uNGpnGFngWJLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773390294; c=relaxed/simple;
	bh=s2yDv1KeJuhqkr9iMqXLD0oZ55pqKiIZgAHwllLbxjU=;
	h=To:Subject:From:Message-Id:Date; b=YriBuvrH+0ojOnxvXRh6c0WVeVIngttm4grN3IVAcr87eLmFYPYZzaUXCwsh3XA7Pgz3dzxW78/no+AmEa9ARIFlQz93YdapFzd+B6wvfZRnECyLUvNJcowvG1JpRYa7QuVuUYm/dhDZ2/fgGiEyD7XbilO5CEGyfXL5MQO5lxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A2fDUU01; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A2fDUU01"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEAC2C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 08:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773390293;
	bh=s2yDv1KeJuhqkr9iMqXLD0oZ55pqKiIZgAHwllLbxjU=;
	h=To:Subject:From:Date:From;
	b=A2fDUU01z84QErdCUvfdwgMdP4SZWan//4ciJUeH+36PGkg6Vv61/k5fXYdkJc11Q
	 nQfQ7Fz+sdhn5wm0YY06zwgNlhKRlm35Z3GM7Oxytdz7Iz8Vi5arw930A5KoJ0Q5NL
	 5mS/VLxpVBUYwAhQ//4QsrKINcZt4xLcxGP22a5wkHyzqX8gJ84ILyGVgj1/JlsMP1
	 KKQcDDQiOsMPxJeaEN8m8OZWilTc+PHi8yo9eNHVDQjovq2rLlmxgoJZh3eNsWKcof
	 vZTHxu7hTUdHo5eM7v/B7rVGsPERWRgq5gYW1odYIzp4A1ZBZvx4zoY2y3XTx30N47
	 KxN8KF1qBo6Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C825106FD9D
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 08:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177339029363.21974.16022344692425523637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4ac92c64e436ca3a87362bef113a52cc35b88c9378520c5f091c22841ffae73
Date: Fri, 13 Mar 2026 08:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773390293
