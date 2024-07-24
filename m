Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6A2DDC5
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721829954; cv=none; b=tVliWQOBV+JVL8Sbrhq/RK95OsYTXIKUJBjUfOQA7c59jFWrqP1YYZhqqTk6S9W7K8QZLyhQ+s5NoDHWIoGvjjgYP2Rcx4EPvGcx77zB09ptganrdgK5UFhRBGtcv3amGeX3moDPMrTpBAMvOMoPbjtf9pfG9r54iiF8JpYlaOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721829954; c=relaxed/simple;
	bh=K94TPctfxsc+xiQroSmmpvl+VlJtwjv4OKgzg3/56Bs=;
	h=To:Subject:From:Message-Id:Date; b=JQ/uE7iPIULXN0EzqQheFqr5utG4Z6N8NX726FN887OMzQVtQvqjrFJKYZD/NckRK1Td8LmfML60krt3pXZNe252u0hQqR+HNaPFdw2xwy+9OslY2NJ1SwzFkTr0PYi0KoCJsdZMdV/oF3Zoz2wJEXSPFphRFuk1q9+fmIdWWBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QkmoI0y+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QkmoI0y+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9685C32782
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721829953;
	bh=K94TPctfxsc+xiQroSmmpvl+VlJtwjv4OKgzg3/56Bs=;
	h=To:Subject:From:Date:From;
	b=QkmoI0y+Hajd2esmQfwMNXpUrFHBSczd0W5OqnTO86ycbBqURDe1uBszTzhWLtqwu
	 2OJgKjJKVL4Iw2PVJ195VkaNHQyfR7C1FDUNGwnIY59Ko1C6hkqzpAC7bFUVuR4lJk
	 wDwLNzIvCilSEO0bb9pj4t3rO48UBbMSo93HWYnwQxtrhnvCeWjssxfpUohUquxwra
	 C171f0a9mVCVDBCakWU+P5K0+KT3N1HJ8hoXqSA8OMHpeK14pArlsbOgDORKv3O0bY
	 hssK7tHxYNOS659nmIjzM70J7W514XXG7AcgJ4vjrTIyiLyL2U+H9oByepjJbGqMuy
	 hQmlY/nBxsOAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97124C3DA61
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172182995360.4125.6614035343292256921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad7421615ea0f92d6be9e25501ef2884b7a4b08722a77ba625f474ac434d8514
Date: Wed, 24 Jul 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721829953
