Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DA13A8F0
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728144954; cv=none; b=PTBC9v1M5/NngL6NT/CYiGzKgdpfMJk5nBNZiBRgEHZkmZOG8MgOmipEB9XL3pBWUvzqLR4Gc+gcslVUv/qTOO/CsQE7n/7GyP1LpTtRrBsICf6ohhrdsAHMMYiBypPdWQEx2DHsTNi6O/d/XvFOn+j5l3qMoBIbDmtlHsS/U/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728144954; c=relaxed/simple;
	bh=rs8AeyiLUYMidkpd62b95Ogs4RXQdXmQmkPrTVfmRDM=;
	h=To:Subject:From:Message-Id:Date; b=dBimwLuCy4+YQSYMoxkvKGufgCEj5LEpColhq6a5CGl8kZEklR+0u9TDeIAskcLVotkE+jA1bEUJD0GRBpzXO2HORQ04i06qa/hOMMHhZq4v9MoKBldf5wsXpNdTMcZqAKHdnkEQRQdqzMxXe11gXHt91FXzfwI2xCUeZE7A86o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8vwDcFp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8vwDcFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0AFAC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728144953;
	bh=rs8AeyiLUYMidkpd62b95Ogs4RXQdXmQmkPrTVfmRDM=;
	h=To:Subject:From:Date:From;
	b=G8vwDcFpEgYPxOMz6Fk9li1NAa4dv+1s6cvm+QszIQ9ObL9rxqwchEaqLv5/ygueV
	 GoaDrj8s7tF1/RGn1YMA6ahjSrXSaQ/phn2CRyPfHFDRBJrahF5ZK2H/ziRviHLx++
	 9sLFx2gmekdQErG+JzTZUOyH30/+Pdui8x+p4CWZfIXl/lnd9r66KBoX+DdiX89+Ky
	 unAhrq/bWhVwPwtDOcq7G7AMvshLc2xPFMG8pdi7mKiP49TASNGnep1j6QMHcfQxPM
	 XtZcBjRaLJTU/xx4VW0JKTJs+Hy8RBagEj0RmzgqlGNT2AEEIAW6rW5ZJdPQ3aM/kA
	 zgQiNZLXqu7AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E63BCF34C4
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172814495360.5555.2714716810024705138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28e943be6c0bda54be6ca5961db4b6404fe5862cb729298caaaee83b4999d3e1
Date: Sat, 05 Oct 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728144953
