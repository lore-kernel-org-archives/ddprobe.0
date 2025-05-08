Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283971AA786
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746674994; cv=none; b=pZv00/yl39PyROs7QL5ixppM6OAm56NyL+03Fr4j2Q361RnJuM2IJI/svLe+oTR+s5P9W3hyO3rPTgVLTipMAjzgM5urZZhmSHkoIK+tyJnaBxsBc2JCAbOd5ikUZDKqnNwmZ+pRz7yEhCjoGIjU/8epXKhF1zkRchTLZ3Gr0YE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746674994; c=relaxed/simple;
	bh=sTuM+W8Fs0HWx0wvi6/NyJ010eoFM/+/U0D+BCj73u4=;
	h=To:Subject:From:Message-Id:Date; b=UqQIuXs7sBWyoX25rB5e2r29Bm1PnEVLe0HLn7pvHNVRm7Cc8aD9sQSGDN5B5zV9D4kRBnRyUW1j29glSUumVT1EWqixA3DWk9TSMcZioQbSvofKe3Ss4DcWjmMlAtF5OM7w2a2o31cRU7RENFg/OI4bzzu4mLb0y+5xYqBs0k4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y3KEIZ/S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y3KEIZ/S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 954FCC4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746674993;
	bh=sTuM+W8Fs0HWx0wvi6/NyJ010eoFM/+/U0D+BCj73u4=;
	h=To:Subject:From:Date:From;
	b=Y3KEIZ/SkB9Ef8M7o2p4NPxm5rJ+RprTrCQLZ59kL8tfaXWiFLDtnF+ajmM0124Us
	 bN9Ar5cU46PPdF3/+A01C/K2J9kp25eEBZOB/OMunGvUq37YA/TEhRGxy/R/807cOn
	 ojeqLZBj+1r17fFsuXd8HblhhHdxw+WS83XzTq6nO2Sj9+0gGBk41nuadRu63g2xQ/
	 DeSnJXZBpLo70R8STB0fTbLxOPDGg4c096TTtWhr+Cn6KG9bLvsVxawQagaEuIhp8W
	 ppE1lCdsA0oml2RUYQBSxLbZlYn190Qh7Dbqhq0igr6MVjzfIt972Bd9t8q8cnbjNs
	 w3zv38pznKOUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2C6C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174667499357.15932.3177104395517565632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f675cf1521499365d04eb0326e7a828618c9def5c5702e987403ce2154a296a4
Date: Thu, 08 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746674993
