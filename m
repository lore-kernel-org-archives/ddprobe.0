Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396351C3E
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723434954; cv=none; b=MCQ7pvo1xG/oP1vOSKsGTeFgnjF/zFtwE7Yf0EIyo8E2k7gSso3Uqt6iRMi70TdY30hafxUjBqeZKciV5djrru4kANBUahm9ZGz0QJl3LoGKNL0IlbjcP1dMv1ysyskoAgcqjCdvR2QFbC4kve3Yxq+6lKC7CGHpkQxnz0aGEL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723434954; c=relaxed/simple;
	bh=1H2dBiNxKB3iVx5luLd0HGrPYdCMHn4j8YK9myjHoc8=;
	h=To:Subject:From:Message-Id:Date; b=C129CJBrpl3FHQ+G3bftXTdOO0zrotVq9yF4s0v+P4pHhgRsb1dc/TcY++N0gPiZOCpsfEKPQEQYDM1NVgf3Bo2mAGVCM3tSRTVWEgY0f5j4LqYPvvjW1sy7fkKDFBpGaBeL/g37GW/IxlBxB5H2uHzHmNJNR4++e9tVsYjXppU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFiVStQY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFiVStQY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4F5C32782
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723434953;
	bh=1H2dBiNxKB3iVx5luLd0HGrPYdCMHn4j8YK9myjHoc8=;
	h=To:Subject:From:Date:From;
	b=sFiVStQY05fY35NexeKTP8Zn7pY+2yy7aVzhlmII3JffgH7oSZ/kqPJCwukdxxHtQ
	 hUqKeviC3wb1NqZwWvjY+qdwXcZ5B1vqf/oFnY9OWb2MwS9BKzAGxYKX2naVpF8JhW
	 gwBG+fbaabmvbf9xgqsHqUeKYKIXqUHhjOwH/qeAz+vUvqeH3BmtVCn5onwwGgCVWu
	 rwgvVlh2q6WUZh3oY7utU0QoC0I4qEsK+elksftFcZ2LJ73rA6tMgPao8LR1Fd+4CF
	 iz+lHkpx1ZoWnrYfIdtdi/kn+GmStKuj7Hp47IQ6tsjvX4TE3DcgJ+6y+DjbIR4naZ
	 eQ/W4sPDxJxRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971F5C3DA7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Aug 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172343495361.18959.16532170119931528863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af9ea283af09df08d20d1a8d15e91118b13cf052bda7ee64492d9422a0d33019
Date: Mon, 12 Aug 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723434953
