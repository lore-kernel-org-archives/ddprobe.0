Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02C47377547
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773600294; cv=none; b=FLGmR8XLAVxJCPoDai4XM4Kk8rBI5wGTHlngbqGowruHfn7TB+WTFzdLgXLn1qnSszwerb3dLuAT5FUWigG8K2M3vFqVVQ/ko6GSH1QZeafArc8iElP9Aaps59QVRwef6At5LcBysllKZMhylk0PkwX0jAl/jAu3QH7C674UPhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773600294; c=relaxed/simple;
	bh=0TstV2t/jeL3UaPuL1VBS+AxQEBsmPGVPe+8f7mws9Y=;
	h=To:Subject:From:Message-Id:Date; b=RRkbBTovJZiyKPiEJIuH5o0sDR6VhHfkTnXUNyh0H8UicIxJJR0ES7dUazaPuXzG7mrw9b7yIaBPW7B3o69axwe8yThwd4RcgKHgqqj3JoSpnuXMVZSe5QRNQh7kWUlVKLqFIemEmC4JgvpwV3kVW2D6yw+/d3HPozsLpAgNrmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uXj9k5aF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uXj9k5aF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B60C4C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773600293;
	bh=0TstV2t/jeL3UaPuL1VBS+AxQEBsmPGVPe+8f7mws9Y=;
	h=To:Subject:From:Date:From;
	b=uXj9k5aF6YrRO9IMc4o6qjI29y/2THctv2+Qj0MM5FvdSWDk65eHFarhNlEh5qCJ5
	 yhzBilz4qNWQ51WQHTkRQGcSDcOqm8OkB+BwzUu1nB7DwoD5Dn9pLx+vDOf0dqPkkY
	 T5MCwvl4SkuHffb4iGxxAqS83t+i8ldOrWfNpDjRnJzl92q90HrS2ALNFiqxCHEWaI
	 AZGG+UNkEkyJL5WK5bXeIp1Jt6H/m8pQYp4zVZ4iI6dGlDOK5iW4KNJTvr0Covk8ar
	 t4G9VgrSscS90Xt9cmtp4rDYBL20giLV9nHcYWEWNiW7KqlqL0iAxPqXn26kA7Wr30
	 nKfRDfG6fMRfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2B0DF3026D
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177360029363.12137.8103637413575080348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0386854aac35c3441ad5b1a3f0537d0d344a55ae05a11c8a41bc5350a17127e
Date: Sun, 15 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773600293
