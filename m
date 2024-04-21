Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65824625
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 09:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713690023; cv=none; b=iTWBKGFrN5p1ekCYkHR0/MFu1GHqn1DLFa98lL512W0oovuF2TQTBtWRzT7AT5e+SrCqpZY9hH1Ls59OOa0tNw14kxR20U73vC91Kb8RkvmYFM0MTEUZfaA+JAxFUe3ZYnG6iV8qosHMf7Fjtbn7ALU41gaQ3uPwJEY5EMVsfbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713690023; c=relaxed/simple;
	bh=hFPamref2MCak9VGXo+zTQaWxA2Mez5FDiETXUUQUmw=;
	h=To:Subject:From:Message-Id:Date; b=Y8uwNxX0IQWMEYuFlisdWC0h4ddNGY2BPzNcIp+qx2nsjjAU4DopTr/01EVitOFbtK/kGe0CNIKQsa70fhFPmfkkfpKQKGizqiQjG6MkMZxK/lwFmTWFyGnIHT2fBCPyXUg7T+UlqXQiw9T2b/1OJ0WN2D4Vp/I/fUfvaZFTfZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nycpfkEF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nycpfkEF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4CFFC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 09:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713690022;
	bh=hFPamref2MCak9VGXo+zTQaWxA2Mez5FDiETXUUQUmw=;
	h=To:Subject:From:Date:From;
	b=nycpfkEFUhTvJ7ka5jHh8W2UOWQklj3NVTeCf/0kyrdpYHVlEYnpYOC9XOGVAn35s
	 +hJoJduWtQbF0QRrDyl9D9BJNt250ulXaZND+3H4BU8QY3ysQlws2dA4k5EJIQdodE
	 mqDqDDqVpZWP4SJqF0NqmHP/1OFrlDlUfJr2yhlJ7AtlllhPWUxdy3VPtW+FQScxWU
	 W9Q8FsYSYDjaMmeqHPifQrXvY6LNJNj/YYS54nZP0DQzjaNsggk8mV+K+5M589Q0fK
	 pFyNjfkxFihFmfnwThIvUroombqu3TKoFOY/NV++jUrtWldYOFjENYE/MzIEcrIznz
	 S0PZocVFarLlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1170C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 09:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171369002277.3144.9633013832623531080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3c2058b9bc53c2a22ad94ca76cc22ff15f021a3380c343b55d8b144078f507d
Date: Sun, 21 Apr 2024 09:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713690022
