Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C8A26461F
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762846194; cv=none; b=VcX0LvXHNb6EK2S5EW9Vn+JQGbdjyJt51fKaBcz+c2N8F7cC1ZftzmDCP34Sxs4nMwC0hANIKZMMJsJZbFaX4DfA0E/E6V9iqDM9R3/Gx3Q3JYUDKdLhVkT7anaG7lNGPN0MMcdDJsGB4ko80vysDsG09aUwfAE8YyU0F+PdKEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762846194; c=relaxed/simple;
	bh=GPHvuMRTGpGw0lgts8sMXKeDfUP8Hvr9MbIaTMpsgnQ=;
	h=To:Subject:From:Message-Id:Date; b=DzYIfxfqsNTiIWJ8Mo59/YyaqFwOYziuYjI/6BQ6FMIwvGr1R9t8gsrunEhdhUMVmDNdN+kT05KPelP+mUrQwJ5G5PV1Zj1joBMkqOvEVlMijCGCPsgavBR7vx4VVaC7S0MmlW+Q+7sqvGNTtOPdoVZqOYNMEhB7ev9iDRi4UuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/vzYKWQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/vzYKWQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6471C116B1
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762846193;
	bh=GPHvuMRTGpGw0lgts8sMXKeDfUP8Hvr9MbIaTMpsgnQ=;
	h=To:Subject:From:Date:From;
	b=t/vzYKWQutuTtbgUH76UNg6570Kht/wN0zrXpaBYGGeqzo7XJdut8GrJlbK7iM2AL
	 U2H8nrU9Scby/WPFLao2gZ6AJVKK5L2lSwF/GjlomHWmKgevYOfXjCsd2ik4hR+ja9
	 l23hs8HGbQV9yDNdUucraEb3sJxE+kkohk70hUUuTiM3Z+aflnCGmp5ywgGlFpqSgi
	 FoHo4Cnyk5KcUs0FDDZswY110+d4F3qUb7GCKjy//XHpXSwYobcqZXhyiIyMwh8F1P
	 RkxkE/6EHOglRMd9fMEZHcQPnYiRuwh8XMDr4Tl9cqtuqQQll9qcpoWb5cQtQK+XrY
	 l7u7c8dGoWQ+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6CEDCCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176284619363.22924.3273430404628161638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8674d92c97ad51cc754f7be02582f7b2a3e52c36581396ee3af71829cdd0441
Date: Tue, 11 Nov 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762846193
