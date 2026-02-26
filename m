Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692F9368977
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 17:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772126094; cv=none; b=XeAv/3g5DsXGl/TIrIGrmJsp7WErDu+lz2PpcJiA9rSxw5Z7i4/T5SMwg20jdDfztP0LVKnbp2JjTWHIIJ5ydGGBkeDQll2uziZPiKDf0mg5p6UFE3fOuZ/pdCLnFJWHpW0v1QmpuXlUTQCJuFGt6ra43U+cNiLXuiZvulDbghA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772126094; c=relaxed/simple;
	bh=x/MlSPqLHFk05GsqTZEboARagv9K02aetn1jiDEnz18=;
	h=To:Subject:From:Message-Id:Date; b=RbG0cwurxGkZBf+kjCNxu8XhG+nF1vRJe1cvGOlNU6YfZyPizbSH8sv/HRF0i7ns8WW1unjGherSdA0L1K0c0/eIob1L1E960BB2nmFLw46CPmBMKhTdTPIBLWUmLqZjX32X65tQ/5265yLQQARAds3Oe7QrDZ1L3VDURcaJfKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sIkJGBxW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sIkJGBxW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B95F1C2BCB5
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772126093;
	bh=x/MlSPqLHFk05GsqTZEboARagv9K02aetn1jiDEnz18=;
	h=To:Subject:From:Date:From;
	b=sIkJGBxWYp+JAaYq1e5/e0cmCNk7SLBsiaBiaRZ6O/xtx5H1KVNkQ2pwhqRlt66Uv
	 5jot+MZ5y/PnNf4JI1ZK/z2hoo3IueEVEUY5GmOgzCyL5hntZQ5sZsUQ5fRZS4FpoJ
	 p3uoUP7KFuwowMOn24rRTMoOWEbfB6LkcbuEc3M6kzxD8pVwA3x06CWJrhUpZ82amL
	 NGUKsSBzGd+gkAM8HooJoC5OddTlURhg1+eDC5M2dusd+fSUrYblKMdM5biXnjQ3Px
	 tZ3QW8eEWhpqgUrBycox9L6wpw7ws984OYLK7hcEDijAMC5mh+JuaThfAR/XEqQg4i
	 tOURXpu7YgtCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96406FD8FDA
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177212609360.18278.4170134237560670114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe0dfa34a2906795d33147d7cd0d9220279806980d94636db949200b6ced255
Date: Thu, 26 Feb 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772126093
