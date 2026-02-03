Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7BA23184A
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770117234; cv=none; b=QcT6iVCoBV4L+/YpTto1UaCG7qklER5UQqOnV/fU/rqGKyUu5jFGgl69AYzM2fcLzUHHDVhgQZwSU9yfoheY4Elw0CoT61hi9NUac4CSuAb47igOEIJafm6mSXW0YY+De/niBoPzVgkNKMKG9tYn5d7m+ywbAe/DRJWrqnnXuNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770117234; c=relaxed/simple;
	bh=a7NscI0zQlefBrGRe1M4HcXwsGqEwWQDQLDkpgPnqh0=;
	h=To:Subject:From:Message-Id:Date; b=rnl/fdP3KwEsLH2CNF/B88e45mZG8QIyqLnCDSKOZXy2QK/8VAYzFT/Hjy0510QGOn9iosC2O735R04a1o2vUhSoUD3A5aljkmsd9VoVMcpk6ohE5D9Bt4D5x5QJYUdQegjQYZpJImc/TPQAQ6iNa8X6bHaGicbhAP99nxA5Ssg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=plBmmXb6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="plBmmXb6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3838C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770117233;
	bh=a7NscI0zQlefBrGRe1M4HcXwsGqEwWQDQLDkpgPnqh0=;
	h=To:Subject:From:Date:From;
	b=plBmmXb6bgzNXoJp9Xj3+HoH/DvVuw+shwXfJZjfwgQ03gcGikUCdnXjte50Zfa6q
	 ovYhbMrtriCkHKGgu+HmVUe7Dn8JlHeQIxgeF6AH4nAR/jR+VIgE20rc7xYH1dfQxi
	 3/LPtRM1ngkFqGuOP39fNPdSd3Tvy+y3VqK839XIK3RHdxKgGn1ghg4MCpmBgk5GMU
	 aHBRvX37U+1dIJf6bi9fd1f+fc8F7Xs/zjdkm+00wgImSpAqkD5DJ/S68+GtlztVOG
	 aEQK07yMoTCxFfHJiEFXkTxQWNeB0t7UC5W6XudTfqJdP86DnkL3pft1uTdM1jq5Ma
	 OSIAaqRsyHidw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FBC0E6E80F
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177011723363.23283.10884211888182313872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f56874b6d145577639865b038c73e1224d6f6a2dad3a1eaf8c761aec4b06b4
Date: Tue, 03 Feb 2026 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770117233
