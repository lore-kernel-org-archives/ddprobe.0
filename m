Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD863BD62E
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788493234; cv=none; b=ltAtw2CAf/i/5Jzjf/d6nGT23zvxEdVLQFBrxc/eyLXl2r9hboXt4tqajEitCMaMgK7LMHr1o3vnSIau9bUgZ5zukLNg9+EW4CxjejDBxx11aR1ETF4S8xPRr0kXIXJdZPEql1wOQIotJcxUQ5rXTyvmWZvbBjSd6GwQBFFKOTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788493234; c=relaxed/simple;
	bh=Qe61RRcKvIZK+RJECGaQZcjN85UBv7Dib8E+QC88s34=;
	h=To:Subject:From:Message-Id:Date; b=RQrlHleGkid6rpd9Nn9j+rB6USvZhFROMW6K1Um6ICs3DD6sUDrAVndfzx9JuwYjiCExC31REv41kIssVad+gCv29xIW/ckQukyQOJVFxgdY1TQR8RqhJUSiNPJ1UmYz9mF0BB7xrP3ukfRXzcd57XnEmBrwtDChJn7wTjL10cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qk7nwctb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qk7nwctb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0C0C2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788493233;
	bh=Qe61RRcKvIZK+RJECGaQZcjN85UBv7Dib8E+QC88s34=;
	h=To:Subject:From:Date:From;
	b=Qk7nwctbnVNS7p+EWiPZGZ72O29pOwiL3SgFCCtxBcfuU/hJjRNHg9QU0/LgNUXvA
	 LZHGtR/UhnhaCiDWxfMajehkqLoEX+p3fXhSkobfQA+/1H1HKptvLqheNBtjDg7Czy
	 eHDjsqWGRj0EX5QzjoJnj/85YhMgXVsn7g+BLNWuRR3g0FmFh0p6qQYOL/olcwuBKX
	 IzLy0ynQOP/xWrMimi2soL2ILrJpXYUm1VKQqWVj75MpBrIDVj7NtZgj/n0103RHOv
	 hh/CIT+bKkuitdv3AFJW3zKGVsjr7eSHVfe3eTRbXPOCXjSAef7UJ/O+ho/JGuv8Gh
	 ItEgTjF0ESTEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB164C624D3
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178849323369.15937.13517692117316223664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70049022d532f92f94d7f0369a197226e26ffaebb0beb51b4c79c5729e538021
Date: Fri, 04 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788493233
