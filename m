Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE05225760
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761438594; cv=none; b=itTpweLt/rdAh8p8IjC8rR12gVA8fpmWm1oFANwHGmaAGDpSVQafTauZ+cZR5QcfP39471RaNgWDhRpW4PW/fBVD/PVSU+irb3RECumy1LZExETB0V67ij0H5olHkYS0xJfm6AmTZhVQNm0NeZ7HdE9vRum2jKUTC6rnITpJVgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761438594; c=relaxed/simple;
	bh=AWO9oLZCmgo+M8gwUsSCTmb5XxBwPuW1dO/KhYFjImk=;
	h=To:Subject:From:Message-Id:Date; b=CKke6PnFeCYEWTd3XTfVOy7lWY7BeTDsZttcijZO0cgQDCFx+IznADTVlCpbkyqLoKcroZ521ST6zfBexHrQYTB/RM1ihfmDsKiD9CU36797fnqMDNCgx9vtr+mhnBhmt4JBmZuop0bPY5rWRcpBH2wmsaZpM71/Cj/DIgDF0FA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=euLk1hnd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="euLk1hnd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E88C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761438593;
	bh=AWO9oLZCmgo+M8gwUsSCTmb5XxBwPuW1dO/KhYFjImk=;
	h=To:Subject:From:Date:From;
	b=euLk1hndv/WMRUwc0DUZXEXM/m7QR8sHcOFxn/vGhC6BA2m6U9RwCbgYoze0xfc2Z
	 LjAH339iWSBGw/NE/7RcEroru9/Os4zUPDV6ilBanfCbybKG9/fTSNVOSr3Cw5hqkU
	 MH0snemSlBAR79VfVX+MqW1qUNaS6rMtuSCNbfaA2SXErbAoZAIb3YgsjPVwkOUt3Y
	 f/grS1xVpSiLXhCWv83/VnBgfUsiFpkuHbfdjtTj22I0nqw7WeVbY4GqKTGZLv20a1
	 k/wsz8FcA6BRd/gh3+innEZAhZM701WvefiAZ8DSKh5Qsn5JiiaDkjkhTrxWgyon32
	 NDQ9resZ8AU8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953C5CCD1BF
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176143859358.17310.15947448664159514841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 039257ddfbeda75c2672c3a30f17c83f522a3ac2db961dd0a3940e41b2a23e1a
Date: Sun, 26 Oct 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761438593
