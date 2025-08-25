Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA9D233D85
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756152595; cv=none; b=s6MjVFt7H7c8rURBwfDRceqRi1kC+b+UCJVeLaJOOraUB0bOjBqscjc6Y8RibKHPJSIns9ykw0SktekBjTptI0IqOfwMhsDnGHGLye6CRN98/CXtr7qEsGUwLdsXlqF+Z5IxPiHiA8UT1BSM6x0oDNAz6L012y0UOUrSoD49/90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756152595; c=relaxed/simple;
	bh=DysS3MjRy7MNmdvgB1vF/WXTML7VgtJJwryxVoO59DQ=;
	h=To:Subject:From:Message-Id:Date; b=SnKbATAF4uLaKj7w2wUoKTFS6phPg50vLA9sFih/H6a7ftLfd0K4Ozz0gdgOjbKq0lB1v2G1xp27WyvtnutiUFsVFyYI/ZlGUkt4/ZemflMgM+F9YfosspbLLT7BiVjMIGGJLSL4m07vl6/ASK2RR63V+cvCbMgqoS65kU5j6hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JJxpm7ja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JJxpm7ja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDFCC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756152593;
	bh=DysS3MjRy7MNmdvgB1vF/WXTML7VgtJJwryxVoO59DQ=;
	h=To:Subject:From:Date:From;
	b=JJxpm7jaEQo2BWxKmLSoQJqMTy9qCJ8++JfFWYZzv3umaZm8GX/r6Wo3sKS6uVF0o
	 Ossu67BeC+ZFI3UtCHkH4DKuZXvNsVksg/YUfsCtniS2L2IpJAD+eDxwOc7OAHqFmh
	 aee5TtEHw2rnH4OzB41NlfzSDJ3YIjpTTFOIAmZck6JC/eXPcp8Mp4JnbQwo4ygMFc
	 3kkXEIGKT5huratKq7IbqTUf6kbE59srAOQVxjwqKMDe64posfkEftas5fJ2iXZLEq
	 O5FFTnwAMSKkAeTeguFssNbjUMEXtyYZfoonLr06xNy0j/Rox7xwxQHn16foWLz/OO
	 UFjAz9suNjk4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0FDC8303F
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175615259357.21731.18226581216381007304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b7f8123687b78eb66ea3e76cc53bcbaaebb6e50e2ea3ea043b38af2ba3a0008
Date: Mon, 25 Aug 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756152593
