Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EA9A278768
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751381994; cv=none; b=OykKy7V8w2C/wv4HI6dnIq7Z82GmClZUcd+2XFqCpeJ8g/YYhaxNPO7w9bo0ZzWf8KzpBIHtHyq5fDuzRqsrSj18QwyZGwSvud7Wdhf2oP3p6mTt4mi/NhX3CLyPU5B+ueBhMCnb8gxdDysKAYr3kZuaKFVdATUQya/QTKg/BQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751381994; c=relaxed/simple;
	bh=kXu+o7/fIOdJFJM2UYdFs4I+IGJTWj8x+vJ4KFCLKug=;
	h=To:Subject:From:Message-Id:Date; b=tfB7q8nqBMP6vJvD94DgCZmYLDf4WgdC/Q0yhXjwq9kT1trH3DMm161jE4ux+Js07FtBl8rT1jyq05c9g5osR5c04izIjbMLRyrX+xWm/HuCTC9foH+M4wiI9BwURmfoFtgp6wOQRXJmjBsNCqbYjco1EwPCBUg2oh8U3bFZ6go=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSH1TJVe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSH1TJVe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09C1C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751381993;
	bh=kXu+o7/fIOdJFJM2UYdFs4I+IGJTWj8x+vJ4KFCLKug=;
	h=To:Subject:From:Date:From;
	b=OSH1TJVeKK4uozn/3vB1nNt8FKFJ95ku32zkPr/GjO6oMEri+fEBZCmkytlzgJD1B
	 mF8G6G1m8Dn5CUfqXROvZ+EZLS7FxeK819FS4DUFzf/SQ/qNiGvTwSogqne2tYbCbx
	 ygihrIXYpBAhnahI6f4oitrgEUZUj/22WjIm660zdwcz9+Zs74wrKBg/lGNGBbpKuw
	 OAyyFzFgB0O1cqmBzHw6G3+9P9OJbgJnh7XZ62/3bSqXRdJ5IdW5yLhTwmbV8Yi6tO
	 EfRMOkXEt2GueUUofH2YnknFH7XtqEOjGcoFDjsoZ6Mvvf4WdPrKkkWC0qMeqdloBx
	 SaFMoYJPcMARA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90068C7EE30
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175138199358.27556.10109830060637140631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24082d091a66fa3b73a23a5187b687d657581a0ada20e249e802e8235549cc09
Date: Tue, 01 Jul 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751381993
