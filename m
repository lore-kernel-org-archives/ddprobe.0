Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC27155C82
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754794194; cv=none; b=hvShFhSDkg4CQSYd47XAbgE0Zh+DwOChZ78nTE+VT2gT1YlJQwew5AacZdsmu+bDuS4fKchi+PtnRuB3a1K/b5vLIcsGy9iBN6YTWvnBr0xw73mVmF9qOmqi3RJeYSQFFfeanx5EMoJdlnBWFKhnDtYCFc+aEnEztTudqARSDmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754794194; c=relaxed/simple;
	bh=deP+Fs01/kjzZeyFLF2lkNd4UI6F97uG5geIAt0OIY4=;
	h=To:Subject:From:Message-Id:Date; b=akDNMhHFeA7g36aHLvsUNUTINKgxYBWJRfYqBCgxhYEf3yxhGXGdFZlkYV+KaGXaZUZQ+CP8JYKbabMHrZfzF9SpdPQ+V/sePjY6EmX9OFfJN7Ovfz+5ob6gGYd4cUhjLmqsCmAejfIgvdx1FmMoLHN/Wc+0xcd4ZE7s5iMHA8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uQ66hHHZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uQ66hHHZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A84C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754794193;
	bh=deP+Fs01/kjzZeyFLF2lkNd4UI6F97uG5geIAt0OIY4=;
	h=To:Subject:From:Date:From;
	b=uQ66hHHZfc/i/8HTX5kVGwN1Tlevz0gihTd5PCyX7cS705Kv0MbW2p7FG6eIi88kh
	 iGmMoLkimcr+Ly9dL6JCK1Yk6faeXILhhIusCpKsz3RTUILJmmBZs/L7X2zW9XzLps
	 91cFsWgWZZnEvxx0FyZ0OogdyCEdo9koLOM345tbL82AZb5ZZiXIbahKO1dybM0r75
	 AOZCJRG3ccCzHR2AXqXNIbMWv6Mwt3QxvI/InX4gz5f1BPc0h+Xl3QQLG4ojla9ymk
	 rfVEGfloo1CRH/8WIb+t3B1Vn/VdDZ9PKrTgMBV8n1DXsAlA3jT/CgloQHnEiKtNE6
	 kaMDTYUmnASug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918C8C87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175479419357.11382.4300970730291425337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4911d61c6a80d12708a4e4937079f9f7d6472dc85cdb73fa28377a47a2804722
Date: Sun, 10 Aug 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754794193
