Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C0914286
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759019394; cv=none; b=mKdy7ZLVw0H4gHv+fWoMbYLIT6z0Xv4tPM7UmQvL7yAFh/Qvn/TJbdLthErpiGEb5VeKKjiPrVFHxsIxqBsIGEkslVJ9Dn69Dyl9jGbAzcltULjtOrgn2yWIeFufTX+UZBaHesBUotLGqdVzlTzhIaWfu2x6uIklCtmMSwchgpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759019394; c=relaxed/simple;
	bh=j8rXNptFzfBnxF9ncTzUocmUC1YbmT5xIya9W2hpBCI=;
	h=To:Subject:From:Message-Id:Date; b=iv+doR0cXOXmvvSgBZsndMbW7JFZDnZzWSrLrCa42+oIy0C0rOTT5TS3Cyy+APsn7FFF3vm/6accptvBuLVKmhDMExfFgb8YZ3kibGmFqfLt1+7M7g0hPLdW5c0r+Nlmyu7nhYQGY9YD5GhJ2jIYiq5GbwzEoURAzrb9kvqk7Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cFZP2dIF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cFZP2dIF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66BBC113D0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759019393;
	bh=j8rXNptFzfBnxF9ncTzUocmUC1YbmT5xIya9W2hpBCI=;
	h=To:Subject:From:Date:From;
	b=cFZP2dIFvZPXTT9Pw6YNWL+rJE8iInFtb6LIhJa6qNdWNmh7u+nDp5amAM+Mde/wD
	 aT9Q+SIoEc6CQLLRyIh3sJ/UYXWF9SE+CmpGZrOJ6EG34QaJRQ+VstD+b0fiKF/JhJ
	 A/KVqJnloGLezyiZ4g3uRFdfQ3t34e7qiJ36DgVTMCj3cgel+jkUeKeKZJjvbOg1JQ
	 z2Py0q9WXo7AuKYRA3WCoX5S7tKewKLQ84nLTKdA5e9en7kpXhbfRZDzos29RSXhKa
	 AhXNjPV8wQoDyM1ohuJHit5XrU76urC3TYEvP+5EO32lWNBb37Bm/xy75vneN17hqb
	 EpXfCRGTz1DBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94620CAC5B0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175901939357.25378.10974334624130941271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 055ee591d234d89f20d5a08d6195108ac9357490cc5a8c8adecec26b8ca2f893
Date: Sun, 28 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759019393
