Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F5551C84B8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 23:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768605234; cv=none; b=U43XSCok2peWbq6EhBIvoT/Kb+xhCBpezJJp1tBRulYdWs2aCFIxo4w6vjAdQthQ2uBpw16AL02CHO+Cl5J1rWuib45Isqy3nyuMXltCoQnWV54d/uoAnCH5ffeh/v7LWw22g3wwMaghCRjqKBseL3NwO4fjSD0zJwXVqZdxF8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768605234; c=relaxed/simple;
	bh=svc0j3DeO3QT2P9yKPlKI/qUcffd//3vfMj7ErK0e+k=;
	h=To:Subject:From:Message-Id:Date; b=fSqTQO080D80QFsByiWys3jle0WazKDIec7OF7JK4O0EtYRpkQwjp5HrhE7l2RJQuI8d6HQMy1Wzgp7SdG20EmwJ8OLnla1lj2jtlsRe0JjvWZ6aNIJcdz6t4w1cDVIpRJVRMfqVgnvkmRrPYRc+3tC15Z+uhvT10ASbiS/w2YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q8HIWHKI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q8HIWHKI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D5AC16AAE
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768605233;
	bh=svc0j3DeO3QT2P9yKPlKI/qUcffd//3vfMj7ErK0e+k=;
	h=To:Subject:From:Date:From;
	b=q8HIWHKImTdl9lmHX4UeFroURX2WFo7gsheY6vRUJ8mxvuucxENqkR9GDNco7Ujd7
	 MXIGzu0nvEc882kSRlMQYuTQNYpL2nG2i5KyrlOLOdvObLFnyobMrvf4YIXu4jG3O9
	 UE+/HAmSmUmpD+kSGQnIZEQti1PLVz4beLzIgLUY2OdquG6u4NW73e48JIXD7h48QX
	 XRhLiDiqZFEpq/ukFppptJQImwD1E0hEyzXc7M+/uLFItPzGEnw0rhF8ogeQfy8QYq
	 vjxc4ShlKVERMIFCoQuMPtzQ7SQPcwz9hqA3ciFsTvuQs2U8X8KROUDHtEwnhtGiz2
	 3m77TY7q/lv6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FA3C98306
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176860523358.3676.1789921534215299427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6e28ee173dea8abc819080298923495fba0fa1cbf3f56aca472e15e88c467ed
Date: Fri, 16 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768605233
