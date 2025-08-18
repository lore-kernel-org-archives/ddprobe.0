Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8FD30DEBE
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755509394; cv=none; b=I7tM2jjHhlTGTepEVao/hscW4Hs1bfaPfspqNZw6JeAtevZWBa1PTXMQhUSOPFDUcSYey5xaD5NG9rwtBqmrFMhwFTVpfziRxnl7E/c0pHMVBaO69jBNFbstgguWlnLQN3FNs0vrdqzatOSdL6hX/pR+LqdUqL/Gp5orxoq5B50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755509394; c=relaxed/simple;
	bh=inMnM8ERL5vxQWPbjpWkKrln09Zad23bXq+o4AOcAr8=;
	h=To:Subject:From:Message-Id:Date; b=HZTOnnmkHxjIG3HdPx6QHw8yhz3r3RshDqrL6bbuK+mQk6dTXAcGnwqcZM9Ad6v87xcAU+H6GCL4KiNawThFtk/4Dja+VAkeHakhG15zAQjqN2b0XUcOt7aql+9LzfJR6RymFm7WcYvO/tisbpsmNOwm20rIk8h75hJkalrMhEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sPsHe6Dy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sPsHe6Dy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54D3C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755509393;
	bh=inMnM8ERL5vxQWPbjpWkKrln09Zad23bXq+o4AOcAr8=;
	h=To:Subject:From:Date:From;
	b=sPsHe6DyCTzd+acYaRnvTE4aYqXMKGTWfuTMwUqy4GtwgK9r3FsoVR/8+KGhvem1Z
	 +eRv5EWa89N4KQgIXNaw6odDGf3d2YeujtA8EAFHJBSIiIMa4jq4rZNaVVt/73vveA
	 jws5hCDcvfVh1AyXPNoT/Fr6wiOTbHcwmNWnPgr677TTzQXbbgJa6OBuRFj52pppKC
	 hLkUPCopPJAKIXaI7wCTs9fIEbM2QN68J7zlGpZhAvFEeNZUr1ebT25Szhd5UfsgJB
	 xfP4dXeUrqI0nHkj6Vz6H5OKafbIom5MlrjHNaOsyi8urSWaIbvyLA23NLxFrxG9Ay
	 CWHJVKaWTQ+ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B6DCA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175550939358.28144.14849345363777435364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 879680f02919642dfa538f1f576e63cd106be3ae0238548f4e0d53b3785ac922
Date: Mon, 18 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755509393
