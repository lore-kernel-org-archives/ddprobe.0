Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F3124CEEA
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785251434; cv=none; b=KgnvQljjwpiO3UbEf1i3xTOL3etHm01F3mhkTd13RW8KnB0eDHrkgzPGgD7TT8QuuJKrhEr5n98NICR2ER5GdygUDjA3xEiVhKqHxiThId+PQWYGqiuRH/UQ56I7p1i6omdsmOcvo75dSf8F/10XHAVLLSeTKp+6DGhpeAKVZbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785251434; c=relaxed/simple;
	bh=XJ3nOgwiAZG5V6YOHvyM+LtXmfdHzhBqeH+8SoMXzBE=;
	h=To:Subject:From:Message-Id:Date; b=j1ZbtmOEONZ7BHE99lw4i4d4OPaMRGVt074TipakT2+l2MfeFCsxR5O2v+vCKWKSJ0fVqDsM5jLlvg+RNUe1Ih/0/nr3pUiPkY2J5L2bvO/GDY5aIrdswlLpHwMYp4X/f4Ty7cgZ5BOXpoiOudMQqWKsZXinoPuREr2Oe8Tnilk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqFVK51p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqFVK51p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1DCC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785251433;
	bh=XJ3nOgwiAZG5V6YOHvyM+LtXmfdHzhBqeH+8SoMXzBE=;
	h=To:Subject:From:Date:From;
	b=pqFVK51pMStopi0w1TW4d4q6twRWZ4n7C091H28zqEuIb0Bb8KV9yOvEOM7pqSWBo
	 kVnGhgSKIiMpCzjyx3z5sJm0RCJ+MVzETEGEX2hNZw3PkxxVPQFPTyIFDcuUh/nplq
	 XBvCiQWMSUSj4EVDPzyhh5I5O4iWJaiRyvlY1M4hK5dV4qJ8ChwYDYi+FLD8P9hDg+
	 9Q3O/icYI1s1I1ntHzEqX9T7dcWlQm/EjBQy4BgwILdiIiGiozW7mRs0h3k3TRuBEn
	 AZmjmJzkAFHhUWVQj6OhEMUfKzQ/sulPA5Q2JnfXLGY+wewUPgTdmTWTSNiJcjmwIE
	 W+5Es5GMB0/Hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB80C54F4C
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178525143369.8741.8537901137630893641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95f82fb9af189c48cb608ec208dbb7befecc32c2663061cc558a1ef141ae0e51
Date: Tue, 28 Jul 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785251433
