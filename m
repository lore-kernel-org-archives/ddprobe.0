Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAAA3A1E80
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 10:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781174194; cv=none; b=m5BZyQCGZ3e7/gu5gravJrCRvJiRSU6YKbrsfta4KWaoVXts4EiAONCC/kLLnMO45EynNu8aKe05dUtt2lcRLap2SBDE6R5gMXnWzfRmVjGUf3YBjqOj6MKp7vfItg8X8HGuTexTguOmlc5QYpHz6/XQkmNQyH1NdoqWmO2/b0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781174194; c=relaxed/simple;
	bh=1OaH1JZeuq3jhhGEsXCwpqzS01BGM66tZ55BkFCMGAo=;
	h=To:Subject:From:Message-Id:Date; b=G6ke6sXlal7P3TtFjISdya/bzJeIHOxz06AX2DZ46Aabur7MANYg50bV0HpMuPgvKZOEIEY5scJw7IMYqbrcldEI+LffGGIeb1ppghadkKOf5ugeaO2XWq6oRNkgdz82rfapUmQfmkk6IXRz1qMQQa+g0H0w8hO4mVOhZxM4mjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fogMEEBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fogMEEBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1FEC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 10:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781174193;
	bh=1OaH1JZeuq3jhhGEsXCwpqzS01BGM66tZ55BkFCMGAo=;
	h=To:Subject:From:Date:From;
	b=fogMEEBNa+S2AkOJF5E/dQIGC6vQmfwUX2/tqF/wzCWXMbDfQzEam/k2tkKNHeGWl
	 3l0hf0DP/58KpW7m455fXZGmULTRUWwmMOSreBXRwY3NLRPl+lW8ivQm+r/7gJt0Qx
	 ReO79CfAKlQ/41e8iAGK9HcbYGufR5CTuxxzrawLF+qBkaFATth0MYhly3TGntfV3d
	 EEfvikVKSZm6sxUDGmWa/SonifT5TLrkfLK1Hl8vsHhrqvcIGESlN5D75tTD0+Lb3+
	 s9TAXWEtgVF+2HH62Kqg9Gb0X68wAxqr8qXM7EMROO9l53Av8spHbklEZukX4GvnEp
	 RUxxzS5tcElXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DEECD98CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 10:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178117419371.17811.12714718431441534734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6bcc489019264fb0b6f84ce6253b3da23841940d34b76299d6993452396061d
Date: Thu, 11 Jun 2026 10:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781174193
