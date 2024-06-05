Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4841213A898
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 19:07:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717614443; cv=none; b=OtF7jAMXdj1/BywtjeIltE6WDl+l/kUGwt6BMANACVpGir42ASPJIH4ePQSRMFg+B/J1ZPaquWPoHou3x8eRB6W2w4yCNHh8lazhk29geyfEntCJuyd550TAX2t+45TsaTqUKNkr1TlWHbZAgWjrzPJnEn47MS0rS6iu5tdCiXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717614443; c=relaxed/simple;
	bh=rNQaoguFSVvMD31OkQiq0lh8vDyEZyUzqsP+61KxDE8=;
	h=To:Subject:From:Message-Id:Date; b=hkklrZBcPCxXk9c0yZ0KBq6Lkwzi3dBFgv1UF/W5eReBZ+TcbSl6a5UP84xlcbF8N0J/zFCFfFp8xeB1zsxUSIc6zySujxsvIJnL5ei49nNYTxCU4DNIukDg6Db9G+6mJVNU8y1sTZn8NijfIhJKjxkdKBCw0hj56zw+N+BssNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9n2zFDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9n2zFDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D270CC2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 19:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717614442;
	bh=rNQaoguFSVvMD31OkQiq0lh8vDyEZyUzqsP+61KxDE8=;
	h=To:Subject:From:Date:From;
	b=d9n2zFDbXi10hBqficgEVHQeqTUwgmJHnyvMcYwMO2dZ9cvdc9pFmR7p0qBFqiT6g
	 iXixP25f6v7SDsA4DnLUz7r3I3I6mxD4uWeLExxgi5IhqQWjyG0hy5sVwA4x/Cbxke
	 cnK/uhqDUvjOlFH7py7mPEh46nHgacQVUZaXG9M4quwsKVyITIWtuggtToK2a3F0pw
	 M3TA2jdIMER3MwcOxhuaWs/Vg9uSioS0qyoEjD0AqKYIxbvMDhsLBzyXci0gL/3LNp
	 Ifer1MKksDwFi3xlG6pf3j8lTD7V0llk8fYYtoZyy/PQwYbT7qSyZrc9JI2fCPp+Z+
	 SSHGGf/YQKLiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3187C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 19:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171761444279.3062.4463348467670429021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37ccf238c7e611e533befb1cd56f78c9c6a809d70f30e9c585a3b1104ce4e04d
Date: Wed, 05 Jun 2024 19:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717614442
