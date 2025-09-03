Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229FA2D9ED0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756885794; cv=none; b=P9iz5/3wtiBe8e21ovX4PNHWpTw6yfja33CZhpQEbsS6S7sHGyi+0n55pIXhSCcTWdbdV6rjKqFJKeekIQTkLqQ+t6ZGgUJJn61UB8JET8i+OWaZKQH6gWQ7prH+S3uOt7XugSZ9dgG5/8jnnrtFzLOBEAix933HLVgZe7Db1Zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756885794; c=relaxed/simple;
	bh=ltPpYjc0vm+PnrXvsF1W1aOYCEgY8llBIQNd+sD21/c=;
	h=To:Subject:From:Message-Id:Date; b=VT+TY21aRgvdDjrUTwD/izH5+G6su1ycKJaYJ+lunblZuRWvfUmW86zvC3+pHrymuR8Mptewo3mhtXKowGchZsI/1QEESPiJ6XYZzl3j/LnZ3SNXFv166gVUtPmmzC29HldPL/LEXSP0F01hRzGInEdeNlphxdPzYk/l6XrHyRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fq9oC14C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fq9oC14C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E11C4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756885793;
	bh=ltPpYjc0vm+PnrXvsF1W1aOYCEgY8llBIQNd+sD21/c=;
	h=To:Subject:From:Date:From;
	b=Fq9oC14Cm1WVn3UrZ7z3Xwxe/fNEaiCgeostiHFo01NTHDKZDi67QRBMSSfaSSLOP
	 hAppyY6idppS0FokOlEuzefIfzSZaV2t8GxveuLMvfA9TZUBkD+NYB6Lt1H7llVdzP
	 b9xLso6E7LmGDBqG1p00LiVIuhHe0k4fvK9FqGY1Yw+rVQP2Y4zF193NGfq/SZuoMJ
	 0Bvq7Yqn5eKjUER8rbYObK+rPE3IfB6iWwJJGtlwfw49hPyEEWFlz73K1ozH3FO3NN
	 zg/XsoibDWiYPk8XfI+z1uGlgmwkLXcpuUDdPJus5/FCflvTXlkEkZwtqfm3oYwSLY
	 ZNr/gMN38p2/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2DACA100C
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175688579357.12542.13815582618730680692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb298d2ba7b1324610d3aee2a70557552a0afa21c73806fdf1f7e1c66a6e633c
Date: Wed, 03 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756885793
