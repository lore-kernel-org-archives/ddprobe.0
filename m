Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E39022338
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737081954; cv=none; b=IPMKn7G8+GBYnXieD+ABESEEWVyBRlBcatlaV9lPoQ7INPFR7cY6Hk+aapx8C9FTL69gBwynmYrW5ki6Tv8aZJAUpEkON9oAdNj+SIMpCPcXLozdTuormVrA5ODQdrwEx9KKNGI1auP5+sxTutMnPMgfXcH+b9wO8xSAjV7mgOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737081954; c=relaxed/simple;
	bh=TugUlubHHmPXxA391CGDbKeiaxaO171R22PaClnRXE8=;
	h=To:Subject:From:Message-Id:Date; b=JfcjEJH0NC2txl1KC9CQ8DxTbyHmmc2E2inAEwP5ZwfNuRfD5QoWKgaWHcpH7x+mSY7D9c6QY+2Tb/rbRqNfK1jpTdLoOxQRMl0FVL+ynFb8+UdhJ60nqIbueEbiCrcsNXEg3WCuyycT3QBv8dm4prJAtWklULc+gp3HQL2rp5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KVBVHkHE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KVBVHkHE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6BBC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737081953;
	bh=TugUlubHHmPXxA391CGDbKeiaxaO171R22PaClnRXE8=;
	h=To:Subject:From:Date:From;
	b=KVBVHkHEq63Uxbrhkm2JOpFJ/pUiW9K3TNaIFp77ansvhueZpLAqvpYDe5PDt74PK
	 eMkLEtI7F9h9S/CB3vkqCm/lfJTzpo1Q845ICg4nKzTbnA8ZBIMAYK/vPuA58vqAQy
	 gQ1KZymdUuQvDnzK6YdqadixkYQlyAfMGnCv8brFRBIi8jec0Fhor+NpPsB+k0a0W8
	 pZwQKNjig0BLzwKHev7Xkjhjxuo9WRXJZBStyjN3Z6D470bsJGqnU4ucYBmI0xlYRP
	 7JQRiRQR8rphxv80ID7tmAtYJfS2HnmzXDLQM2E+/iqcfLL3FLilv4xU/TOgWe+NBi
	 7tU60mLOxksKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 970A1C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173708195359.4971.4897812925780813355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a970da85d180ea5621db518f084db8d06c763c0ea1cc261ac721e2c674be276
Date: Fri, 17 Jan 2025 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737081953
