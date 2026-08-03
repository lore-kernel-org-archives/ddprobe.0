Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8D7238B14C
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785762035; cv=none; b=B2itxyZBiJ50XuXzlwnAXX0P7Tr7E+fOwX3Zkp+gh2rVCQsET/U7IpnMXdmlQv5GOLfceX2cU2HJNBvG5KCHivU+LRzhEx5/61rCQdV2x++QVwwJn8XmbOiVkzKh2D6vaoCSIVL5Oy27vT9qLlUh5HyLmIKmQAfx7eHTXPNt0R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785762035; c=relaxed/simple;
	bh=xEcrsIvns+9oFLfO4n21nCeaERm9mYvA04dTLOZ0leU=;
	h=To:Subject:From:Message-Id:Date; b=HWUzx1aI60G2selSigjZHehauo4t67OysnIgqtjhlDxqm88vWSWok5Wr/GcVhCk7lP9ozMgWvOS15lGX7NvUwGlJxxX5O6bXMKuKmDKqN3NHIHfWk8/SegKMb5GdoizswyOshUZld7PX2z+03M35kGYVNOWKmCCzYD7udieVkao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oK6mvXZn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oK6mvXZn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1537C2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785762033;
	bh=xEcrsIvns+9oFLfO4n21nCeaERm9mYvA04dTLOZ0leU=;
	h=To:Subject:From:Date:From;
	b=oK6mvXZnjCgSL/n2Eq67r3Hrk9tHngkxxNm5rBqwX1WaGYylZTOzhicMoTpTSOhOv
	 3VwJiifVGUTDjfix0fPXICtLIV4pEBJEcyl0g0WQhyClG1DxBoZDinznuj0tTubFCe
	 rUIGYXoFclBXIi8cP9SZzO73rGg7qRhL7GSyOaB78YlIccgPaJVvRBYZEZ/drmgAA1
	 cyh5kf7GglB3GkqCKgTnLUiZdV6c/7va3KQ6EqYuMWmKMR+eask82343gC7TcDgyee
	 nyZJbQitypiBF7o00/GB8JYXtE/n8I9MVmZDdxIp88D+w3noHOAkGWcN5vkrUJzeEb
	 aowbX2QFxJRCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB042C55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178576203368.19690.9225859044358787104.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 837a48c6213eab8233acaf24b77ada8658dbf9cfebe1066a8a389f0fd5812d8b
Date: Mon, 03 Aug 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785762033
