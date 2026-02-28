Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CFE43D6481
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 08:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772265894; cv=none; b=NAuiveohnMv7OutncNERAbaaepvEVHYiszSuLdLmmpAMFU+03ICpj8e+cyEpg+7DM7K1M+DDLF436br00DLxscAVUhHM9Lj/0y3DcH8phhk/bTg8Mi+6G1vf5saIUiVgVf+HqNIiL/NRA343YXAWBNzQ+hzqquP5DsxU8nFVyAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772265894; c=relaxed/simple;
	bh=wkgBqhBpWZ8ONsI/rClthXDrzCQNH5smZUN9noTyZeg=;
	h=To:Subject:From:Message-Id:Date; b=c68QifynpsCNfzS15QP55Exw+5EGp3qyrfUYYvmo63YniHXJtxxVCplibXSvXV9mZWfXcqrdFjqMC2bZK1CJpJ7WYiabK/SgHz0HDKcO59HHiUbn9UiBtXhV0FiusLMukod56ytUpxYBJJaJq5DwNRr1RwV3kEdXKLo4K00hLD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjftiwLR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjftiwLR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5A7C19423
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 08:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772265893;
	bh=wkgBqhBpWZ8ONsI/rClthXDrzCQNH5smZUN9noTyZeg=;
	h=To:Subject:From:Date:From;
	b=KjftiwLR3YJ+dgWs6qlWSSPfxKDEtiHHv9q4v5yKJSCXBDbCsD7l31A8+j1zHCylR
	 0PCv6Y6UmcFzL1/Hj0bbgpYCUJ3jNNaoQW+0k5gz0YES8RiZDwsrj7HxHtRejWWGw5
	 UXOMfC0Ta0GPP8DZAK6McojzZNBm74oXCfpOf0oN5CUsHtczsvnqfmuznNd5O0wwkX
	 062PgKDlHdTDIzUyhhQhC7tuzWvZD5EtVRUUdERpkUUCsF4ZOTXGmtwt7YhV+myRmL
	 9kTplAq6r4PlcPMh6D69kRQUnJK1OKMVYoyPShuMMC63eurq6XS33cAWd8ejNIpCEg
	 1yr+JSMsRtcLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9765EFEE4D3
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 08:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177226589358.30818.11861565227214063405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c172aa52ec1a665502eae72814c063ecf72f46fa5641d93ec81d6376eb12a353
Date: Sat, 28 Feb 2026 08:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772265893
