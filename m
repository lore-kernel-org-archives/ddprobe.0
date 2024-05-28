Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F1145038
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 18:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716919463; cv=none; b=FFFLXRmsTNa5GTZ+hVMXrme8P5vFfbwSFCmiX2yB2VMdM/MNjX2dZU6enNAmXm7uoAjR9+rKlIu4nmS3VfQVEaYNZHUSMp/XuQFbWRQpqGN6Tt5E/CdLBgAdSavQ+EYp8XZthhgNWVO0VaCST973HB9fZTLMRMKplkarxesWnXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716919463; c=relaxed/simple;
	bh=dRJ85l1yymTcFubgSRRQI4ao51JP1zYB+gHik9MKtxk=;
	h=To:Subject:From:Message-Id:Date; b=buHQ64kOFo9EIXv/qejmMZU0tfYhSzwfVHVsO1R8d+ab2TXTAubh+SazGHHkOyRwJF0towt4T9iiAUlpnyzKS0ivTB90YNb4rBICyhA7n4HE93K+Zh5XAnN7+/TDomeF6UmLQgfkaLKuaCft1AkyNlOYgrHStk8vNO/8Z4EWYdI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VSIItNkb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VSIItNkb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0FF3C3277B
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 18:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716919462;
	bh=dRJ85l1yymTcFubgSRRQI4ao51JP1zYB+gHik9MKtxk=;
	h=To:Subject:From:Date:From;
	b=VSIItNkb3iUAbW6A2R8/ZNUVpxk9iL/7ne79ZWZL6jpO6NO/pm6dt9J3pVrHk+a0I
	 M6nipir+K8IHMnYABN6TaMOTjoOnMokuFDHgU8M9WdZWlObTT7B8njsihGrTk1DEP9
	 kD8rwk6Qm8fnbmKhOEmsUXuhtLDHEjNLXLzz8nbgahG8oA1lzfB1I3UOqBFT8xEOFq
	 9DUgENlInh0g3Gph0QumYtD1PfTh9eIo01fCQRRK6/OWr1o+T5vvAm4ix4Q3Y8OD0O
	 UCQjqVUoLZHf4ICHKsypwksERY2NtE6wKaMNHCY4lB7sCgJDNG6EFYBFPo40bcNjHa
	 Ud8oUjlZ1VNlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D00FCC25B78
	for <ddprobe@lists.linux.dev>; Tue, 28 May 2024 18:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171691946282.455.17904840389894228768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e689c1d8e099d7defe54a7379a49fb06836fd56fbe67543883945032bf2fc5
Date: Tue, 28 May 2024 18:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716919462
