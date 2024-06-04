Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97AB7D535
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 23:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717545383; cv=none; b=FSfWUcdHbHYT52Ivd5bulaRxoYPz7KD1HZTJp4jJUg9n3zD67UK1yVEEuiutE9IrLfYV216KLWLP6VEfnMmV+6Ah8ScLk52jgrHZnGxgyGCi5J5JrQsis6s970zuZyuQPdsMfYJjU7JcnbJLhKlWB9d8q0dL8i6nblngXgIXExI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717545383; c=relaxed/simple;
	bh=pkHw7dVamqyzxN2fLCAO+ZZcYeZ7pzky4UoFJFiMuJQ=;
	h=To:Subject:From:Message-Id:Date; b=VgTC+hDlR4HdK7VPvicJd8z4rPC3/vrAWkHgR6v+0u1tZO/wf08MxyTEEymQrHwvbxwSCEvPg7/uInCfXVK0DmoD4j8KycBfMs0eiLnnc7U/MxXQYhUYMQ2oEnhdsLR/An7QclJNXCvjAp/5tbvTUnQ2Q6eYaSuKT9Gd1o+givQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hkf9yTM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hkf9yTM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1DC19C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 23:56:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717545383;
	bh=pkHw7dVamqyzxN2fLCAO+ZZcYeZ7pzky4UoFJFiMuJQ=;
	h=To:Subject:From:Date:From;
	b=hkf9yTM+pYjvB99dbUAtCJVWJ6BQPW1R2EjWqpn9vw7oDRucek9TRFl351pJ7Wc2a
	 ZzqAT2j9De0+Kwsp1hDFZk5fOpzvPNmZ2F+mJ+WkCVt12WcWZwZX7M751THDjbyJkz
	 W6N1Uy6RVjM7v5wifoAlCD8DpNUMgekLcMoH3n70DQRrMSwviQ9/UMj/x3LzutQeuz
	 yiYsaib3VV6Zi4FhQoLU4ZPNQhrGCGEMSxvVIL5ytEfpwy3bZgrQYYoACzGRsP2sHj
	 7eW6sBJ7Kwe4Dl//s2zYtyFLNJvdC/AfdfdexleodV/61Jp8rXbawfjVLOlXWqVhS8
	 S5soos/ZEO+rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04B85C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 23:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171754538295.32285.16006078551884359695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1f69ad54fabc188b5f4364c9dc00eacf089329c13327e7493d401f26e9b4dbd
Date: Tue, 04 Jun 2024 23:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717545382
