Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332E83BED42
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 16:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775577935; cv=none; b=bCYhkAl9V+e9zccHLYvPQ6MNzk2QsXT2zc512Ezfor76NeNToDq7Hfj7atUaj9gKAga6xTT9THVcIx5OLf557OLvorx9QSRRbEOfu0QRH5ThZvryugMvbQa8V4363Sze+NoLcbU0LxGgubXJBp4JyzlzppOos5O0OMBITawVlek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775577935; c=relaxed/simple;
	bh=GN72+CS0rjOJdu5dJlmP2rpOkcvhgp47NjjHlhqoAZM=;
	h=To:Subject:From:Message-Id:Date; b=U4qbNeMuOfirWri0iZFtzqWDL58uNZFIqp9WrZJvSU58huYDvTxUMkeSDChjirR2CDCN0D3zPuTihZ7RM5n65xyJbk1zrbTq2TjnMYW+FwkLt0bRxaXvpXKDfpq0f9YFd3KpTP4aZ8wcqWE74U0MkQyNHoxl64a/qM8ccDzBicE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rUDvZWgJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rUDvZWgJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B766FC116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 16:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775577933;
	bh=GN72+CS0rjOJdu5dJlmP2rpOkcvhgp47NjjHlhqoAZM=;
	h=To:Subject:From:Date:From;
	b=rUDvZWgJUnCAMwlc8zOaAzXjesS9lcwC6bXoaQwQUe8ZmfPB2sJ2PKM+v2vUbeC4Q
	 HwU2H6AOzWyVxzwMDYiJMcw7aOHW7X7ZSlh5PBYfwQn/qIVEF7Gr8KCbwboCey/PVo
	 HvBIFL+iB/2UqKICWokPPgyOlXMIvV13cbMhEpw8rhz/+KdbSoKUyBvpV0IDoYvyyu
	 3yXAzueJdt5aZ2q/93i0oR2H4Q9AH2snzS/m8FwA18A4JOMRDihOXp894105nuwwUz
	 1uAqTSMhD2lM/7uK6jxS+GmaRBf9hL2lnpA/O1256a/MVjALBn2FpZt2E/FyUg5NEV
	 auRhmePAS29Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC4FFF5104
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 16:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177557793368.1466.2291140899055242955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bee4ee942de51ad82da5ab9148f0dee267b165e646e79c295dbe1eafa58c6e43
Date: Tue, 07 Apr 2026 16:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775577933
