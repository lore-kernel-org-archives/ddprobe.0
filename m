Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 391058479
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748683194; cv=none; b=dADsWDSIEIrVcjjGy0kW2/T4lGoDOOHECIWECePodY2hnE7caGoFxDlyOzEXlBVkXp+GHPdR1/IxnBAkjOXJKTcsRFiztkz3QbfmaAWOM1cIkDmtGywJxCy1tFgYW1yHf+oUy6eNZKezfZDRWYV3AMzswT63RLU3j4PWXdln9P4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748683194; c=relaxed/simple;
	bh=ri+tudtahWsLyXLgIEUOhy2WKv2AVqI9XrEC99sIZ0w=;
	h=To:Subject:From:Message-Id:Date; b=pal30nKjOCPFTyK+HQ8bJ6CnuFxtsgEEBKHT1gP7wvAx8M4pSgVxIeNzRvO6W8+EK0sm0bLWxnFIiA/FhaDIYxudrFDyxLZjIM0L74S8fHtxpJpD+9yxXgMIAHx7dlPkyYbhk/Ut8VSYfLTFTxq0AFoXHQnlcqIlsE6XrNCX39M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qMXu0SkK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qMXu0SkK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F161C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748683193;
	bh=ri+tudtahWsLyXLgIEUOhy2WKv2AVqI9XrEC99sIZ0w=;
	h=To:Subject:From:Date:From;
	b=qMXu0SkKXCfvasXlsXXcMtP+0NwcpEUx84YfrM5bK3VneRSq0tsM99kc8S7WyDr0C
	 jlaqGn9C7AY10oLvvfamogVw0vT9WdxemQx69HjHSyl/Ur68fRCwmFh70ykIF01C2e
	 2lCwv7fZBz+gWjqvMCIrSlF9P+A1B+7U7MgVL3wEl7lzpWlFOJUlcC0aa3U06jKv3v
	 oWE6OSazRlA859fNnmEv54F77e8EQpd9tBxPbDItMZWBx5/ynDWzo/zycPiq7I9wb0
	 XgXvWFs37zjnR4p3Nf2Uv7kUfn9fEelQPRm4fUY7vuvRsJLsfpiT7JKwvdDPM0O5HU
	 YrZIaONQ9Ryag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E07AC5B543
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174868319357.15165.4153135068627329873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f347558d1feb8bbb82e3486690922772075a4d80b49c3a52d3a303f7d8754de1
Date: Sat, 31 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748683193
