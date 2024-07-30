Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276691AA3C3
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722372354; cv=none; b=l6JPEh6izOkSf1IQZqxErv5s9i8UKwv7O960cLtyYMbMV6X+67sQryHe45ibBLsHwmnhDj+DPEbh/DAP7TQatJ5CmZ19I1P3o3H1jgnLJKXTvHGzkBxVIXHOpCjZY6vThIMoXQsOEHcDocMPiJcOreNe14WWv5Ccv98kFJA232c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722372354; c=relaxed/simple;
	bh=z27Di7PlSCcDY7ugd3KwUoG06+18DONdD7V0myG98BM=;
	h=To:Subject:From:Message-Id:Date; b=OQOBNO9lShUvuNBaAxcn8zsiGRpMrT9H0KeE4MH8VUTJ3gCcDE477G2Ad4lchDqFLNkJQu2V14ndV8Gtj29kuvMs+eBx2tmNQp/z7zO/LD8qJU2NEVZExjx09E/kpGHPu9cvvGfbuJo949tWqTObTFYxKupfg0PaWT6RReT80Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMvaYu4w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMvaYu4w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABED2C32782
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722372353;
	bh=z27Di7PlSCcDY7ugd3KwUoG06+18DONdD7V0myG98BM=;
	h=To:Subject:From:Date:From;
	b=YMvaYu4wQlS8r8ldGaPwN6fuLacIHrZr1D2e7UIgee10QT1YpSn15CLspUOgH20VF
	 O6TNchzJkmMJbj0ksw+f665htYOS+d4Y/I/mtACiIQ4OJQHnJGB0E4ZN4pPtAzxI+n
	 INqezv1pTZCF7DvNtXPvfyDMpp61JLSAtU8LsVuTytv+81sA0czcEfbu2suJol4vGV
	 5K3EzooDH5yoDzUpstSnWyn9U2X7l+b1NbShLYvOr8AUNliqvpyc2kV0BDxlejMxLP
	 VCm3fkFa5uBFv8sV1zToNUKqalCVZKDJSLLg9/gTenV0cGBfGLVj5lJbpGkgduX6Uh
	 eaZOYv62j6a3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9959FC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172237235361.32139.8034613909046908100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c13dcafbf4e77eba8c753aaa49f5c72c83c3d07fb484ca3fe2cc7042805df1a4
Date: Tue, 30 Jul 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722372353
