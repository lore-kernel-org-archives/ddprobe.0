Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A42BBA4A
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756770594; cv=none; b=hT5ns0N4vdbctzYzf9LwpibHu5VBz0HruzF8bDmvTHZQMexiC1loxjH1GsH5ougAvgS0sb+pYhHPC7yF1YHYDZdYk/BncXG7jY7ZRhirV4BAafD2QyRo0/mwewuEquaW7Td7ASVKL+t0THrW8ejeVUmB+PIxyZmgFiYC9zbUsng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756770594; c=relaxed/simple;
	bh=eyIZgU4QCf8zpSO6+zcM8FlEou3lldnQ+2LTligMDyw=;
	h=To:Subject:From:Message-Id:Date; b=Q/sTcxS8efAD28IN1H1hwwDAiux7IAJ/5v1jVP4g/urG5LvAzLVRD6cDVdSgagHyqE2lRHC/EezSoWIMdW+dndNSutAvT48ywbMTrXa08HNHgnSFwY7MiyIFD/iM+S8Po1CUMqafopkw7xia8zoM8XQvZ5m9mCY7KNf/RWatEms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QralJ7pp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QralJ7pp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BCDC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756770593;
	bh=eyIZgU4QCf8zpSO6+zcM8FlEou3lldnQ+2LTligMDyw=;
	h=To:Subject:From:Date:From;
	b=QralJ7ppwdWYtZnlD3xObRlNi0MUyOpzDDIeFOq5qDlUhsCahxkR3Xa2uoUYRH/XL
	 Em0KUH8dUSpR0qv0FkUGvkISXpvVbDIzWeOZ7/KX6a8f6GlAOLxpiKHJascdVwKF8X
	 WgNGKGvb6QrBxDJqpSNTW4ktWT+effj1QSWILl7n4xPKe6mcmt6gojbDNAGFFvF1DI
	 S9xI2RCnz0MaHYwJ01/48UK4o52JNsebVhwVvBI4mJ6bj5je2WMwq66ynFmXPcm+E8
	 zygchpUDDdWsNlNrq6ryGiMMZSxEuKbT93lsL6I45cjXcuhI7C3b1iysvV2EPRFcbV
	 GYbN1kArFOrSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4BCCA1002
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175677059357.29829.4097103843238353557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae8c94aa6eece8a17ce036172fca8e504631fe17e0f32fc61e5a27d16289d4f8
Date: Mon, 01 Sep 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756770593
