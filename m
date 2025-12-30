Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D69422301
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767131034; cv=none; b=joHeR2slze8KB3r05HZT5LVwc8ZMXSOnowERrNqk7NGUfexi/0fTICQvZX/sMV0rCjYufDfU9PS93LiS0EujOmYKtT+Uh/RrOA8JBdJzIJWIlFGunUTkNfBe/1u4qmuKT/ANaGQdqNV3qNOpzSIqsa3Cxh05bSXgnXVrvDbsL/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767131034; c=relaxed/simple;
	bh=001KX9OkWS5zf2oht9KBH87k+M/L9oJmV4XIrlp0Uv4=;
	h=To:Subject:From:Message-Id:Date; b=NGrcKHP0O5mcMDf9UmRQtcz/49hlPvA6wR+iqOolegN6lyQI9U9zPUGaQPHLytxUNrjjiB8nppz6sLf4QTo8UhXb44Sn5bEwPnLiZmL1xm6P2SvFhyu6uLTkfKOfmjfbQbDlY6ixxz78p06oxCOHgMb33Tohx1HXekLirEF1dVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=omZf6iD3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omZf6iD3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C5E5C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767131033;
	bh=001KX9OkWS5zf2oht9KBH87k+M/L9oJmV4XIrlp0Uv4=;
	h=To:Subject:From:Date:From;
	b=omZf6iD3LQ5KVdlNjTVSPQg8skSkjSkBz9Ee2dSL9oRUnnmKRI+bjwbX4GaGTxWFC
	 oHO4Ud1JFDMtQJeq+0OFc79cVsaqLG0qaJ5ubvvt0BLc8WwRDZhe/wLK7ZGsnqnVm1
	 azRGda4vqyZycwvxl2JmGJbtVo9AoU+fU+NfwJRH6Bf2O2a4ECYJcGcSrROKqzmIfV
	 iZzY5zJPFhqR10h62HevOWqT/qd51gXtDYq39wqgYQ51gr4tdFG/y/6Iu0V/kVpzkg
	 C9Ma962don0cJpaYsx6SJr3gvz6BS5caQq2/WDmTTv/BnpeSScvyQcfslfrxT3qAsI
	 g6EWZBL8nDCJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E792EE01F6
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176713103357.14643.12559352542518408070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eacbb823368a0c36a54c984e1e24c984ffd79d29c226e55274777a31924f2976
Date: Tue, 30 Dec 2025 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767131033
