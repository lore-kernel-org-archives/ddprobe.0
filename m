Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11EAF4A15
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722059754; cv=none; b=NDEDr3gQGMcOA+qepJKeo9Cn1gavwRdNqHL1MkbKMvX9m7S7ouO9UsbU/m/OK2qOA7vTTtyhSgLIHYbkN6c8kGOOgT5HOmkwpOfpGbF9CPBB2R+H9rct+L0rdztEHRvRnmZGqXLymvBNtq2HQuroPYtnQQLt+xjw2wD3dvvj5zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722059754; c=relaxed/simple;
	bh=rfKT/5n3ec8cdA9aBPlKclbOCkfdZUcmo9tZkip/xVA=;
	h=To:Subject:From:Message-Id:Date; b=JR3XRPUq552W9kuFh8U+Mf9kBGbEhZfKaZJHBTT5dc7e+k2XuvAB5WJNgSCGY0oWlqK4lqqI0DmV0zuVBWCrJjoVIqSLsr4ViTkyp5muLXAfLDEYidc9ZWFpgYzeIVEts9rCoFpcer8P6ysI8kQNC+VYD/207EvdDMi8uML0irQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AfZ4Uwid; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AfZ4Uwid"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4AD2C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722059753;
	bh=rfKT/5n3ec8cdA9aBPlKclbOCkfdZUcmo9tZkip/xVA=;
	h=To:Subject:From:Date:From;
	b=AfZ4UwidhYqZip9ijo+BdJp5fazZE+TbKLIpuxC6a8fbGH5gulmTzY1Zgquq7o+/v
	 t+A+0y0jyG3lSY1IKqDNUahcZH+NHQOUOjGBI/OHyer3sfGxV8tGDCqT0Ris4aVbh5
	 kEAnoonjcTMUzBsEOCsXJZSsnncE8nLn9ohbO5D4JPnJOK10ABC3yi7Nadcn+6BLRB
	 irwXjiCGMpT9AzZuHZ84JgacCkl06YLw8QCQW9xsuNyMcANREGauRvw4McpdTXzimr
	 S/598k1RDNMeAoZfWg2bjrACeb1P/pjIDYT6jopsnlIizLx2UIxpqL8+tpl+ai6CKC
	 nXpcExeAG1zQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CEEC3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172205975360.26076.1621625306202629779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b51539324fa2f718cd686919d279213425d5e390f232119b9ff783cbdae6a826
Date: Sat, 27 Jul 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722059753
