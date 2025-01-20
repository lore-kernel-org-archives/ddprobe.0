Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407E5192D70
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737415554; cv=none; b=TKJqyV6sNE1kcEq9J9qkaSOQOfdjGC7oh31h3kD5SOXh2Q+a/A+cBF9Arh/3boK0nDpJKYMxWDP9mcmvSiHh7laoP+JArMyXohFphqsJLmnS80gT8Aq1il/EeO6Mmk0C86AQxKMo+i4whq94Gpjsu5fmMvOPp7nl5R+lG4FtKm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737415554; c=relaxed/simple;
	bh=cmFfm3WX02K4dn/1bA0gnfkFWZaAnFGGVlWWBBYDMfM=;
	h=To:Subject:From:Message-Id:Date; b=MQx7E+ue667Pgbdob+VtnBrvZFJoRyfRXsjLm8fnIH1Msg4J6SvELPbq6ASijdQ9H6R7mM7ZP/6+i9eUStXbcUlkqLY+6FZrYujc5/Cbg2nx5Ml1iqedSIZjJEUQB9hKpLzfxj1kSBeLalpk/6FGg9eIXJ5jpmLgdyJvF3RiY6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W45glUpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W45glUpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74A8C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737415553;
	bh=cmFfm3WX02K4dn/1bA0gnfkFWZaAnFGGVlWWBBYDMfM=;
	h=To:Subject:From:Date:From;
	b=W45glUpuvXeaCKV9pTbsw7Hm8VIkLfHYZTKC8TvY1/96NbCZ+x0gwgXItUbH6mz6H
	 q0oBucmdzDI/uZnlh+oPaC3kbJVbQ+n3hsxj/28BezT1rHiLVsVR6Jhp/qiSBnZuGW
	 +lN0NDNeEEOKSnkeO2+x53RyiACBnREiUAgqvLJvss102PxITG+bK5vtm6nGjg77/B
	 ApLTqZ1gDdMqhhR/3b3YuTEZkZ5A8t57zKrzaCwvpv/Za7xpMm8G8hlMhJKVaULp0S
	 4lob9ogBvZRZm6WMdTH9RIuDzGbgx375g6zFqEs8ABeXi9mN1X/xhibTK7sTFiSqIn
	 +hV43Jp22lXGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9391FC02185
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173741555359.32570.3011802468313167867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb6c3e0231e547ee1a5f8a16039e8645f475fe2a56cb7c53389d5b187716727b
Date: Mon, 20 Jan 2025 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737415553
