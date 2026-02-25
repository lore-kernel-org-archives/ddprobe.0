Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10C4E31BCA9
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 08:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772009094; cv=none; b=P40e3nadpiZd3NRzKMO2JIkj3E5x3AQ+e0OPh6oPUXPgWXXwWu1ydKcS6Dh50B0uNUDi68raLXmRSCBE9zW7es/vWntxbni/k+QwQma8eX/+t+nEgDu+l2JMjtG0gaU0zXpwMVG2C/vWv8eQsEXpwdGH0XwOxVi6ZYMD9vBeisk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772009094; c=relaxed/simple;
	bh=4lmo5A4Fmg038TRE8PMHkrWA1UpBQ1p4U6BW6KOfsrE=;
	h=To:Subject:From:Message-Id:Date; b=FpqGB+NGQ3CdvZfDI4SGOEUYpiJWofYxnHNWDItxAjjeADjRxdSQlYbQp9kqgNhFylTPs2fePBx5Vkpr6zjlv/7vvLl1VxVfDSEtshWOxoxyfIMuwsaVIz2Hpp5fYU1zEOeYHkz65XaDjIqAgJd4DFTcJYKrRA9JXo+PnYMFx3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bqw/LMY+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bqw/LMY+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5A7C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 08:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772009093;
	bh=4lmo5A4Fmg038TRE8PMHkrWA1UpBQ1p4U6BW6KOfsrE=;
	h=To:Subject:From:Date:From;
	b=Bqw/LMY+AznIiPkZ6wVU+TDUAnZbGXgbUNHGwHUScmdXR4a0BobjzgBa+/zHCIdjU
	 Z29WvAbZ6nkKr7VyblLZkAh6EiKgUmSW+RmUxJI/a45zvWX/jM48LP9MsNuopk818+
	 Px0FdXu5kgUQCWE1/CQWHJEJfxHw6axoT7Ic/7TnLTXJkJWfVVZOhW9WAAErQgLFl1
	 HElmn//tIE82NzqMXU1ElyAOCrgUordz6UidAY4YiMJ8lLjbAH2KoqmYpyLJ6mZZ/Y
	 5nqNqj+alqEstQMOdnTNpgUv0ITPD/ft+rs0TF37ox7Rq0dWeTJFvEgMv4XOEqQh/W
	 erOpUDz0Uemfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93978EFD20B
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 08:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177200909359.9826.7935284724098205538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce2d41fb32d0e2a54b3ce51db727eb01444ac70ebbaba35b6b03d76396790f96
Date: Wed, 25 Feb 2026 08:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772009093
