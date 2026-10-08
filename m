Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4838836402A
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791447634; cv=none; b=KAeI9DpEa1lAc3EPn+YnP0zYdzXCFREHby5BgFIBIFecrsaU/nUjRFWEN6yrNvtYsQr/nwtVXn3cPZyqQgWmS/8ajj3ZEeggWY4/wwM8BPgliB8J6e5ICjo1qzYWaF20U4PLYJG4WofrtxLbdqzWkcmnRxc13NCs6lY4+r0kcRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791447634; c=relaxed/simple;
	bh=ZQKhcs67GrbBg3xhKQFEkKRJpUzmKvHjB1VBrvlQGT0=;
	h=To:Subject:From:Message-Id:Date; b=pxvVMAqRzixYFLcD0jDDCIA782z7G/4LLJytB8LNX/9QVgT0NjRHnneNnGYTr1ECWAoa6ejaIGh8Ibwwoc1cJm85UqvGOK8WtufiFz2kmhU4nIDkCzkEmOHbmjsb1qb+GWW31le5+aoQCDSpAimWF+QPbZNgXzo9OZ9kNu00GmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bNin0ktd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bNin0ktd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D79A7C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791447633;
	bh=ZQKhcs67GrbBg3xhKQFEkKRJpUzmKvHjB1VBrvlQGT0=;
	h=To:Subject:From:Date:From;
	b=bNin0ktd9DaUDI76eMQtHg7rHrGtuRY9m5XY8Y5JBjvidENVr0D1zH1YFh+T7hJQq
	 t018OeNDLdNnSLN8qAQzofylhnH+GvQe/j7uheRwuOabPypTiwwYHjt2zYhX0bFFFm
	 go8JNymDCSCLuosCJyMzqMUrr9N63LRfDKTyy94SeAHtkOL/N6Ndq5sBbAkT1V1wDv
	 HRBXYsMwaQFDAPaorkwTcUYTrfjJw94LNTCTUsEhiF9wwnWhhx1q5jNG3fE+k5R2+G
	 o88eoA9ccSD3AFLcJ1x9YSdSIU4tZTVnljcs1HRJ/j+1C3FawkmEnYsY65rLBcCMpl
	 6vjsv4kZ48u7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0CB6CA600A
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179144763371.26398.16697179853858140052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c7237f4453f6b56624a756e0a3ed805b17e03886a6f5a1c4fa3c647078f56b7
Date: Thu, 08 Oct 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791447633
