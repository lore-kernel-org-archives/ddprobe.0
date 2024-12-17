Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C15C9148850
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 19:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734465353; cv=none; b=tQohwUXHAwEPkrL/CjqPNM+gloByvnbvCpWerxImZr7Hzi2M2+lOCohHueu1JkNNKTWAPRqhNqT8YdpKQd+z5HGfoMbpcHe73IKiCwet8GWx3vvvMbxl/qcT2B/fO9ixqACexG5pJUtZH76cOn7Cl7WljR2ntaQb8o3AL0l7RzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734465353; c=relaxed/simple;
	bh=+latoDiqvgOBV5mi2ouOYfJvD8HUIWB9wMykV7YzDBc=;
	h=To:Subject:From:Message-Id:Date; b=tJUT+OYW67e/IbbO5HyyiE/Dr1WsA+uD+4waLl4DkLlEpBkCL+AtsYvDBN41rgQNEtCo8xLRw18g0zjxCki/kh3g5xfIE7zmqvBjHdegjTkjZJnL9WIh8WwFEcTgcZrU1jWmB2g4M80laBNeb1+lwDjXuPf1fx3hRCHZM3QkHAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kpatAIJ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kpatAIJ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A147BC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 19:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734465353;
	bh=+latoDiqvgOBV5mi2ouOYfJvD8HUIWB9wMykV7YzDBc=;
	h=To:Subject:From:Date:From;
	b=kpatAIJ6NggyrB4jo+ISzloxrNWzlG4PaiHDezTB6o06Y2MG79NbeOgb3lgvhN8/6
	 p4PcMbV/LyWd1Cm6OtakX+ghJUZFrm3+9PJJJxQKJOWM3Ps3oE0wiJ8fkrKagNZTe9
	 v+DqG32xTFJPOmehO3YGGSMfkd2cJeK02K0nxrfbxRSiMzBcPKVzZUxkQlJB8cO9g2
	 lOEEjI1Mw9K7r8APv+gXyr9D2nWihBRJVK2Blsouah3MzkOxuCnERPKTbgWI6bHoup
	 rjDqVbW/pDnuLam0RvTjLGNW9f2en68dcP5yaSuKbfx05QkW6t//sFJuFcUpf0zYhY
	 07NwwxwXlzNKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FA8E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 19:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173446535358.745.3518159784233682581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb182746f20dc05fde452a26654125bedcc18b6dfd0a050d1d4765f0c925e940
Date: Tue, 17 Dec 2024 19:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734465353
