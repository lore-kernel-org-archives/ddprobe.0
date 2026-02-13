Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB661D6BB
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770942294; cv=none; b=GiI79TjK67j/j/X5X2VjDbFW4/Hh8n1+n8Nh0eVINXAOPI0LNM+U1DV4Ogf1x+ukuuywnM9rceac+hxTqgWetvSTpfyKEQM+dLyufzK5nBoLsaoA9lyLjvLCG9k/Ex3McBtrLLvh90h5fAovKVFUgZL9jcQmxdIKcewXT/8wksA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770942294; c=relaxed/simple;
	bh=gr0p51YaGp7RMxjfrIp2cHxITXJ8IBs9dE7q3hkm8AY=;
	h=To:Subject:From:Message-Id:Date; b=Ep5cRPyjq8nA8buINbKqoZH3noGFZ6C/zhcyto7IG9Fz+ezYSNWSw6bZVv7AqOCXfd31j2SRNHTKM0OVglkAXWa1/fyMFmHbCP9imd4xvnIIULnV0D3V2iLZI68oa8rP5sFqgIBwS1HgAe3rbs5w0x60ECo7mBfTqNhaiMGmJpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bafMlj39; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bafMlj39"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1D37C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770942293;
	bh=gr0p51YaGp7RMxjfrIp2cHxITXJ8IBs9dE7q3hkm8AY=;
	h=To:Subject:From:Date:From;
	b=bafMlj39vry1mGTcW4HPlN/YWeMW+UyPAgLNJEG1Pxdaz+2spesNwkH/X+5rQXDVy
	 fNf8MLw0DMXZgSKyCV7jEYTHBPDLj+iacT19Cib/x7CIuUhLwScqpt7UuriOtceL4B
	 dxKdQ2u6PkiIUjFqNlywCWI4Ut8KiRrtbr4ok3SLbmS/Cij7QxyjoqSZzC4uLGDzpx
	 hKbNNwuSjqL5gdP7169r52hhgZPkNoJfFZcM4YzJZndTwEXBCkhwgnvT7y911f2ZH1
	 X07IyoicTzp3yCoWQUT0df3LyAHRZMdmapH1iPlQ/1RZVrBg3HiPG8NwViP09th+Ku
	 +GCAcchfcCrfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AAFEEA853
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177094229359.1736.15017984335282335196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a718374d056846fe02d68bb43086b67d944b3ce56e8da55d48900f5b1eaceb6d
Date: Fri, 13 Feb 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770942293
