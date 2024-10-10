Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC581BBBFE
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728552954; cv=none; b=MA6lGdnOoXN7LrhR82SvObG6HEI1IQBb/R8Rej+ozWciOOlKFEhBJLqdDiSCiLb+y1vJ+u6lIiaXQshwBavzXfMOKQED88ONCGe36x6uh8aE25b/81NaqdOd++gkhEe6qRfJeo0/kgOmsSYVzxBjMkPPDfIQ0MXF05QTF0SbcCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728552954; c=relaxed/simple;
	bh=7lLhiIImoEhCS+4z/ZdRG+RZh5cHDHLImg5mMaF7Fqw=;
	h=To:Subject:From:Message-Id:Date; b=fkUTk0N40vRwcYDMrUTPLNp/mzE8qpM6VAqAnxLB+8iGPMbVG3vnqUWw2jSJGTnYL3WjHMmvFZpZR5n1FiaFU2OtGxVOWOJdvH4K9YJEWSGWb+X069r5l4PcTkrRvBC5cKmjMXhtN5tiJEckMWggaCkL7iZLDvPalGRk8XDSLUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZ+HI7g6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZ+HI7g6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC8EBC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728552953;
	bh=7lLhiIImoEhCS+4z/ZdRG+RZh5cHDHLImg5mMaF7Fqw=;
	h=To:Subject:From:Date:From;
	b=mZ+HI7g6vFIe5qdqFuIVP+9Pq7pYTca5i2smJhw/cMe+Eikp4soSTNvxiKVc0gQTX
	 CIGgVSmIbW4cTXEzv6Ejg5dZdCBc2pOYqXftyhHH71lq4pzpy7Gr2qze0mQRKJ8ps6
	 rppHbqQ/rPDg1rfr2lsM50WQ6PVBu9JmwMf47cDMij4+mQg3ZfqV5bjRBrtzEexv2I
	 o3Iq30pFHre/NWxKhK0O2hLmgtXIRbPsz/r1PrPvxJLclU0tG78PXCu1ncS6HI4m2L
	 sTKDWJsp3+VR5Li25twSRWPL7/yNbWfETKknwR7gk1fvq43+nSYQ6RWF30/iGq4Rne
	 BcWkmNoQQzkYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB34CEE323
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172855295362.28375.11125306938349117598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58d04c7cc8d34f4bfe9ee1aa826c292d3c90381ec2c1d8199c30e9447e5ec270
Date: Thu, 10 Oct 2024 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728552953
