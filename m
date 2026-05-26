Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B13E29A32D
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 22:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779834154; cv=none; b=U2ZBf6ZHQa60V1y+136lT4100QFDj/WZYaBJ9kqScVZTxUWa6nhqFJWR3cZHP33x2ioZsjTvAiB2zFlE1U9mXc7MjJreHrzEi8W02X242YC4zsZnQe9wnaaebwudSO/oXflWdsYmqEyBwEG+LcMas/o9/4zTAdTGAbpzUVNGoW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779834154; c=relaxed/simple;
	bh=mmXsWvCzm5gAFcoURzaiytyX0EwwIPvX5mjSrFFGj60=;
	h=To:Subject:From:Message-Id:Date; b=U+2TROXsmabNFvWIdnatQTRA+bLCxG1d//zKjpwnFG95Z8WOtKEdaDHLTAKoQGYPY0wdpnbTm6lOxEAdHg3fcMzcwJ1vEKVI0v7JvNfO/hbIi+ykBGKs+HcQsddz1XhU6NglfXuHYzmUqFou3GTkItJl5zSwY3xgCFh09SG+8ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6qW6bAN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6qW6bAN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C30B8C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 22:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779834153;
	bh=mmXsWvCzm5gAFcoURzaiytyX0EwwIPvX5mjSrFFGj60=;
	h=To:Subject:From:Date:From;
	b=t6qW6bANJroT5QPgo/Ud8sWDiIJ6bZWlrVWPGR1zjE4UKMK47ku1q0+bDucgiaCDU
	 MwplLKhFe1u3zZvPvJkCluPmpSF1IlFJ2X9TCdcMTaBxP8HITDnYb20n8JegjemHHk
	 FTJueGJxwNUNcM7vF9rsWoc28X8NwK7sV75yDaUS7gPTLZhH2aS0DqUmBgyoMkvJRw
	 CS1b60VbdFqhFydGHWgllL0vZWYv8j18d+GKR9j0ULPrDl/WG47e3eNnHP/i6mt5pb
	 JLQU/aDJ7JJnZ4N9nZr8wxk506vgQAgRlYhUzllu64AAqeegmjWLyiv7D7bcXbZJ3M
	 Cb/qXy0E8b9gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E9BCD5BD5
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 22:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177983415368.23029.17689651121066626586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02214413eb6f9ec2a9a17b728260578f94ad08413a30bdf760213ab70af2699c
Date: Tue, 26 May 2026 22:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779834153
