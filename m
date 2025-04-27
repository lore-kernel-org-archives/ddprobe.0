Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43ECFF9D9
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745756994; cv=none; b=KuXP//YtlkSizKdqPKzYHFkTFqQzGn3zsCbVZZAvaiCyJ9qVNHPjpHCVUGSY/SntGyk+fJ2xcqaD58WQbM9hORZ4dEpXhy4qEkf54fTmUv+5kpWjRMzOchQNgBCiPdCRVpJpHGwlQaM8WEX842JfQOA2hQwPrw6vUnTHzqm2/H4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745756994; c=relaxed/simple;
	bh=GOiNH2N58dItJPq7igl1W9je/TNn6poRIgC9PKqgS8Y=;
	h=To:Subject:From:Message-Id:Date; b=eG/K9iDc2lcDD6KcLbNkt26gI/gzwRriduSoVoNKkmXbpGw1xTJwEVtGQ4r9nTqR1JXTx/Cd0Ea84tkEIR6kfRK/ZiiYuB3MOQiaWZyxIGHgeI7SRCuCVW4I7qDhTPf4tJol4JKhkyDTqXSJxEomM3fJzl+J2DxvjZwZnklv85Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVijvSd8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVijvSd8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F6BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745756993;
	bh=GOiNH2N58dItJPq7igl1W9je/TNn6poRIgC9PKqgS8Y=;
	h=To:Subject:From:Date:From;
	b=KVijvSd8FX8SFDUvOLfF2OcSXxyyAMYGDOpD8isma0XJr/VtNsIvAg/H2bAxUxDFt
	 FbNqWEGLQrAFsxcZ4VUBs9Sat8pjHA0l+rJWimhCwQxmStXX5MFRJx0xXLWwdZwlCo
	 fNT8fnwNhGWxuMzBi/ErbqnAiOV5FH0GOLOfL0PxwcT8xL9xqsqfRamZyl+mfr8XyT
	 JYenZRv6m1LdZQ733vkxp0GmOHhvD8OYvhhXc+BW70TdmaSNCbTClKleGYtifcqyUz
	 QHhKlRjxOY/TlZWwFxYRGsJpHTQ3pWGvY3F97Mrx+Kx0rRnO8Y6ErpOg9JjW7EXHdP
	 8Y54RRb47hQMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93728C369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174575699358.10692.5938971838342761820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c9559416dfce6cda1cce4fb6bd2017718f612cd25dfd7613657ece6a11bc397
Date: Sun, 27 Apr 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745756993
