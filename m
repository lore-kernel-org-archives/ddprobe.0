Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4446D86329
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742729394; cv=none; b=E4g1h5T0mUCYaNcxCba3EwKtGk2sa4no0qWhy8g/KqJlxC4QWS8INzCqMfh8KB7F/KEHIuQNFFcEy169TciuCNdBV0tvkdSUhm0OAJDh/2HNg3xW+lfcxfE9zPNKdfM5hDtIdz1l+Yx5HrL1eGpG0Kd4dcf1IMVJtFh6CVpHV8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742729394; c=relaxed/simple;
	bh=frONwyeeij6gCE2TgVt8JzXEtbFGW/ro/FGAwDIvAuw=;
	h=To:Subject:From:Message-Id:Date; b=V03G2ROzvH5UYERbB6MDumSGTfJRb1QUaP5GeNhjIJ9T0xu5lKWQPlufpC+SBNxCrJ+Jf44a1KhXN9c5Bj1rE7D3BftF3sFUClQEFZL1iN2mY/NZ7B8yugxn2t18dLfBVTGmCVxXEXbJx1tTYdkaadWMYr7QwoQeV5mn07k/An0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwvgnrcn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwvgnrcn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5F0C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742729393;
	bh=frONwyeeij6gCE2TgVt8JzXEtbFGW/ro/FGAwDIvAuw=;
	h=To:Subject:From:Date:From;
	b=hwvgnrcni1ZCZmYmB3EXM905ujhXnXdgD16j+ikOrQm7bAp5jxYUOTA7TlBjbYwOK
	 WNIHLUOekN6MniLMBUfhXyviV3WBnQV4C6rGU/3FCNesmLOYwsFehWK8KFmpFUTLs4
	 OZbS1pPBaJvF6e6F6IzvIKXbTS+tHsYqoZlIr0cBalgLYd/LpD4rktarNkqNe3S/IO
	 z8VVUMqmGVcyRARPj7vyIvS68tkNqs7mAoingo1Vh4qG7oC7g/MgaiezE8FN8LC3+z
	 DoL4u2Mk9is91qlVD3sIKiFvFk7LbO0lKC6UwzxVw7GKwlkQgqxzv+P7qVu1u4uox0
	 RH7Tr4lN3ibzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E81C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174272939360.8646.12626745110955370645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a416ab8ec516738a8ef29bbd3e943a74e2c9a7c40deda27a25ab1e9fb061ed99
Date: Sun, 23 Mar 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742729393
