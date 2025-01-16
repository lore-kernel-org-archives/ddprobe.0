Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26339142659
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 03:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736997954; cv=none; b=IWBtqIpJVbsJ8u8oBQFpIlDhPhtdfLTF2BbBI+rIjVUrntjRSsiXsyYwb98pF6I4Zn0UaYcXsm68Phr2sFLznyRlxLW8OTPXSEU0lBJR0n9z7qMD5Qjaoa+hypU79XugCVUQP8J6Wjul6BF9PaQricu0kRkKIQVQg1diyZkyXnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736997954; c=relaxed/simple;
	bh=Cl4mzJLC2j6uUrSThX9PFyU4lstPxXtT42HN/6H8Tc4=;
	h=To:Subject:From:Message-Id:Date; b=mWZUPRoKkiMXp2+x/YndWn6zUJL2912fEszFXc7aFGYEYfD3Q1+KEa4Aor+BDNFMjsar+d3sjh2yX60LaPEH10CYzlFLmNSGWPlULmYwr/dQc31ZEhM3ylhJVAlkDrTwJL37b7j9cPO0n1u3mIrzd4Z239gx206IKEfQ2xlw+AU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cFrCmZgc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cFrCmZgc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB342C4CED1
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 03:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736997953;
	bh=Cl4mzJLC2j6uUrSThX9PFyU4lstPxXtT42HN/6H8Tc4=;
	h=To:Subject:From:Date:From;
	b=cFrCmZgcsCKxD6Z3RCMXq7zG8vVbeXjTdAwUuJPR7G3dp3IpMnHh7YvlPw7+rJaTg
	 XagvK69JyVL2yNde4qIB1M43ehuf2W393h+PrJIYju3JYP6XdDnPRnOjHdSvuzYCvV
	 1YjeEeP+BSSxLVw/cktHq6goE3VOHdYxQJz16M/qXq2+ns4jJ233dRRrqXdCTdlX+k
	 SXb2wUbhcVQz4eCOE6d6bRNB55cl5rYi43GB3UTp9300s12ASTJEduOsvqMhLM01Vb
	 GOrt1gEOEmK239hxuekW8Lus98zO0FHYZIIJAFEDrMHe+mlftSgpnlF/xLpNX/MltF
	 hAhRd+YtIbP8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2EEC02180
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 03:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173699795362.20103.11778035429743672307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b09487ea0bfc785e719549802bb74f1049e07e27afb71432f95654af7752e57
Date: Thu, 16 Jan 2025 03:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736997953
