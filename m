Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF97A16132F
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759621793; cv=none; b=jiy73JV/6ZeVs4SquPScSan57szPy/QTJ/TeCALHnmLmuVxbEaOwM8w390chOloTj/lkAeS6PLtbi2jnmQoe4HYcMZ3BfR+sIUR2CXTn8udXr16O/emevvPLJMS4igMdLLzkI8N4BRndjwRjVRjr/OcnvSVDUl9DzQvi1EJITl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759621793; c=relaxed/simple;
	bh=S3Nb0LZloI+VQ5kASFzZxNsg+CkOnXOKLlRFky2sScY=;
	h=To:Subject:From:Message-Id:Date; b=V6f1Dlhov00RWCXtr5MtmdO9gREKg7dgAtH1OwEY1GukOtuKqQA/RhosGf++McD8dcLA5w72rqyvgYIBmpTZy8g7SQoJ9FAm3JTXmfBHk6I85jw7rKZQb+2dw/ITuNXhJqvRpkRgkMRLAB1RK4w1aIQPoM38Pm66fng4zUJUvjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncl8tmJu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncl8tmJu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05FBC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759621793;
	bh=S3Nb0LZloI+VQ5kASFzZxNsg+CkOnXOKLlRFky2sScY=;
	h=To:Subject:From:Date:From;
	b=ncl8tmJus277XLYKB8DsHWKtAJXznjW7d1Br3xJ6ClOYTz2YsiAO4rLtg5PT2XaTy
	 By7YINrzoh+kLo9i4ndxi2WIaLB+GPwh2N52wQmWQtlzWsO0C3B9gGiFKtAVhufKIO
	 9IBEMnnXOLaUI88phyMY5y+gSQfXRMIFvd6qyIOUWqKrztpT/cJmCdYCDBEi0P9HdD
	 pxmDR/vv6/ETXqE8/b1or2CJDk5kDZ6Wy5S3Dk2iXksmnRMuzpaMCKsW20zXjzyy3o
	 FA5Wfek72CrXpzjK6NsS++v9UUb4vxhIhhtLzxCJF4XzXCPtyl4mTsa4xjWsbCkJEs
	 iIsguXFi1GsEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9211BCAC5B0
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175962179357.9538.7663565117129714284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4761c6f0779c0effaae1ab81b7ee066ad6e6432abb3db5d40915b3c2924b7e8
Date: Sat, 04 Oct 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759621793
