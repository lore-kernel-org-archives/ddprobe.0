Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4065E4F4028
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 15:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790783435; cv=none; b=ZIDUOJwuqzzgpjMtE+xJkdKjsWFfpHATHHvOkWqrpXiH2L2AThHFJJ3bHXbD2GoA1I+eJluU+DT/qBjCgEHU1bWhBasOuemSf3TTs2pviEYxXvPswSM3NBhiKrSjcZvnlv2rsjPYuDZJ7UMSBTIJE9SB3x2PpGxoEFG/+URNLco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790783435; c=relaxed/simple;
	bh=Vg6rmv4S7ZtM5nAnpMH+tiXEUze8IlAGVb/x73hYOmY=;
	h=To:Subject:From:Message-Id:Date; b=eXHe3bEWwJso/HxFSpDtDMmJ8vEWixGwQbxi6jFlt8iy+RCQOLGEgIjOeUGgLDSQzLz4ZBlqm2KhC8XayIZbZkX1/0Y/AU8zA8hUMemO5ms8yFGRkM2aLFuO3rX8a3ODHYTnTT6DZf3VfjozHbXM3RbPxKoT2ueBrjxnrbuA4nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3BCgyen; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3BCgyen"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CFCC4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790783433;
	bh=Vg6rmv4S7ZtM5nAnpMH+tiXEUze8IlAGVb/x73hYOmY=;
	h=To:Subject:From:Date:From;
	b=V3BCgyenJ6VL9XtqbA4dZYFoCSTUcDUNWTimkEYpnEqm2a/nYLWGY3My+/FBlsK9I
	 4rfGwQasSyn/tBIluQhrFX3/Sp4zwL3BbFoHEX1OAfFFRxkwCaMGEKVJwypS2LyXJN
	 SIUBK6p32W4OqU/O2Nnw6uX1Wa2aNbmjtZ088rYpYPBFXD0SBnrcxSh1d0tOJOmmZm
	 MHMM2rwgZ4k3hTjyPqho4DMTPswx8Wvv6ogrAPqpmewYAh9TIpFXQ9o55QybWTY04l
	 mp7gMaKPwaAL+Pp+XJHPpHGZFNSp5D/gJlH9uI6LzujLiTbizvtbUgX6F/ENCs0Njh
	 SLA2rh00vKbaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6145CA5FC7
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179078343373.25141.7605432750793194084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78ee8ce2024c21105a050dca7efbbb4fa1c2c14af8614b77dac005dc79cb38c4
Date: Wed, 30 Sep 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790783433
