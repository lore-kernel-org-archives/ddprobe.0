Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A351E8324
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756455594; cv=none; b=OU8ifMPZDzWvF0EtKGHzPZcaTN93drF57QCaiQ9jyZRr8E5ToAiE/X3rxeLa/SJomjXryLnzbkTNe2sQa8zrekL97zOIyP+nNIAHrNPz32eDkTN7M3WTFvkEoa5E4LapRYsBCEAJA8Uveya/EwKBjcJn+7LB5xS1snNxZSP7f2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756455594; c=relaxed/simple;
	bh=qC/foEBvuiLoc/+uQZrMWVSBXNIH/7Pi4HTOZ59f/9c=;
	h=To:Subject:From:Message-Id:Date; b=ZMMTYs8odd2NO2bkFUWxBvx2sXs6FYBrclW794Qc+xoXFMCFGpiuFCtVrrYDm7l0spaiAwMdERRT8eQciOfEB88TCriiMPu7yft3AJ+vrc0YSPeq8DOURfYXJqCc0jJcc3emDJvaN6PYh21QMPjs5++d/pT19Eq0YmB8+E0SHXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gKMaptKW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gKMaptKW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F769C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756455593;
	bh=qC/foEBvuiLoc/+uQZrMWVSBXNIH/7Pi4HTOZ59f/9c=;
	h=To:Subject:From:Date:From;
	b=gKMaptKWBuASEZFjAmCP5mPJfxxyrzIYSSSIT9N+DICAZ6wQyupYRmOloHSTjK6/c
	 olHjZ12eRTuvyHD8eGf42rq3hl3JJhovVGwuJyS3Rqmgz2vtteybQx3eV/khdCe5px
	 GK/GYFEXY6lq61JCXS9+mbzLnEoImz5X4JJm7griowbIzxXC5+zoFfP21K5dNkR4PD
	 jKicyC4M2UwmbIZOmW+w2JnVGiaSJxgew4lxzrv46US29Hm8MUgesiYuKeJ0DqkO3Y
	 Yqk59l24kaKN1wJqBXnvs3je3pZoD6A7BNMsdFct4C8wa8d6ECi2+/LCg32gSpv+NL
	 PG7eOkdt1WOCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F005CA0FF7
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175645559357.2707.11436832578799997867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c60408239489e3e490d819aedfb25ba2f4aa8056a60ceebfa9880c701a4811e
Date: Fri, 29 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756455593
