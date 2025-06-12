Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2962D8780
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749761994; cv=none; b=N/E6X8sTznzN0G+tVQY5Ia0SnVHrG/N9ic76GHSWZp5h4lfFlMll2ztHX78wGArwvUM3SbjU3/eaGpgKEiBn/GnxkZqoH8GQrA6uXdXwyx+DW75WhR5ak6JfkdEFWBr0mQirq9sEexHqAqm5l8F7BdPOHOBZAGJA/i9nZtNAc/Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749761994; c=relaxed/simple;
	bh=OL6P98h8iXFnq/G06heKqT4kxu8K4Z5GyjiZghcDl7g=;
	h=To:Subject:From:Message-Id:Date; b=oh91iVrc5pX5ponOhM8o8j3gJreD6QYaYf3sR5wLfM+0/OBfUQZA7dpG0HAlBTSf67tYrtc4YrIs/97Dc3rI2kl7xFylxwR2iv6hDgOkBJ+GGgdjqaaCA+1crD/miZW0N5GwWdMx4DX+w8BA1I9T+cUnFR5OgGZmEJDkYLj3R+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGw4eLw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGw4eLw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F6F8C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749761993;
	bh=OL6P98h8iXFnq/G06heKqT4kxu8K4Z5GyjiZghcDl7g=;
	h=To:Subject:From:Date:From;
	b=UGw4eLw/EKrHNydI9b2IUwKuqgs6i+RVFsc7sq4ymGUD//rf8Wsjzj/u/CTOTrhnH
	 4imaSnbtyy5aElpNSbWaj6DndwhuTVGNlmEIPW/ojGqsYX1RUb05XKgp2bPxtd/PfN
	 wBQfNH4LnVbK1skKC3nxDm5Q256xQpTvgXqzbB7plmx6MrWg0DAJaTv+3gnbWbi0ne
	 Kf5S1PNPJXvDmDbWItrEsVZgfoldapN2A8q7EjTEQ+bEoV5B4TkCTY4PBY0Vaxoq+M
	 +JRnGGUY0j9dGdWyTjMIUe/fDyeJ/XQlkwVuoHE9jGe3eC38sZZoS/SPzILV6IB9hd
	 K+/gY02NlYCpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F053C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174976199357.9065.16906739155944793417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b851f75d7a71901a44ef136c652bc3135a648132e94babca2b6455ac37f8eec
Date: Thu, 12 Jun 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749761993
