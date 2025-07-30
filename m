Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1AD2741DA
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753870794; cv=none; b=Tv6Cz46OUWw/eTP0NFx9aG4tpOV/VajOar4fLHnXK6lTjixYdH+FJlupnNxcNrbqunMjPSgeB+ygDRpRNn8jlXCSh9GZOi5R9uQTMj5ZEDXy3CdnBBTGBFWjSKyVzIMPXOm+t6OBt3nUhhRLxDdLVl3/PPRaaej7uMRWRIYnz1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753870794; c=relaxed/simple;
	bh=LHwGOCOI27wzvfJOca0HqqGWF4jFKqdNz0d9WF22GAo=;
	h=To:Subject:From:Message-Id:Date; b=uDPm0IxrgXGR4yGF08beGmZKQuolY1OgrrF5zE29CbDTdVY+f4LFpxXygWe+qGv6YpSy4KuSRnQf5osetI7ZxqSYNn1edI7nnD5ir3dB2OEN6G6s+ncYGTSfHpqOqhJevqi1nDaFnnQ9fkxCMTXqBxmIQOrrICKIJctWMTm5B3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EcFyd2Bb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EcFyd2Bb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB42C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753870793;
	bh=LHwGOCOI27wzvfJOca0HqqGWF4jFKqdNz0d9WF22GAo=;
	h=To:Subject:From:Date:From;
	b=EcFyd2BbaV6c9qAI/LxpyVlj5yWC5cDmZHz5nRr21wFnIDcNkwVrwk4l3jzIaxcjl
	 PguGonnX6NlFjNQQL2lvViROVi/b4tEvgf4XMqSCOrTeABTaSc/2hqXY8TmvRaFbs9
	 PZ/8MTVlmZzq/KhP4a2qg71x4JDkQLq2MbfBccLG5iyZBkjXygg+/hnL8JMDU+wpIo
	 30S3TASPP5AXCX98Fw1kxrFwZ5Qe0OcBYACeYLkdfEy7TUIa5ga/qU/YdMWUVQtfL/
	 sC+19VU+UzfuFFaYJeYzYdWOWjcBMOduiZjyEMVWpLH0V7vB++7TlmtH/g7oofQU8x
	 Kvi/f6ovvu/Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90793C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175387079358.18951.8619025353058001648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 211bad8560096fdceec4ed72bcdbd6f3e128c65c5aa8b42cdb5b150c76347a22
Date: Wed, 30 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753870793
