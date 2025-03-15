Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E51C0AD51
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 14:18:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742048335; cv=none; b=Ik3XgQBu4Tx+JVgEZK1FngSrDBKsT+Yu5r+mxtLSwA6nnpV3oVNqAg5F+2NeHz94NWlRSp6KUSPF1E9qIn76DhOvH11FnovX5dxMxBFtpETl1jM4yp9+jFuFIz/Q9vqjs07FC9TrqiRqw3dMcTLP8QYudPUSUJUq7y4CZIWgpVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742048335; c=relaxed/simple;
	bh=SvSZWHB2Kj2Bpw9LlKS3z10WPP+aaYGt8C933xNA/9U=;
	h=To:Subject:From:Message-Id:Date; b=NNmi2d8s6mtVsVfe+GZvrxnASBbccYzMtYA3Jf44i/+lRhNMWoKz//2phrzz3yv9MosKVHWirfGnO34X8kTUpzSp3oFoCtVTtQztS9JY+UoZn68RsXIl7IXvefCpF1TQtpcFks5QYx2JW7AYcoC5whzAGEjqPvWy9X3bnpzMqeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NsH6ENlx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NsH6ENlx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 691BAC4CEEC
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 14:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742048334;
	bh=SvSZWHB2Kj2Bpw9LlKS3z10WPP+aaYGt8C933xNA/9U=;
	h=To:Subject:From:Date:From;
	b=NsH6ENlxPelCLqNrx/KpxzzzZDhlTDPHJqyRNSWyvk6jXdBr9HZ4fpXtODzFrxBeq
	 iJeshdqPQDTrHm+EMwxhYBzcAbNAXyhhrF8c1LiKr+qaIbT6TyrflOFH8Oj+eSlsP4
	 qNVO760R8mxkoupJtO92Q71Q1wIBiEAX+EfXKyqCtcaDTkpl1lBmMlBIVb7Cz7EuKh
	 ZvLe0LLdYQFGyHkw/kAF2+E3kAtb0hpKdkOT8vI7IHsR8Hdbg97AnMOyOR5uAmHvPy
	 WNog1+DijMlA/fKxcb8MgL2BjwYuSFUGTUR0BKlZXHgA3B7j1wUjI3RUGmdeub58Kh
	 rXRHusL6stpqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2FC09C28B30
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 14:18:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174204833413.25469.7589156550760352538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cda6487923804c94d5f6da67650116d4b706e5e55167581d42c25e4ab1006194
Date: Sat, 15 Mar 2025 14:18:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742048334
