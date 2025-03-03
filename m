Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45B5B1EA7EA
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 07:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740986334; cv=none; b=OedQlk+hRh/Wbdqvk+YPF/tcARRX8H/VyTe6oCbsbFWUSKkGvO9ohAfgJuEfoSVebRupmi7Ljo+IusHh+K+bByg3pRT6tGDpdeBR3Xq/e70/Z+CAtBYNYT+s/0gLi/hMzRguH6kk3VtDOksyNyK6nDTA5IQIt+x08oTiFGZVFTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740986334; c=relaxed/simple;
	bh=Z2tzGz0ULYwV97UNOc74IoUHcQnG6MfHt0ZjJz/J4mM=;
	h=To:Subject:From:Message-Id:Date; b=B7f1lEi6tD+Ky/RvZYo94KkXAfZhqqYjAB9aPdWWaEpj6jJkAgxpRqZqqrhJcq96jxiWpYk4JZCMNXZv4u5eGdYBsXOT0c438UDbUmkci5ljoAY+LESDydsDfs9oSf4TsJXUQcpY0w2MvhPlOBefLVYk6865KMJIMCwyqTjBeK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jx8Va17E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jx8Va17E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA200C4CEE5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 07:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740986333;
	bh=Z2tzGz0ULYwV97UNOc74IoUHcQnG6MfHt0ZjJz/J4mM=;
	h=To:Subject:From:Date:From;
	b=Jx8Va17EkI9NJhXlMHY7eDbXbYr+R+IlbsK5c6mXQQSLdvSpHyTWogsi4beaJJ2ne
	 YM0r0+mj/OFFOstaJteDytVCanetQr/pXE5jqfF+nVjBdtiG0oT18NdTYewmMNzCI0
	 ZgHr/lIGihT8M+K/2iZsnSzy3eKsd3YWFpH9xLdo5j5xdY5n4y8K5VNlCXPLB8Xjc7
	 s/sjpb9QuB5bX+W0dB8pCagtjh4YtjvNRGTD4OVy8gX9lBbfIYGNDLW8uh4yLS7t7X
	 IJRbRF2ROz+8dmxRjs1/VCpqnSezAeb/H8fYTw+TeGNym4oi1QE3F4u8Nd+T39CSZy
	 SE9sRcvWkTecA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1BE7C282C5
	for <ddprobe@lists.linux.dev>; Mon,  3 Mar 2025 07:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174098633358.26375.3227471344465848802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c54be2e403515b47da84e55556b8484170563633d3ab0c0b7fdc6c2c38a1ba3c
Date: Mon, 03 Mar 2025 07:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740986333
