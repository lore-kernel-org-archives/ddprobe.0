Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5ACE8061F
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708697896; cv=none; b=cLFPpqLd0jTR6m/Txq7niinTqUIZ4jvTnpEDmNInRKx0Vq6pY5lriT5x8ZUz+4X66bFzkZZlBfJ5CmfC2aM+flnumKC1r65bnO/k0LXQbxIVi65pY+Qm7z7tSvaYujgFgKEKoIKN4o5FYzcxPpJI5VqHbVR7GKyVP5OfNkiXYfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708697896; c=relaxed/simple;
	bh=OJTkVfTX8nXW0FCn9Y/uWtRwhk8xaQzTm0GiDsEb7Gc=;
	h=To:Subject:From:Message-Id:Date; b=DBwoLLvvFsoFOyuDudWBQf/oXYnzuYSULWYcJ+BtuHDumtW3CrWERRQlIEGYMIB9ENJUVmBH5jQmshQJIXbicuVwnITK+IAsSQAiT0hRXpkZURVf39QVVNmWsxhxCM1LFF02KI3qhoP3U+9tdxV5pMM+DOcpvPDhgZ+aQoaoxsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUummeRX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUummeRX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BD01C433C7
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708697896;
	bh=OJTkVfTX8nXW0FCn9Y/uWtRwhk8xaQzTm0GiDsEb7Gc=;
	h=To:Subject:From:Date:From;
	b=fUummeRXPHTkoxYBEPdgS3tRgP0+NZozhgNKoQAMvRwHI4rbsoRIZG1TrsdHvPXbY
	 Nlyh5v+5XtaOjLbUKwM9TRaZFULsTHmFa3QLt+MuHbabYiL7scsFYv1pftJdTILDg1
	 1Z+6O8aYS7e6j9i54/cLWTo9XwfSmZGviJ0q5UJaNFuDdbIl8ZKV079yr86ZI+j5HK
	 SDSuTUwsx37iE1wRtADL+wG2RI2Ek6ef8IdJ6HvCCkJVBJZZFmD5rJgoiVRNlfI1zr
	 lmjDZCgmsfcjbjQmJ+mZI0Vny1OjXvghf66fRdf7EF8Rs8ACSbNi5NPBPrLv0rnKfd
	 PhNE2KKef5nSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6105CC54798
	for <ddprobe@lists.linux.dev>; Fri, 23 Feb 2024 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170869789638.8498.14633209438275026302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e93cc44d7f00239b0efca5facc34a1aaa1d240296f4f4f392b8126e1507ab9e
Date: Fri, 23 Feb 2024 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708697896
