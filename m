Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EB9D158541
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724922354; cv=none; b=oCHjn4aGadNjeGoxyh3hpLJG/UjU0AF91IJdyCpRwPAcmxHep0fi6EDxd1LtRkvz31XBYJQGchU7HdQPNFAczG2+j6InfXIx1hOWc17jKD/h6aoUMs7KYdnqUO5PQH66yccGCdSxsaWn+HVVJ9aUZdq8NI4utngvEAnMBu6/Y4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724922354; c=relaxed/simple;
	bh=opIZtrJFh0M+k4V4CmJZi1QgMoX+IWnb0asAv0m1qWo=;
	h=To:Subject:From:Message-Id:Date; b=uUn82uHwg6M2nPAgrHqzCbFJaXbW50F2yXqhQ7vVa7WR6x0MkdQNdpY7NEH6MiQpv24qoXNVonxxhpM7pBW2A0gTVQlzgcMBZWDTSZ3TgKoTNl7UmAsC9QYehzrmtu1P8RYFB9jXfbm/2lblKPE7JfrBddD4iMiyfn1tmCGgu38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sqlw5d3m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sqlw5d3m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A65C4CEC1
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724922353;
	bh=opIZtrJFh0M+k4V4CmJZi1QgMoX+IWnb0asAv0m1qWo=;
	h=To:Subject:From:Date:From;
	b=Sqlw5d3mwlinO+5TgTXQ3inuhHyNESy55Gv3ZkaNc5SJowHatwCbUuaGLgLL2ev6A
	 HfjLq10vGRNqm9KNg+CWWUlrLHuvryyM3b/JrGbbT7NnqAVfxJHWgsm6A68cMZNlde
	 vt4rS8QZ5ebapYcJevtD9T4oaTNNAKKTF/3hJ9djvVil1Kc8Av8wT4sxR6ol26OEQx
	 opTW94aHoNwJV88GWIsn+lzfxnA4rwINNjMKb6C3NItNjc91Eru8DRpG59tO1V0RAb
	 ztfe7RT6GAasVStMwblo36synYkWCUyIJKznfm+N+v1rlech2Oy+Fh9K+sIM4ZHbXd
	 qvgvfYuocCCIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED46C71135
	for <ddprobe@lists.linux.dev>; Thu, 29 Aug 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172492235357.29256.17272692194809935691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b89d6a0515bb78c612aa2d39eebf01e84f7b8a6dbcfa90a3916564c6562ad589
Date: Thu, 29 Aug 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724922353
