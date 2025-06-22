Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E8BC13B58B
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750630794; cv=none; b=G6wJ1la1dhqbiItDa7kopElELRRns62mhmQWZdCz5VpdxKzD024blEz/FB2rqGOAghoI9H096eqtUhGlrCOAAKnIJsrmulSMOPbOtHdZrp9OiVp4JLTCGHrX7f4Fd47KOB+cM6NOkej2/j2CdL4YBmXROpr/95PxC47/YNJg8ew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750630794; c=relaxed/simple;
	bh=bYiFftKL25454zeEuEr1xPumBMzLPmLGYYgk/XWCw+c=;
	h=To:Subject:From:Message-Id:Date; b=g7nfk+fE0sc2ySIHX4kSRFE0FJdV2P+FrUBUd+yoE4s/0DqJGnmrZ+El7A6keKTRL8Qscv5GCmt6/+nVQThgPfB6M6Sbb8t9aAPJF6kV4Gl3WJCHHVQikLepmZwBVEwv9j36U91690ufWbtXM/YQnlsFu9sy1D5TtTaIBlnJZzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxVQ9B8m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxVQ9B8m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A63D8C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750630793;
	bh=bYiFftKL25454zeEuEr1xPumBMzLPmLGYYgk/XWCw+c=;
	h=To:Subject:From:Date:From;
	b=rxVQ9B8m4td7PaK6n5TJyEH7pnm5iIOP6Z0/71EeHTKT4hpxaxNpLOg2iUBGMItN5
	 J5VW5388IthzW/21CJgrNKaRxVd85RZ9EEqdFHZefgbOxgSwpHNo8h3dM2qTRUx+sA
	 CU6CH/PuxynKnTjRcJgVrWerBI29dihCI8FFS7vsmnFWBQZCjOKsi5sNvm+WQN2rtC
	 TY33dXbgFHhFhyzlJDj0OHHDch/gMg16bByG0kKM2gR7ZD5LT/Cat95xK3+SpaXA3e
	 b60YpchHTuu87UZS0/yuF6klZTu0VInZLZfWJ4uoHYt5/utJEF+Sy+C4vkzR7xPfCm
	 Nc1UmrLiKLYBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94893C7115A
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175063079357.3799.8664145631825935902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 021a40a940e7c28169693051f365b280e3e1673d1dfad4e9d1ccdb5e88a72e6e
Date: Sun, 22 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750630793
