Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DD819049B
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788094834; cv=none; b=HfOSnam77PnrXvZri7lZg5jws3+y4hpkoO+4pVFo+yb3iaRM6SFo8O3S6/CCwth8VSe8VoH/u9PwvsM07rUVADRqJUNJc1Xleih02YsMo6TbkA36vvu5bO3faQecMwv+vB2Ow6DKe0qMXHs18fQa8tRMp/XCJrdvFSejpZz6egc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788094834; c=relaxed/simple;
	bh=st41/Y9XjBxUm8K1wT9GHTMjC21Xaeiq3R5iIbfrh1Q=;
	h=To:Subject:From:Message-Id:Date; b=AMsrmoktPN+XHMsPi8gY0XSUQRBvueQV85LSJ96CJzof9ozMpz6ZuEkeWYUN4f4Go/YCajaLcKduKPa6wDDvOQJhUlT+AZ4vkGo09FOqlXBtyIfy0LTrLlUwBRx/waYFSg+Db0Jemu/GI8LaWrlk8UR9vQGOyPTyBIgg0R4JTe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CVui83xH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CVui83xH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD642C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788094833;
	bh=st41/Y9XjBxUm8K1wT9GHTMjC21Xaeiq3R5iIbfrh1Q=;
	h=To:Subject:From:Date:From;
	b=CVui83xHn8kkxYkuojkCwONuacndfQ1H9V1ij6NtO4G+X1e6FLYERkQ0W0tmav7JJ
	 Ue5oTWXf8Q4Hlc989/KPRSixLZfl8r9tnu2v2Db9nhURN8txPqFy25HxyCdv3Klu/h
	 uM80CWYwSlEiszCUQJDfqBFtSkUUlA+T8hCEnIwpLluyzpX7b6dK5SLRT7MX6zHmg6
	 gIfaWFHzKgZOtm0xQRa2K0tm7NocHB5C8C2/o1qekRUlDNj1xMLn5Ti11oyvXy00ZQ
	 tf7IQKzh50m9k1t9LQwqc0YQcLZGy9peZPPFtOV1To04hsCQXYa197vjX8/YxEdhMy
	 VLDUhyp7Vw4Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A937CC61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178809483368.15110.6016503128733728167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f5d63f6f912d920ef4a968820aeb82e5a7e7a5f2f93d5e2dfc1b0790445814e
Date: Sun, 30 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788094833
