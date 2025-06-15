Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15AB9136E
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 02:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749953394; cv=none; b=N2BnVdJ/+34v86NQFs+GkEINcvVC7J5Iz3XTHvgpD8TVuxEXZjZANTFhZ8Q+K+W+6m0103L8aWIQOrIOAmckS9BkNS1MLGnz5SULfLbpeK/bcX3NDs/TEqALSTFFRO4K6AXhALVI7ylBzZO9cBhqiid+D01xSEfNbwQzPUzmKL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749953394; c=relaxed/simple;
	bh=Te3Ld7374rMZiLevTvqNjwl6YmjlShilY+81+M1j6Kg=;
	h=To:Subject:From:Message-Id:Date; b=LXlBuPM2I2wLo3H6LZGl6/SmYzmI2oavlBjr8PZmhnybTckxB9Pr0tOqSsXi/Js8C0nH/WtZtQ/Jr59G4UmATK1n0h0JlJmf1a1qX8Nbsf7C3Sc25FeKXPis/MnuDq10KPRw0FvNvEkhUZ13/2q0mup7/vru67MeiXOcgJ9AHmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ad9WNjgW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ad9WNjgW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4A3C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 02:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749953393;
	bh=Te3Ld7374rMZiLevTvqNjwl6YmjlShilY+81+M1j6Kg=;
	h=To:Subject:From:Date:From;
	b=Ad9WNjgWKjzyiYWoJxtkD3ruhUFFqirvkFBQBjIybNJfJ5Q+eYJe9lstlnlJzVMRh
	 UShXxkGBtTmaaNv7/x76LkNGiaxq0nxrckEF1uIsa6gqa/6S2Ie2mzpp6uz2wb7JbP
	 uWXO3HVXXk0SH1Agu47Xb+VI4fjrvrtIR96xlF1WJigniuIJP9CZV47F6TtmkxLuJw
	 FJasaX+jXlLFNaxHpD0N8f22+gV74+VVPAGNbyyNLfiSkWAJemWZhy9g3qN9T7nR2l
	 GU+Agl4KdREU0x6JZnTQNKlyXH5mH3K6kI8OpmgbAr5yIEPMHzGHwDgni4LtcT+wHE
	 t17VKWE8DSwDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BCB6C7114A
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 02:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174995339359.5163.898323013666071283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f269ca1ed098152051ea76b2a23139bb3f327f63447b24962a016aa50ad0c2d0
Date: Sun, 15 Jun 2025 02:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749953393
