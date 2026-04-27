Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282EF34F241
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777270654; cv=none; b=Nnir84AQf0RSEux379NyNsDeEqyFf42etjYDsoUarQ8+kFt2vGR2Xk9aED8lfDBTyjikomtCbN5yVYQwI8yQs/cgaQ9w660bJjOlndlc0JBQ5IHiOo6433euuGF3GR3eIOXhVdGYNcA7kIwLEIGDaNCY3EsYdHjnAQ9v19yCjQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777270654; c=relaxed/simple;
	bh=aTZfejATV3PhIybOyLwK2fgy/Z1x03HVBA9F/c3zCfc=;
	h=To:Subject:From:Message-Id:Date; b=cSy0rEtEasa/odWAFQfvjpRUBugRhq6IJTqS9XOW5ioX/CCdWixUKtzJKiwBKILp0V0lAaG8v4RIGpFS/fRiVRCm3A9JAB2K4IAeZmC9kDCz/K3/MIhTOKbGHj4639ZMZwumFni/2a3iSV6METChjJygqV74MgIuzg+eodKC01w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a3LPx1VN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a3LPx1VN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA58DC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777270653;
	bh=aTZfejATV3PhIybOyLwK2fgy/Z1x03HVBA9F/c3zCfc=;
	h=To:Subject:From:Date:From;
	b=a3LPx1VNwZQTPHH8mtoFjiq9HJy/h68dX9kxWWaGD3YhGkfKj/76Svvy2PKZcJBWr
	 8vXRzRLAO/NotwNLkfkHjSvpOCWOd31zo3scBT7N+T2ZdXzcY+tvaUHWvcSmuipjo2
	 SNUksxIeD5v+2gA4SaAV17+8NyLFYV/giNcJ2MRQgxxWqC0DPLD6kXb/s1/BsP2GX5
	 Djt8zvHyWi+bnIQEqaq1ix2+IcJ0/Qc0DKc1soj/S684QAtgvLxfFPxuYyK35qbT+8
	 9PbUCPHUqAlfK0MAbhgEO4BQEp/Xege4VqICTxsVSbyosvqtWsMwJHu3Ey+cmHYEvz
	 a2HF/0uX0nLbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA584FF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177727065368.17584.17324926930619131309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ed0c5e2f43fdddccec77ca3617ee07ceac669c9a9fb7de1c2c0d921a046889
Date: Mon, 27 Apr 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777270653
