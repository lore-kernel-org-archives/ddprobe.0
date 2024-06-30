Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42DFAEBE
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 16:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719764063; cv=none; b=bl1FJZugc0P3ux5KoVDRpY9WglKc4fzSqcrXPkkqP9cAbQRnJQi0dIJW1WzrBMlMSX6UoHpPLhNvGZjft+8PmnLRMz85gp2F+9JFSZe4bTR1RmSuoxFyjzLHrHLd0xTEfQ91Bs7dPzsDLlgdtOyy97FiCic1MTXxNrYJKmjcZkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719764063; c=relaxed/simple;
	bh=S5Zf0tBWmdR79naH+4PgrO0mZ0nZbI2VmUBP7ISvhiU=;
	h=To:Subject:From:Message-Id:Date; b=eyZFJK5wUr+8Db6IFErf1tA2GdN4FQUhHQdi+motYUbs68AyrC2XO1JgqaZOCB0/mr+3YVcuBGj1aRxyhzqBvvXod5DgXEgw0cPpDs9PyfbhzWAuOuA6DbDa0UO2G3/4eMOk9TVtc7V4y2PKp8+Tr0BheRRFEg+C1jkeGoiUEmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6rsSs3A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6rsSs3A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C7BC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 16:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719764062;
	bh=S5Zf0tBWmdR79naH+4PgrO0mZ0nZbI2VmUBP7ISvhiU=;
	h=To:Subject:From:Date:From;
	b=i6rsSs3AKK3oqfFWZ+/MOJqLCpMhx7TwVMwsl/9iKA3oviQV1TTYpLCDxQ0VSlkLE
	 kdQnzcvhxmcayNZkf3Lvp66+PK+2Jj5+R1QEIfAhu0Vm0TblPOr5BEit1rJYllO4kw
	 hYFlRFwloIrhdpPe8Q12P4g64k2fU9BJOkDcZmElpSK6bxhodPBDA+vF/8HbzicrKb
	 0jk4s1HPNyni0QK3lXnan86KonFCv+IhtHKhN5BLUAySphvpaVT+v8QnCDf0clBtMX
	 IeEUsiKppww2WJfwzFQcUfaH7x8565amN7vvHX9BKqZM5mcuCHb+HfuKZTvD6Hj9DV
	 ulQAWSnIjyc3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C46F4C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 16:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171976406279.25380.3755832153959187773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff8a659359b78ad062ea35093c62a6eef52d63e4aedf7e1d5305d6716bd8e73c
Date: Sun, 30 Jun 2024 16:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719764062
