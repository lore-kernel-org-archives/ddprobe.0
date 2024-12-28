Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2563422612
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735425354; cv=none; b=QZ49J91Dkgt+901AsOrhJEOkEFSVVaLi9OxQmJLBLQxTx8+Z8gN3h3PyzMiREv0G5PqkI33Vn4SpH2vH0qbKT3I3W1M4fMJABoRtvP2loAdExIq4XCQTYJnKDR2c/mp1WUXw7ElYlGjthj7diAr00wuDvh6bzH9CInNM5O3zIbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735425354; c=relaxed/simple;
	bh=kIcqJ5nfqZImh7qg6BFYnyA4zMjLKwevdFTMmG6QvyY=;
	h=To:Subject:From:Message-Id:Date; b=cjk8QLvKcyN5aPmti2cw/qvx/OU1piPD0GXwgG38NubD09A3pHboLxstZj5883LCmIbV5idSV1XSkBaQL3FL7FcdogZ4TYHf8EDgpGSOaW3hBBJu/QzYw3uCeDFhSjq0oXD0D59DKqu/+UECQS8QhzL6/lelXqV37fb18s90Xwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+dX0Wyg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+dX0Wyg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DD7C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735425353;
	bh=kIcqJ5nfqZImh7qg6BFYnyA4zMjLKwevdFTMmG6QvyY=;
	h=To:Subject:From:Date:From;
	b=P+dX0WygIef8sSdPPg9yRpOMuQa8Kc51rk8b260m+fYtkZdVjLC7mMDUhlMo5JRHR
	 CNK8s8zwrfXrMQPV8r4DdEBSH6rUsYI3+d4j8Q5N114W8nKlztRWmTRnfDXhbwSiJT
	 XijgcTlvvOUkPZcTtpZyLq7aFSqImFpxKBKhFUVdBRaGGBw8emCkJlQlJWXK0IPtds
	 gjCKSyJfZPYV9KdLsiq59NffIwVIfKAT1sEwOMRZ1gAgnpuTX7cZp/g0YwddsZHVVy
	 U89vTg6FczxJ8XZkILD1UrR51o5Z4p/er15857WIVCvctTU8aQz2KVqhfkMhmUKII4
	 hiX87zHo6MGKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 943B9E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173542535359.25402.11165743864794356601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 738d8c50c7c8b8dbc371ce3b0f6780f6386ab5db8298c5954cb3ca94cf828e85
Date: Sat, 28 Dec 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735425353
