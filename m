Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2242AD02
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752291594; cv=none; b=HgmqhR2u+QRekxOVJ2AWJPVFMDr7L787TcS8m+JnQicea6TYX8e2e+PRqidVmt/wpN03+9fzABVJ8+3m/QgjqTNxWUtjBqgxeCCpNtXb4CbueG9Cwstme1gcmQO6ASqIG3588CGzjbK16t+NLGv4Ly4UvuazCC93BMF8MqG5mmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752291594; c=relaxed/simple;
	bh=o3KdPBUKxD8HgwiGhmsOoBKlvKR6eL67ifuPwXYinhA=;
	h=To:Subject:From:Message-Id:Date; b=dlqOs2DLO0fD+/MF38VYb3R2JzIIH2mrOO7R1WLPaT4k2uohjwFgRu+HdVTxVglzUu/k2KfIARgnS32YB6MXnVK2IwZfcesURSwUm+nT+5d39bLna6BH7vBn6RxMov4xlmkdFbypnuqDM4cdxFCqkQcfaD8NQmWQbqAfUAWsLts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PhjoKwAb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PhjoKwAb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35A3C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752291593;
	bh=o3KdPBUKxD8HgwiGhmsOoBKlvKR6eL67ifuPwXYinhA=;
	h=To:Subject:From:Date:From;
	b=PhjoKwAb62oI13aO2xfxUHjfvCg3DuFZ/4bVrblfqY83rToaCCavPq9zsNCwCfmuW
	 XBCiY7R0qXnr6kMVNj1JZ62gqok7AFmGUYCgxbOSZopc/c2OFLvZEfYfgmF+2wM1Ct
	 hhGy20rhhVr96C4Fafmknlwr7cgxio0ZmJvCEGSxD/LqHa4A3QPLhSR2sTseqe6Zq/
	 Nt6x94QF4v5/5jn82eaW0tTPMNNYIEe/6iNImNhbmMrvZ9WI3BNyNdFWunCqQGk2q6
	 8WvbBGY9WSrR2QAabL+lkGBA1t0P5WlIyhKRL59WPX87A9EEb9gs3iE6KOLSvH7+mY
	 lA+IGClXY0J9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91ED2C83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175229159357.4008.10489733216814664834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdb8b6560c60a3af71716c24dd1edb002881b04eee83794f631c64b80499056b
Date: Sat, 12 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752291593
