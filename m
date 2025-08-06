Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18DD4221FD4
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754470194; cv=none; b=WKIEOO9QrWYiYBVTNpy1fAcahmEHGoqnGKJRMfcASaxZs7k9NR9sLrTwJ1xDfIOfDaamQlv0rbPlqawTIfxzPqXNXnIdAGeiNLdmF+WAzp60tUBKhwekTQ7hv5vX+7YDwZjteGxUQy91VWrw05yeeA1/DSpYmMSMDNWQtGetecM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754470194; c=relaxed/simple;
	bh=6Yr0yiyavtkEWnVI1waBdNuiF7AT1/+NLJbG6hE+hzY=;
	h=To:Subject:From:Message-Id:Date; b=d1Von+j1tbOjQH35x4mjrR+KRCJTObCYfVpoGMvzfemKVf4rJB2l4I5VNfxLWubm5PeZB6wEQJdJoL8Ltczzc5aesizHnnfXtacEVmnI1rGbbapKpGEzPb6lgBF/f8InJaCepCOFaSWjWDFbmiWkeyXyLgbteSdfIXkA8D6pZs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kuODfoLG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kuODfoLG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C7ACC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754470193;
	bh=6Yr0yiyavtkEWnVI1waBdNuiF7AT1/+NLJbG6hE+hzY=;
	h=To:Subject:From:Date:From;
	b=kuODfoLGLu6XGr/GmItR8KSYFDeypEm6zHhQl9BwwljZCtgoaNR1bbHsG/RMuXulZ
	 Umh9ZjhG7aww/VA1OBhCA8qze2nnBghLcyVM5qP0jVR1bKIF7/71PsbSR8BNoVS5he
	 FuVxx2o587GtDG4U+w7MouwpOrFfNsJnpzfWX6TkpGYxMa7UEo3V91sQHiY8ccl2U4
	 FjRtv6K9wJlTDZYE6cFGfloz/B+BB/0viBgTH+XJqOGSv+bBcPzxx5A1tvUzxTIB2t
	 KQNRW4PiedqqBbdxfJ80P3ghFOYmIu1zQIMNrLlykizxVwOluSHWdbWjYidV3x8zaS
	 jl29UbWDZGPMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFDAC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175447019357.16972.8565277649410988699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da921e0f89fbb0ad785e90a1e97bf84116ffaf3299563a4489fcb69c7e2493c
Date: Wed, 06 Aug 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754470193
