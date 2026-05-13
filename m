Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D8F3F4103
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 14:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778681434; cv=none; b=lqB3EBR7+EHa+4DL9a7R0LArJJ3cXuNbbgqIngFvgwVQKPpyK/5BwZM22MhfFeZePEynmLlrTP6eT8Cen5wtLkf6AgwXf9Afd/VrpqkhTZSFal6XxOFmvqBNr5k79NZb7tQeAM+Ds53WuPJJCfso8603/6S230pHTGDRrTFteco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778681434; c=relaxed/simple;
	bh=Prc97Pjd96pse2Ca1MbCw9HAtlK3DG6FL453kd6Bqtc=;
	h=To:Subject:From:Message-Id:Date; b=u7qCqiwvmhbbt2WT7Je76y03LYDTm2APulp53J6SSV8H8U7KRwCOOVo6xbvy/PrfbKIsswEcjaJA9yAiCcYBQpUTPcJ4nhTjnxcuVtvGqNTmJoDQS27n4/mHTSUHzH14NXjhk9183wz/EHATgg9Fz1IYLyBJ/3LEGS7f0oYIA+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bOy1hFYB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bOy1hFYB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEF34C19425
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778681433;
	bh=Prc97Pjd96pse2Ca1MbCw9HAtlK3DG6FL453kd6Bqtc=;
	h=To:Subject:From:Date:From;
	b=bOy1hFYBUM4Vmr3x6HbdhJRXuTwFLC5NO8QdqtNmopEGc2h9RQwgxDhPnjdiY1KPa
	 5PD2hBWodZCdI9utkZeyY8R49/v5pjPHsuvaiPIZaZJNGrFyKKXIiOutTSiHnXCJtG
	 heVZcPj5BeLBZ2LFVBxCujOHXervvm69B3+M6Ri8QiNuGfyACLIQtyi4yqzPgFQkFE
	 4efPxMzpM+C3rM0GKQChP5jgvkpNXhKv4gSW5a8E+I/NSzALinj4jZmYDAZ/0sbXMX
	 kgzzsRJvbEFrmqExmlmNeYJRIpaMqWAR7rt9k8IM4pImPKzay/fQp/eQy+pLm8NzyT
	 FkjhcbNKaovRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF862CD4851
	for <ddprobe@lists.linux.dev>; Wed, 13 May 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177868143370.31664.7093346379722934859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e45cce77867ae63a37bb468ac7cb0b5fca54c2fe56162b9a19ef3a7161ab2b5d
Date: Wed, 13 May 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778681433
