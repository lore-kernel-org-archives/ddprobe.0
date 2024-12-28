Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D168C1E
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735355754; cv=none; b=Cgq3T9HiikXPO/OlAUwk90wWtyzM62UcTczv0j1WzCPBfg2OiJMFAc/IDgznAxIZ7tzKHYiNb9YK3spGZrDJDU42zw1EbyVpVF+tjIy5EcF9/hm06JXD6meRcoTgbjlBkEH7PxrCzuOM9SuqmbZeIV0M9aBcrfKdOGXTTTMzhjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735355754; c=relaxed/simple;
	bh=wLVjtgGgacMVnqFzZ1/5o2uhYe3SQSoKY0fqrqR9uLk=;
	h=To:Subject:From:Message-Id:Date; b=EY0spWeaTJqFQcXxWknX1kKs0b7pL0f9aVhj8MeVl1wS3e9+4Dq10yAcvBa5ym4BCYlmGanOSo6KanU1fIQJVHikfwFKPbzNUHgpPE0Q7kiBf/NLPI6bsj0PgYk5Njt74b/41bPiEjavWuYQjFoM4hYLQ+vKhooSuJK1L40xDjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOjsVI6W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOjsVI6W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC1A5C4CED0
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735355753;
	bh=wLVjtgGgacMVnqFzZ1/5o2uhYe3SQSoKY0fqrqR9uLk=;
	h=To:Subject:From:Date:From;
	b=aOjsVI6WH4/cn955/wM1lktmpe3JsupCFcqlW4Ps5MNCVbV+ktSVLU6xyTnPeoipR
	 PGI7Gna6rzaXR+Fo7Za9pL0p6j51D7oIyBjmr+mSoUEb/PTexiiq6EpL/06GIMP9wn
	 UdbfBEKQISu8nkHckCQKvH6y3YmADgoJ8FXkls+ddruWXQfDteTKS4xL8hs3+WbDrB
	 GgDvMvKnE9RaHePYzUdaEgtHC7MLqVm+CNB5W9z9jeimlrjduZyzk8tiUOwPjFx56X
	 FVAwH8qp82dWgE83O7jHkJ3CsiV9Ou5Q6+3Zv5yLrhV5us1u0KC9B9UXXehFioxmOB
	 8abORxh84AJrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD58E7718B
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173535575361.19318.18341117667963078929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90954a0d93833f5c7dd12cb9f965ef409a8c17cdeb1ed87e0b1bbf2458323ed1
Date: Sat, 28 Dec 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735355753
