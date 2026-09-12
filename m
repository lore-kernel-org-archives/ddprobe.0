Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B9CA3321C2
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789176634; cv=none; b=F7eJFXUKbNXLismlD0PcHr/kkPe2EoPJ/i9HNLP7abaODNW16tR/3XxM02lwVBR+jmosFyxbgvzrBmuy83JWJaZzEa7P+GMASjRMw2MpapFACuivqvJd1BShSi3B/S0bkSn4oiRlp5B53hKd2U6XavUQfHErXxPyjSpH9/Udfyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789176634; c=relaxed/simple;
	bh=19KT6iipfaxx72lrLhQnOo+jKHfDD/3cXLAM4bajWA4=;
	h=To:Subject:From:Message-Id:Date; b=YeWgKDZfqJnG2h6k/JXvO7bJEH9bQhuoxI/t2XhYIGTRtBp8O3AXvlbzhb/pk/BbXDQSAyIuRmlfpBIyU94aF7TxdVNMYZMX6SVwCpy/hNBf867EX/Cm18UOnZo36RyOLu4THPf5Tb+JUsbsUwUPi7kriWGEhTF/Umf3HgX0C4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=obVlR7cD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="obVlR7cD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4591C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789176633;
	bh=19KT6iipfaxx72lrLhQnOo+jKHfDD/3cXLAM4bajWA4=;
	h=To:Subject:From:Date:From;
	b=obVlR7cD9a8bOGBz+MRHhX3klK0SZdvfFVV5WpA1r/U0rVLGqTz/YSIGEsTUR0YB+
	 8Dt7IMEps6wrU7luiHpRGUBz/Du0/6aADYz4bzLH3hpfrgl+B+YjTPEiGd7OinYwt3
	 io2Xpsjm2b+SIL1NTymyoTzOI7zTrktswPVTcTb/ucORq1rHn9+21Hu7cC5K2Zbj0d
	 pDIAoeN0jJdGY8cbEjX3Triw2mbC3gyt3GApDB3eOPVSzA4352pYUiv3mgioTlbWhl
	 NmlXoQJRG+FAHStNGuBJVrwVmol8H+uiY0O+V8SR4UaAEewZ7W3JM4Oxz/js4Pi3sU
	 z/s77vbMZ9LUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADAFCC88E45
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178917663368.24841.5138373633394234675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eaab739eecc8d2d45a568bea075706d6841b9c4bac36930b4c47d098d25451e
Date: Sat, 12 Sep 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789176633
