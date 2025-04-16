Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58F2C233722
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744793994; cv=none; b=U0jOpXO1mpwEf2G0TK+QIUFC+CB6SE6+tQaEehWH9QQro8yy4MgP+zBBJKnJYBq4auZDcnygCH4DobSAOas//xmFdS5idB+TocEN490E1YFcWYlXaQwNCEvNZxt+czVxIlkrvj/cMHQ0Fo6HhZ7VFGR5bhg1QEo8FIDkRdvQUXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744793994; c=relaxed/simple;
	bh=5KVNtC8J035us3WKfFAqCKF/bm4srhl4c+jJ+KryMEQ=;
	h=To:Subject:From:Message-Id:Date; b=sfjXBpkZ9wGQtQZQU+dIflPrHX0ugZ8CuGzlocd6PC2ySNSZbZALpKxRbMne5o7g0xfGCCAQo5MCnsUjZ5fmmEeTcJ4JYhBaYyKmhNKcQUrzWtqj2b8KUl0NudFgvLnmraNkSMLN2XpSRgbDkEiDO6CwfxXeSIt3jsWg9ZcAVRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYkTqmxK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYkTqmxK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3EEC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744793993;
	bh=5KVNtC8J035us3WKfFAqCKF/bm4srhl4c+jJ+KryMEQ=;
	h=To:Subject:From:Date:From;
	b=LYkTqmxKyiYVMXgxulDtNIGO589tWO8izr49skjB0tAjgsHZ1FdVteLxlHBuvsa1e
	 PMWW6mcfmfESU5QZnp/FM97qFrNzvWC+0Y2jzrvys4Qs4/Zuk1f0Lyh4UnDluahLyu
	 qBO+mfFfXmM36DOQNdNmS3k6dIBfm2A1ykwsBEOGe/UcqNcuIyXxkg7NF/gReSLm0q
	 2dHROKKwzVQmHlBSYBf8BqMNZAAfQqHwkpoWv2cDnFwagr1+YZHRRE9ezIaseAvgDe
	 Q4bR+xdD187GCLmzWL7zxpMQNNpdeOf9q9CKb8uNdRHutySWnS636K75FbR5kFfcLB
	 C+4IFvcKgai2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB7DC369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174479399362.14718.11714958144965889361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4a67b2c44eec74de6edef51553a60503196aad84e06ed597dd284d9492248a0
Date: Wed, 16 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744793993
